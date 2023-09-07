

type User1 : String(255);
aspect defaultAspect {
  CreateTime  : Timestamp @cds.on.insert : $now;
  createUser  : User1 @cds.on.insert : $user;
   
}