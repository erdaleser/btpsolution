using { app.ibrahim as my } from '../db/user-schema';
@path: 'service/btp'  

service UserServices{
    entity Users as projection on my.users{
        *,
        
    } excluding { CreateTime }; 
      entity Details as projection on my.Details;
}