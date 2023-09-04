using { app.erdal as my } from '../db/user-schema';
@path: 'service/user'
service userService {
    entity users as projection on my.Users; 
    entity UserValue as projection on my.UserValue;  
}