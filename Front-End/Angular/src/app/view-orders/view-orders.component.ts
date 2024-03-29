import { Component, OnInit } from '@angular/core';
import { OrderDetails } from '../model-classes/order-details.model';
import { pandoraService } from '../pandora.service';

@Component({
  selector: 'app-view-orders',
  templateUrl: './view-orders.component.html',
  styleUrls: ['./view-orders.component.css']
})
export class ViewOrdersComponent implements OnInit{
  orders: OrderDetails[] = [];
  currentPage = 1;
  itemsPerPage = 5; // Number of orders to display per page

  constructor(private service:pandoraService) { }

  ngOnInit(): void {
    this.getOrders();
  }

  getOrders(): void {
    this.service.getOrders().subscribe(orders => {
      this.orders = orders;
    });
  }
}