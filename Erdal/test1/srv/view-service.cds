using { app.erdal as my } from '../db/view-schema';
@path: 'service/view'
service viewService { 
  entity Authors as projection on my.Authors;
  entity Books as projection on my.Books;
  entity Orders as projection on my.Orders;
  entity OrderDetails as projection on my.OrderDetails;
}