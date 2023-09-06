const cds = require('@sap/cds')
module.exports = (srv) => {

    srv.before('CREATE', 'Books', (req) => {
      const book = req.data;
      if (book.stock < 0) {
        req.error(400, 'Stok miktarı negatif olamaz');
      }
    });
  
    srv.before('UPDATE', 'Books', (req) => {
      const book = req.data;
      if (book.stock < 0) {
        req.error(400, 'Stok miktarı negatif olamaz');
      }
    });
  
  };
  