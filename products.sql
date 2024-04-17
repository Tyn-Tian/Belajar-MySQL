create table products (
    id varchar(10) not null,
    name varchar(100) not null,
    description text,
    price int unsigned not null,
    quantity int unsigned not null default 0,
    created_at timestamp not null default current_timestamp,
    primary key (id)
) engine = InnoDB;

show tables;

desc products;

insert into
    products(id, name, description, price, quantity)
values
    (
        "P001",
        "Mie Ayam Bakso",
        "Mie Ayam Original + Bakso",
        20000,
        100
    );

select
    *
from
    products;

insert into
    products(id, name, price, quantity)
values
    ("P002", "Mie Ayam Ceker", 16000, 100),
    ("P003", "Mie Ayam Spesial", 25000, 100),
    ("P004", "Mie Ayam Yamin", 16000, 100);

select
    id,
    name,
    price,
    quantity
from
    products;

alter table
    products
add
    primary key (id);

select
    *
from
    products
where
    price = "16000";

select
    *
from
    products
where
    id = "P001";

select
    *
from
    products
where
    name = "mie ayam bakso";

alter table
    products
add
    column category enum("Makanan", "Minuman", "Lain-lain")
after
    name;

update
    products
set
    category = "Makanan"
where
    id = "P001";

update
    products
set
    category = "Makanan",
    description = "Mie Ayam Original + Ceker"
where
    id = "P002";

update
    products
set
    price = price - 3000
where
    id = "P004";

insert into
    products(id, name, description, price, quantity)
values
    (
        "P009",
        "Mie Ayam Bakso Urat",
        "Mie Ayam Original + Bakso Urat",
        25000,
        100
    );

delete from
    products
where
    id = "P009";

select
    id as Kode,
    name as Nama,
    category as Kategori,
    price as Harga,
    quantity as Jumlah
from
    products;

select
    p.id as Kode,
    p.name as Nama,
    p.category as Kategori,
    p.price as Harga,
    p.quantity as Jumlah
from
    products as p;