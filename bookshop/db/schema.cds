namespace my.bookshop;

//service bookshop {

  entity Books {
    key ID    : Integer;
        title : String;
        stock : Integer;
  }

  entity Authors {
    key ID    : Integer;
        name : String;
  }
  

//}
