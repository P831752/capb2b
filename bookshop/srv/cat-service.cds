using my.bookshop as my from '../db/schema';

extend my.Books with {
    virtual urgency: String;
}

service CatalogService {
    entity Books as projection on my.Books;
    @readonly entity Authors as projection on my.Authors;
    entity Orders as projection on my.Orders;
}

service Banana {
    entity Foo {
        key ID: Integer;
    }
}
