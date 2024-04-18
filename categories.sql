create table categories (
    id varchar(10) not null,
    name varchar(100) not null,
    primary key (id)
) engine = InnoDB;

desc products;

alter table
    products drop constraint fk_products_categories;

alter table
    products drop column id_catogory;

alter table
    products
add
    column id_category varchar(10);

alter table
    products
add
    constraint fk_products_categories foreign key (id_category) references categories (id);

select
    *
from
    products;

select
    *
from
    categories;

insert into
    categories(id, name)
values
    ("C001", "Makanan"),
    ("C002", "Minuman"),
    ("C003", "Lain-Lain");

update
    products
set
    id_category = "C001"
where
    id in (
        "P001",
        "P002",
        "P003",
        "P004",
        "P006",
        "P013",
        "P014",
        "P015"
    );

update
    products
set
    id_category = "C002"
where
    id in (
        "P007",
        "P008",
        "P009"
    );

update
    products
set
    id_category = "C003"
where
    id in (
        "P010",
        "P011",
        "P012"
    );

select
    products.id,
    products.name,
    categories.name
from
    products
    join categories on (categories.id = products.id_category);

select
    *
from
    categories;

insert into
    categories(id, name)
values
    ("C004", "Oleh-Oleh"),
    ("C005", "Elektronik");

select
    *
from
    categories
    inner join products on (products.id_category = categories.id);

select
    *
from
    categories
    left join products on (products.id_category = categories.id);

select
    *
from
    categories
    right join products on (products.id_category = categories.id);

create table numbers (id int not null, primary key (id)) engine = InnoDB;

insert into
    numbers
values
    (1),
    (2),
    (3),
    (4),
    (5),
    (6),
    (7),
    (8),
    (9),
    (10);

select
    *
from
    numbers;

select
    numbers1.id,
    numbers2.id,
    (numbers1.id * numbers2.id)
from
    numbers as numbers1
    cross join numbers as numbers2
order by
    numbers1.id,
    numbers2.id;