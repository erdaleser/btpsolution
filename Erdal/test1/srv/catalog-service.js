const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
	const { Products, Categories, Suppliers, ProductDetails } = this.entities;
	const service = await cds.connect.to('NorthWind');
	this.on('READ', Products, request => {
		return service.tx(request).run(request.query);
	});
	this.on('READ', Categories, request => {
		return service.tx(request).run(request.query);
	});
	this.on('READ', Suppliers, request => {
		return service.tx(request).run(request.query);
	});
	this.on('READ', ProductDetails, request => {
		return service.tx(request).run(request.query);
	});
});