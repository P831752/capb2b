console.log("**** Simple Message in BTP Service *****");
const cds = require('@sap/cds')
module.exports = cds.service.impl(function () {
    console.log("**** JS-CDS Anomous function ****");
    this.on ('READ','Books', (...rest) => { 
        return [{
            ID: cds.utils.uuid(),
            tile:"The Title",
            author_ID: 2
        }]
    })
})