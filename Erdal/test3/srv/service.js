
const cds = require('@sap/cds')
 
module.exports = cds.service.impl(async function() {
    this.after('READ', 'Users', userData => {
        const users = Array.isArray(userData) ? userData : [userData];
        users[1].UserName = 'Eser';
    });
});