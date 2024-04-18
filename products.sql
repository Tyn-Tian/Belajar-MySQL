create table products (
    id varchar(10) not null,
    name varchar(100) not null,
    description text,
    price int unsigned not null,
    quantity int unsigned not null default 0,
    created_at timestamp not null default current_timestamp,
    primary key (id),
    constraint price_check check (price > 1000).fulltext products_search (name, description)
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

INSERT INTO
    products(id, category, name, price, quantity)
VALUES
    ('P006', 'Makanan', 'Bakso Rusuk', 25000, 200),
    ('P007', 'Minuman', 'Es Jeruk', 10000, 300),
    ('P008', 'Minuman', 'Es Campur', 15000, 500),
    ('P009', 'Minuman', 'Es Teh Manis', 5000, 400),
    ('P010', 'Lain-Lain', 'Kerupuk', 2500, 1000),
    (
        'P011',
        'Lain-Lain',
        'Keripik Udang',
        10000,
        300
    ),
    ('P012', 'Lain-Lain', 'Es Krim', 5000, 200),
    ('P013', 'Makanan', 'Mie Ayam Jamur', 20000, 50),
    ('P014', 'Makanan', 'Bakso Telor', 20000, 150),
    ('P015', 'Makanan', 'Bakso Jando', 25000, 300);

select
    *
from
    products
where
    quantity > 100;

select
    *
from
    products
where
    quantity >= 100;

select
    *
from
    products
where
    category != "Makanan";

select
    *
from
    products
where
    category != "Minuman";

select
    *
from
    products
where
    quantity > 100
    and price > 20000;

select
    *
from
    products
where
    category = "Makanan"
    and price < 20000;

select
    *
from
    products
where
    quantity > 100
    or price > 20000;

select
    *
from
    products
where
    (
        category = "Makanan"
        or quantity > 500
    )
    and price > 20000;

select
    *
from
    products
where
    name like "%mie%";

select
    *
from
    products
where
    name like "%bakso%";

select
    *
from
    products
where
    name like "%usu%";

select
    *
from
    products
where
    description is null;

select
    *
from
    products
where
    description is not null;

select
    *
from
    products
where
    price between 10000
    and 20000;

select
    *
from
    products
where
    price not between 10000
    and 20000;

select
    *
from
    products
where
    category in ("Makanan", "Minuman");

select
    *
from
    products
where
    category not in ("Makanan", "Minuman");

select
    id,
    category,
    name
from
    products
order by
    category;

select
    id,
    category,
    price,
    name
from
    products
order by
    category asc,
    price desc;

select
    *
from
    products
order by
    id
limit
    5;

select
    *
from
    products
order by
    id
limit
    3;

select
    *
from
    products
order by
    id
limit
    0, 5;

select
    *
from
    products
order by
    id
limit
    5, 5;

select
    distinct category
from
    products;

select
    10,
    10,
    10 * 10 as hasil;

select
    id,
    name,
    price,
    price div 1000 as "Price in K"
from
    products;

select
    id,
    cos(price),
    sin(price),
    tan(price)
from
    products;

select
    id,
    name,
    price
from
    products
where
    price div 1000 > 15;

select
    id,
    lower(name) as "Name Lower",
    upper(name) as "Name Upper",
    length(name) as "Name Length"
from
    products;

select
    id,
    created_at,
    extract(
        year
        from
            created_at
    ) as Year,
    extract(
        month
        from
            created_at
    ) as Month
from
    products;

select
    id,
    created_at,
    year(created_at),
    month(created_at)
from
    products;

select
    id,
    category,
    case
        category
        when "Makanan" then "Enak"
        when "Minuman" then "Segar"
        else "Apa itu?"
    end as "Category"
from
    products;

select
    id,
    price,
    if(
        price <= 15000,
        "Murah",
        if(price <= 20000, "Mahal", "Mahal Banget")
    ) as "Mahal?"
from
    products;

select
    id,
    name,
    ifnull(description, "Kosong")
from
    products;

select
    count(id) as "Total Product"
from
    products;

select
    max(price) as "Product Termahal"
from
    products;

select
    min(price) as "Product Termurah"
from
    products;

select
    avg(price) as "Rata-rata Harga"
from
    products;

select
    sum(quantity) as "Total Stock"
from
    products;

select
    count(id) as "Total Product",
    category
from
    products
group by
    category;

select
    max(price) as "Product Termahal",
    category
from
    products
group by
    category;

select
    min(price) as "Product Termurah",
    category
from
    products
group by
    category;

select
    avg(price) as "Rata-rata Harga",
    category
from
    products
group by
    category;

select
    sum(quantity) as "Total Stock",
    category
from
    products
group by
    category;

select
    count(id) as total,
    category
from
    products
group by
    category
having
    total > 5;

alter table
    products
add
    constraint price_check check (price > 1000);

alter table
    products drop constraint price_check;

alter table
    products
add
    fulltext products_search (name, description);

alter table
    products drop index products_search;

select
    *
from
    products
where
    match(name, description) against("ayam" in natural language mode);

select
    *
from
    products
where
    match(name, description) against("+ayam -bakso" in boolean mode);

select
    *
from
    products
where
    match(name, description) against("bakso" with query expansion);

insert into
    products(id, name, category, price, quantity)
values
    ("Pxxx", "Contoh", "Lain-lain", 1500, 100);

insert into
    products(id, name, price, quantity)
values
    ("X001", "X Satu", 25000, 200),
    ("X002", "X Dua", 100000, 300),
    ("X003", "X Tiga", 15000, 500);

select
    *
from
    products
where
    price > (
        select
            avg(price)
        from
            products
    );