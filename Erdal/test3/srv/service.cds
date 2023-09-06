using { app.erdal as my } from '../db/schema';
@path: 'service/btp'

service UserServices{
    entity Users as projection on my.Users;
    entity Detail as projection on my.Detail;
    entity UserDetail as projection on my.UserDetail;
}