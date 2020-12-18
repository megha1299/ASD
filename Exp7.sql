-- a. 
CREATE TABLE Store (
	`order_no` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `item` VARCHAR(20) NOT NULL,
    `quantity` INTEGER UNSIGNED NOT NULL,
    `discount` DECIMAL(2,2) DEFAULT(0),
    `mrp` DECIMAL(6, 2) NOT NULL
);

-- b. 
INSERT INTO Store (`item`, `quantity`, `discount`, `mrp`)
VALUES ('book', 5, 0, 50), ('paper', 100, 0, 1);

-- c. 
SELECT * FROM Store;

-- d. 
SELECT MOD(`mrp`, 9) FROM Store;

-- e. 
SELECT `mrp`, POWER(`mrp`, 2) FROM Store;

-- f.
SELECT ROUND(`mrp` / 7, 0) FROM Store;
