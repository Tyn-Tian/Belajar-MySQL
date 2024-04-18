create table wallet (
    id int not null auto_increment,
    id_customer int not null,
    balance int not null default 0,
    primary key (id),
    unique key id_customer_unique (id_customer),
    foreign key fk_wallet_customer (id_customer) references customers (id)
) engine = InnoDB;

desc wallet;

select
    *
from
    customers;

insert into
    wallet(id_customer)
values
    (1),
    (2);

select
    *
from
    wallet;

select
    customers.email,
    wallet.balance
from
    wallet
    join customers on (wallet.id_customer = customers.id);