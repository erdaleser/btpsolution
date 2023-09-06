namespace app.erdal;
using { managed, cuid } from '@sap/cds/common'; 
   

entity Authors {
  key ID : Integer;
  name : String;
}

entity Books {
  key ID : Integer;
  title : String;
  author_ID : Integer;
}

entity Orders {
  key ID : Integer;
  book_ID : Integer;
  quantity : Integer;
}

view OrderDetails as select from Orders
  inner join Books on Orders.book_ID = Books.ID {
  Orders.ID as orderID,
  Books.title as bookTitle,
  Orders.quantity
};




