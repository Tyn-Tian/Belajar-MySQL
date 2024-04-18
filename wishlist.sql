create table wishlist (
    id int not null auto_increment,
    id_product varchar(10) not null,
    description text,
    primary key (id),
    constraint fk_wishlist_product foreign key (id_product) references products (id)
) engine = InnoDB;

desc wishlist;

alter table
    wishlist drop constraint fk_wishlist_product;

alter table
    wishlist
add
    constraint fk_wishlist_product foreign key (id_product) references products (id) on delete cascade on update cascade;

insert into
    wishlist(id_product, description)
values
    ("Pxxx", "Makanan Kesukaan");

select
    *
from
    wishlist;

delete from
    products
where
    id = "Pxxx";

insert into
    wishlist(id_product, description)
values
    ("P001", "Makanan Kesukaan");

select
    *
from
    wishlist
    join products on (wishlist.id_product = products.id);

select
    w.id,
    p.id,
    p.name,
    w.description
from
    wishlist as w
    join products as p on (w.id_product = p.id);

alter table
    wishlist
add
    column id_customer int;

alter table
    wishlist
add
    constraint fk_wishlist_customer foreign key (id_customer) references customers(id);

select
    *
from
    customers;

update
    wishlist
set
    id_customer = 1
where
    id = 2;

select
    customers.email,
    products.id,
    products.name,
    wishlist.description
from
    wishlist
    join products on (products.id = wishlist.id_product)
    join customers on (customers.id = wishlist.id_customer);