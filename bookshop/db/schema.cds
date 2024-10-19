namespace my.bookshop;
using { cuid, managed, Country } from '@sap/cds/common';

//service bookshop {

  entity Books : cuid, managed {
    //key ID    : Integer;
        title : String;
        stock : Integer;

  }

  entity Authors : cuid, managed {
    //key ID    : Integer;
        name : String;
        countryOfBirth:Country;
  }
  

//}
