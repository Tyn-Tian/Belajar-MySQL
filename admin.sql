create table admin (
    id int not null auto_increment,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    primary key (id)
) engine = InnoDB;

desc admin;

insert into
    admin(first_name, last_name)
values
    ("Chris", "Tian"),
    ("Budi", "Nugraha"),
    ("Joko", "Morro");

select
    *
from
    admin
order by
    id;

delete from
    admin
where
    id = 3;

insert into
    admin(first_name, last_name)
values
    ("Joko", "Mooro");

select LAST_INSERT_ID();