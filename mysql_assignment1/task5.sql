
/*creating a table*/
create table ordercounts (
customerNumber int(11) not null,
ordercount int(11) not null,
primary key(customerNumber));

/*filling previous data*/
insert into ordercounts(customerNumber,ordercount) 
select customerNumber, count(orderNumber)from orders group by customerNumber;

/*trigger*/
create trigger incrementOrderCount
after insert on orders for each row
update ordercounts set ordercount=ordercount+1 where customerNumber=NEW.customerNumber;


