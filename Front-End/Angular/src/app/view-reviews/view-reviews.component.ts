import { Component, OnInit } from '@angular/core';
import { pandoraService } from '../pandora.service';
import { OrderDetails } from '../model-classes/order-details.model';

@Component({
  selector: 'app-view-reviews',
  templateUrl: './view-reviews.component.html',
  styleUrls: ['./view-reviews.component.css']
})
export class ViewReviewsComponent implements OnInit{
  reviews=[]
  currentPage = 1;
  itemsPerPage = 5; // Number of orders to display per page

  constructor(private service:pandoraService) { }

  ngOnInit(): void {
    this.getReviews();
  }

  getReviews(): void {
    this.service.getReviews().subscribe(reviews => {
      this.reviews = reviews;
    });
  }
}