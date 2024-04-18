create table orders (
    id int not null auto_increment,
    total int not null,
    order_date datetime not null default current_timestamp,
    primary key (id)
) engine = InnoDB;

desc orders;

create table orders_detail (
    id_product varchar(10) not null,
    id_order int not null,
    price int not null,
    quantity int not null,
    primary key (id_product, id_order)
) engine = InnoDB;

desc orders_detail;

ALTER TABLE
    orders_detail
ADD
    CONSTRAINT fk_orders_detail_product FOREIGN KEY (id_product) REFERENCES products (id);

ALTER TABLE
    orders_detail
ADD
    CONSTRAINT fk_orders_detail_orders FOREIGN KEY (id_order) REFERENCES orders (id);

SHOW CREATE TABLE orders_detail;

insert into
    orders(total)
values
    (36000);

select
    *
from
    orders;

insert into
    orders_detail(id_product, id_order, price, quantity)
values
    ("P001", 1, 25000, 1),
    ("P002", 1, 25000, 1),
    ("P003", 2, 25000, 1),
    ("P004", 3, 25000, 1);

select
    *
from
    orders_detail;

select
    *
from
    orders
    join orders_detail on (orders_detail.id_order = orders.id)
    join products on (products.id = orders_detail.id_product);

select
    orders.id,
    products.id,
    products.name,
    orders_detail.quantity,
    orders_detail.price
from
    orders
    join orders_detail on (orders_detail.id_order = orders.id)
    join products on (products.id = orders_detail.id_product);