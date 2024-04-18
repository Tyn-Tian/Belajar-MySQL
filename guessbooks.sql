create table guestbooks (
    id int not null auto_increment,
    email varchar(100),
    title varchar(200),
    content text,
    primary key (id)
) engine = InnoDB;

select
    *
from
    customers;

select
    *
from
    guestbooks;

insert into
    guestbooks(email, title, content)
values
    ("guest@gmail.com", "Hello", "Hello"),
    ("guest2@gmail.com", "Hello", "Hello"),
    ("guest3@gmail.com", "Hello", "Hello"),
    ("tyn@gmail.com", "Hello", "Hello"),
    ("tyn@gmail.com", "Hello", "Hello"),
    ("tyn@gmail.com", "Hello", "Hello");

select
    *
from
    guestbooks;

select
    distinct email
from
    customers
union
select
    distinct email
from
    guestbooks;

select
    email
from
    customers
union
all
select
    email
from
    guestbooks;

select
    emails.email,
    count(emails.email)
from
    (
        select
            email
        from
            customers
        union
        all
        select
            email
        from
            guestbooks
    ) as emails
group by
    emails.email;

select
    distinct email
from
    customers
where
    email in (
        select
            distinct email
        from
            guestbooks
    );

select
    distinct customers.email
from
    customers
    inner join guestbooks on (guestbooks.email = customers.email);

select
    distinct guestbooks.email,
    customers.email
from
    customers
    left join guestbooks on (guestbooks.email = customers.email)
where
    guestbooks.email is null;

start transaction;

insert into
    guestbooks (email, title, content)
values
    ("contoh@gmail.com", "Contoh", "Conntoh"),
    ("contoh2@gmail.com", "Contoh", "Conntoh"),
    ("contoh3@gmail.com", "Contoh", "Conntoh");

select
    *
from
    guestbooks;

commit;

start transaction;

delete from
    guestbooks;

select
    *
from
    guestbooks;

rollback;