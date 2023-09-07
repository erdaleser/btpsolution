namespace app.ibrahim;

using
{
    managed,
    cuid,
    Currency
}
from '@sap/cds/common';

using { defaultAspect } from './custom';

entity users : defaultAspect, managed
{   key ID : Integer;
    UserName : String;
    UserID : Integer;
    userDetail : Association to one Details on userDetail.ID = UserID;
}

entity Details
{   
    ID : Integer;
    TC : Int16;
    Age : Int16;
    Address : String;
    users : Association to one users;
}
