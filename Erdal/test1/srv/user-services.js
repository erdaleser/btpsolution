const cds = require('@sap/cds')
 
module.exports = cds.service.impl(async function() {
    this.after('READ', 'users', risksData => {
        const risks = Array.isArray(risksData) ? risksData : [risksData];
        // risks.forEach(risk => {
        //     if (risk.impact >= 100000) {
        //         risk.criticality = 1;
        //     } else {
        //         risk.criticality = 2;
        //     }
        // });
    });
});