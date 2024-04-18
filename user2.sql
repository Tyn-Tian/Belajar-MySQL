START TRANSACTION;

SELECT
    *
FROM
    guestbooks;

UPDATE
    guestbooks
SET
    title = 'Diubah Oleh User 2'
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

select
    *
from
    products
where
    id = "P001";