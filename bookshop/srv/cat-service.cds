using my.bookshop as my from '../db/schema';

service CatalogService {
    entity Books as projection on my.Books;
    @readonly entity Authors as projection on my.Authors;
}

service Banana {
    entity Foo {
        key ID: Integer;
    }
}
