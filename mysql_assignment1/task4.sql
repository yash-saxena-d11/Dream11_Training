select c.customerName, o.ordernumber, o.shippedDate, p.paymentDate, p.amount, od.quantityOrdered, products.productName, pl.image 
from customers c inner join orders o using(customerNumber)
inner join orderdetails od using(orderNumber)
inner join products using(productCode)
inner join payments p using(customerNumber)
inner join productlines pl using(productLine)
where o.orderNumber=10427;

/*Joins have helped to optimize the query greatly. Remember using joins and indexes (add and maintain proper indices if needed) to optimize performance.*/
