namespace app.erdal;

using
{
    managed,
    cuid,
    Currency
}
from '@sap/cds/common'; 

entity Users:managed
{
    key ID : Integer;
    UserName : String(40);
    UserType : String(4);
    UserSurname : String(40); 
    Detail_ID : Integer;  //> foreign key
    Detail : Association to many Detail on Detail.userID = Detail_ID;
}

entity Detail:managed 
{
    key ID : Integer; 
    userID : Integer;
    TelNo : String(10);
    Users : Association to Users;
} 

view UserDetail as select from Users
  inner join Detail on Detail.ID = Users.ID {
    Users.UserName as Name,
    Users.UserSurname as SurName,
    Detail.TelNo as Phone_No, 
};
