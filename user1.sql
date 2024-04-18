START TRANSACTION;

SELECT
    *
FROM
    guestbooks;

UPDATE
    guestbooks
SET
    title = 'Diubah Oleh User 1'
WHERE
    id = 9;

COMMIT;

start transaction;

select
    *
from
    products;

select
    *
from
    products
where
    id = "P001" for
update
;

update
    products
set
    quantity = quantity - 10
where
    id = "P001";

commit;

lock tables products read;

update
    products
set
    quantity = 100
where
    id = "P001";

unlock tables;

lock tables products write;

update
    products
set
    quantity = 100
where
    id = "P001";

unlock tables;

lock instance for backup;

unlock instance;