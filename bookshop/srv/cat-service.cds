using my.bookshop as my from '../db/schema';

extend my.Books with {
    virtual urgency: String;
}

service catalog {
    //entity Books as projection on my.Books;
    entity Books as select from my.Books where stock > 10;
    @readonly entity Authors as projection on my.Authors;
    entity Orders as projection on my.Orders;

    function totalStock() returns Integer;
}

service Banana {
    entity Foo {
        key ID: Integer;
    }
}

