console.log("**** Simple Message in BTP Service *****");
const cds = require('@sap/cds')
const logger = cds.log('bookshop')

module.exports = cds.service.impl(function () {
    logger.log("**** JS-CDS Anomous function ****");

    // this.on ('READ','Books', (req, next) => { 
    //     console.log("**** Handling Read Books ****");
    //     return [{
    //         ID: cds.utils.uuid(),
    //         tile:"The Title",
    //         author_ID: 2
    //     }]
    // })

   // this.after ('READ','Books', (data, req) => { 
        //logger.log("*** After Event ***", data);
        //Anomoyous call back functions
        //data.map(book => book.title +='!');        
   // })
   
   //this.after('READ','Books', (data) => { changeUrgencyDueToSubject(data) })
   //this.after('READ','Books', (data) =>  changeUrgencyDueToSubject(data) )//remove curly braces - still working
   //this.after('READ','Books', changeUrgencyDueToSubject) // Not Working

   const changeUrgencyDueToSubject = (data) => {
    if (data) {
      const books = Array.isArray(data) ? data : [data];
      books.forEach((book) => {
        if (book.title?.toLowerCase().includes("harmless")) {
            book.urgency = "HIGH"
        }
      });
    }
  }

   // this.after ('each','Books', (data, req) => { 
       // logger.log("*** Each ***:",data);
        //Anomoyous call back functions
        //data.map(book => book.title +='!');
   // })

 })