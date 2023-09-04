namespace app.erdal;
using { managed, cuid } from '@sap/cds/common';
aspect oAspect{
    createdAt : Timestamp @cds.on.insert : $now;
    createdBy : String @cds.on.insert : $user;
    modifiedAt : Timestamp @cds.on.insert : $now @cds.on.update : $now;
    modifiedBy : String      @cds.on.insert : $user @cds.on.update : $user;   
}
entity UserValue : oAspect {
    key ID : UUID  @(Core.Computed : true);
    UserTypeCode : String(4);
    UserTypeName : Association to many Users on UserTypeName.UserValue = $self;
}; 

entity Users : oAspect{
    UserName : String(10);
    UserType : usersType;
    UserValue : Association to UserValue ;
}
 
type usersType : Integer enum {
  Customer  = 3;
  Supplier  = 2;
  Dummy     = 1; 
}