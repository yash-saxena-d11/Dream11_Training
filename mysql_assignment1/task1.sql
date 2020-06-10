alter table orders add column checkNumber varchar(50) NOT NULL;
alter table orders add CONSTRAINT orders_fk_2 FOREIGN KEY (customerNumber,checkNumber) REFERENCES payments(customerNumber,checkNumber);

/*The addition of the foreign key won't work until the values in checkNumber are actually filled. This is because due to mysql foreign key constraints every value of foreign key in the referencing table should reference an actual existing record in the referenced table*/
