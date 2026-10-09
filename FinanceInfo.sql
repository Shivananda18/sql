create database Finance_db;
use Finance_db;

create table Finace_info(
id int primary key,
account_number bigint,
credit_amount double,
debit_amount double,
balance double,
credited_amount_date date,
debited_amount_date date
);

desc Finace_info;
drop table Finace_info;

INSERT INTO Finace_info VALUES(1, 1000001001, 25000.00, 5000.00, 20000.00, '2026-01-05', '2026-01-08'),
(2, 1000001002, 40000.00, 10000.00, 30000.00, '2026-01-06', '2026-01-10'),
(3, 1000001003, 15000.00, 3000.00, 12000.00, '2026-01-07', '2026-01-12'),
(4, 1000001004, 50000.00, 15000.00, 35000.00, '2026-01-08', '2026-01-15'),
(5, 1000001005, 30000.00, 8000.00, 22000.00, '2026-01-09', '2026-01-16'),
(6, 1000001006, 20000.00, 2500.00, 17500.00, '2026-01-10', '2026-01-18');

SELECT * FROM Finace_info;

INSERT INTO Finance_info (id)VALUES(7);

INSERT INTO Finace_info (id, account_number, credit_amount)
VALUES (8, 1000001008, 12000.00);

INSERT INTO Finace_info (id)VALUES (9),(10),(11);

INSERT INTO Finace_info(id, account_number, credit_amount, debit_amount, balance)VALUES(12, 1000001012, 18000.00, 2000.00, 16000.00),(13, 1000001013, 22000.00, 4000.00, 18000.00),(14, 1000001014, 35000.00, 5000.00, 30000.00);


ALTER TABLE Finace_info
ADD transaction_type VARCHAR(50);

ALTER TABLE Finace_info
ADD COLUMN (bank_name VARCHAR(100),payment_method VARCHAR(50));

DESC Finace_info;


ALTER TABLE Finace_info
RENAME COLUMN credit_amount TO credited_amount;

ALTER TABLE Finace_info
RENAME COLUMN debit_amount TO debited_amount;

ALTER TABLE Finace_info
RENAME COLUMN credited_amount TO credit_amount,
RENAME COLUMN debited_amount TO debit_amount;

DESC Finace_info;


ALTER TABLE Finace_info
MODIFY credit_amount FLOAT;

ALTER TABLE Finace_info
MODIFY credit_amount DOUBLE,
MODIFY account_number BIGINT,
MODIFY bank_name VARCHAR(150);

DESC Finace_info;


ALTER TABLE Finace_info
DROP COLUMN payment_method;

ALTER TABLE Finace_info
DROP COLUMN transaction_type,
DROP COLUMN bank_name;

SELECT * FROM Finace_info;


ALTER TABLE Finace_info
ADD is_transaction_successful BOOLEAN;

ALTER TABLE Finace_info ADD  branch_name VARCHAR(100);

ALTER TABLE Finace_info
MODIFY is_transaction_successful INT;

ALTER TABLE Finace_info
MODIFY branch_name VARCHAR(150),
MODIFY balance DOUBLE;


ALTER TABLE Finace_info
RENAME TO Finance_transactions;

SELECT * FROM Finance_transactions;


DROP TABLE Finance_transactions;




