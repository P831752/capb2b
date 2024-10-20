namespace my.bookshop;
using from '@sap/cds-common-content';

using {managed, Country } from '@sap/cds/common';
aspect cuid {key ID:UUID}

  entity Books : cuid {
    //key ID    : Integer;
        title : String;
        stock : Integer;
        price : Integer;
        author : Association to Authors;
  }

  entity Authors : cuid {
    //key ID    : Integer;
        name : String;
        countryOfBirth:Country;
  }
  
service srvSchema {
  entity something  : cuid {
    Name:String;
  }

  entity bookref as projection on Books;
  
}