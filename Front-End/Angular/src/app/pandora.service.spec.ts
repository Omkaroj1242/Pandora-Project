import { TestBed } from '@angular/core/testing';

import { pandoraService } from './pandora.service';

describe('pandoraService', () => {
  let service: pandoraService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(pandoraService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
