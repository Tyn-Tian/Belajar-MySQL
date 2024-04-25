CREATE TABLE orders (
    id int not null auto_increment,
    total int not null,
    order_date datetime not null default current_timestamp,
    PRIMARY KEY (id)
) engine = InnoDB;

DESC orders;

CREATE TABLE orders_detail (
    id_product varchar(10) not null,
    id_order int not null,
    price int not null,
    quantity int not null,
    PRIMARY KEY (id_product, id_order)
) engine = InnoDB;

DESC orders_detail;

ALTER TABLE
    orders_detail
ADD
    CONSTRAINT fk_orders_detail_product FOREIGN KEY (id_product) REFERENCES products (id);

ALTER TABLE
    orders_detail
ADD
    CONSTRAINT fk_orders_detail_orders FOREIGN KEY (id_order) REFERENCES orders (id);

SHOW CREATE TABLE orders_detail;

INSERT INTO
    orders(total)
VALUES
    (36000);

SELECT
    *
FROM
    orders;

INSERT INTO
    orders_detail(id_product, id_order, price, quantity)
VALUES
    ("P001", 1, 25000, 1),
    ("P002", 1, 25000, 1),
    ("P003", 2, 25000, 1),
    ("P004", 3, 25000, 1);

SELECT
    *
FROM
    orders_detail;

SELECT 
    *
FROM
    orders
    JOIN orders_detail ON (orders_detail.id_order = orders.id)
    JOIN products ON (products.id = orders_detail.id_product);

SELECT 
    orders.id,
    products.id,
    products.name,
    orders_detail.quantity,
    orders_detail.price
FROM
    orders
    JOIN orders_detail ON (orders_detail.id_order = orders.id)
    JOIN products ON (products.id = orders_detail.id_product);