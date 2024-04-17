create table barang (
    id int NOT NULL,
    nama varchar(100) NOT NULL,
    harga int NOT NULL DEFAULT 0,
    jumlah int NOT NULL DEFAULT 0
) engine = InnoDB;

SHOW TABLES;

DESC barang;

SHOW CREATE TABLE barang;

ALTER TABLE
    barang
ADD
    COLUMN deskripsi TEXT,
ADD
    COLUMN salah TEXT;

ALTER TABLE
    barang DROP COLUMN salah;

ALTER TABLE
    barang
MODIFY
    nama varchar(200)
after
    deskripsi;

ALTER TABLE
    barang
MODIFY
    nama varchar(200) FIRST;

ALTER TABLE
    barang
MODIFY
    id int NOT NULL,
MODIFY
    nama varchar(200) NOT NULL;

ALTER TABLE
    barang
MODIFY
    harga int NOT NULL DEFAULT 0,
MODIFY
    jumlah int NOT NULL DEFAULT 0;

ALTER TABLE
    barang
ADD
    waktu_dibuat timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP;

INSERT INTO
    barang (id, nama)
VALUES
    (1, "Apel");

SELECT
    *
FROM
    barang;

TRUNCATE barang;

SHOW TABLES;

DROP TABLE barang;