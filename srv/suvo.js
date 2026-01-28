const cds = require('@sap/cds')

module.exports = (srv) => {
    srv.before('CREATE', 'Products', req => { if(req.data.price <= 0) req.error(400, 'Invalid price'); });
}