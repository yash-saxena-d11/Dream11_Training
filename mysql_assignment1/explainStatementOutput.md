#The output of explain statement after optimising the query

````
+----+-------------+----------+------------+--------+------------------------+---------+---------+------------------------------------+------+----------+-------+
| id | select_type | table    | partitions | type   | possible_keys          | key     | key_len | ref                                | rows | filtered | Extra |
+----+-------------+----------+------------+--------+------------------------+---------+---------+------------------------------------+------+----------+-------+
|  1 | SIMPLE      | o        | NULL       | const  | PRIMARY,customerNumber | PRIMARY | 4       | const                              |    1 |   100.00 | NULL  |
|  1 | SIMPLE      | c        | NULL       | const  | PRIMARY                | PRIMARY | 4       | const                              |    1 |   100.00 | NULL  |
|  1 | SIMPLE      | od       | NULL       | ref    | PRIMARY,productCode    | PRIMARY | 4       | const                              |    1 |   100.00 | NULL  |
|  1 | SIMPLE      | p        | NULL       | ref    | PRIMARY                | PRIMARY | 4       | const                              |    1 |   100.00 | NULL  |
|  1 | SIMPLE      | products | NULL       | eq_ref | PRIMARY,productLine    | PRIMARY | 17      | classicmodels.od.productCode       |    1 |   100.00 | NULL  |
|  1 | SIMPLE      | pl       | NULL       | eq_ref | PRIMARY                | PRIMARY | 52      | classicmodels.products.productLine |    1 |   100.00 | NULL  |
+----+-------------+----------+------------+--------+------------------------+---------+---------+------------------------------------+------+----------+-------+

````


