namespace my.bookshop;
using from '@sap/cds-common-content';

using {managed, Country } from '@sap/cds/common';

aspect cuid {
  key ID:UUID
}

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
        books : Association to many Books on books.author = $self
  }
  
entity Orders : cuid { 
  comment: String;
  Items : Composition of many OrderItems on Items.parent = $self;
}
@cds.autoexpose
entity OrderItems { // to be accessed through Orders only
  key parent : Association to Orders;
  key pos    : Integer;
  quantity   : Integer;
}

service srvSchema {
  entity something  : cuid {
    Name:String;
  }

  entity bookref as projection on Books;
  
}