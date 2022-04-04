1 List all columns of OrderItem table.
mysql> SELECT * FROM Order_Item;
+----------+-------------------+---------------------+-------------------+-------------+-------------------------+----------+-------------+
| ORDER_ID | ORDER_ITEM_SEQ_ID | ORDER_ITEM_TYPE_ID  | SHIP_GROUP_SEQ_ID | PRODUCT_ID  | ITEM_DESCRIPTION        | QUANTITY | UNIT_AMOUNT |
+----------+-------------------+---------------------+-------------------+-------------+-------------------------+----------+-------------+
| 1051     | 01                | PRODUCT_ORDER_ITEM  | 01                | DEMO_UNIT_1 | Demo Product Unit One   | 1.000000 |    16.99000 |
| 1051     | 02                | PRODUCT_ORDER_ITEM  | 02                | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |    18.99000 |
| 1051     | 03                | RENTAL_ORDER_ITEM   | 02                | NULL        | Rental Item             | 3.000000 |     1.33000 |
| 1052     | 01                | PRODUCT_ORDER_ITEM  | 01                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 |
| 1052     | 02                | RENTAL_ORDER_ITEM   | 01                | NULL        | Rental Item             | 1.000000 |     1.33000 |
| 1061     | 01                | PRODUCT_ORDER_ITEM  | 01                | DEMO_UNIT_2 | Demo Product Unit Two   | 2.000000 |    15.99000 |
| 1061     | 02                | PRODUCT_ORDER_ITEM  | 02                | DEMO_UNIT_5 | Demo Product Unit Five  | 1.000000 |    55.09000 |
| 1064     | 01                | PRODUCT_ORDER_ITEM  | 01                | DEMO_UNIT_5 | Demo Product Unit Five  | 3.000000 |    12.07000 |
| 1064     | 02                | PRODUCT_ORDER_ITEM  | 02                | DEMO_UNIT_2 | Demo Product Unit Two   | 2.000000 |     6.33000 |
| 1102     | 01                | PRODUCT_ORDER_ITEM  | 01                | DEMO_UNIT_1 | Demo Product Unit One   | 3.000000 |    16.99000 |
| 1102     | 02                | PRODUCT_ORDER_ITEM  | 01                | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |    18.99000 |
| 1102     | 03                | RENTAL_ORDER_ITEM   | 01                | NULL        | Rental Item             | 3.000000 |     2.33000 |
| 1102     | 04                | PRODUCT_ORDER_ITEM  | 02                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 |
| 1153     | 01                | PRODUCT_ORDER_ITEM  | 01                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 |
| 1153     | 02                | RENTAL_ORDER_ITEM   | 01                | NULL        | Rental Item             | 1.000000 |     1.33000 |
| 1153     | 03                | PRODUCT_ORDER_ITEM  | 01                | DEMO_UNIT_4 | Product Unit FourDemo   | 1.000000 |    12.99000 |
| 1153     | 04                | RENTAL_ORDER_ITEM   | 01                | NULL        | Rental Item             | 1.000000 |     2.33000 |
| 1255     | 01                | PRODUCT_ORDER_ITEM  | 01                | DEMO_UNIT_4 | Demo Product Unit Four  | 3.000000 |    12.99000 |
| 1255     | 02                | RENTAL_ORDER_ITEM   | 01                | NULL        | Rental Item             | 3.000000 |     1.33000 |
| 1255     | 03                | PRODUCT_ORDER_ITEM  | 02                | DEMO_UNIT_5 | Demo Product Unit Five  | 3.000000 |    12.07000 |
+----------+-------------------+---------------------+-------------------+-------------+-------------------------+----------+-------------+
2 List the Person details for all females.

mysql> SELECT  * FROM person WHERE gender ="F";
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
| PARTY_ID  | FIRST_NAME | MIDDLE_NAME | LAST_NAME | GENDER | BIRTH_DATE | EMPLOYMENT_STATUS_ENUM_ID | OCCUPATION        |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
| CustDemo3 | Lily       | J           | Brown     | F      | 1998-06-11 | EMPS_PARTTIME             | Software Engineer |
| CustDemo4 | John       | J           | Norvig    | F      | 1998-06-11 | EMPS_FULLTIME             | Software Engineer |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+

3 List the OrderHeader table contents so that the latest placed order appears in the top.

mysql> Select * FROM Order_Header ORDER BY order_Date DESC;
+----------+---------------+--------------+-------------------------+-----------------+-----------------+---------------------+-----------------------+-------------+
| ORDER_ID | ORDER_TYPE_ID | ORDER_NAME   | ORDER_DATE              | STATUS_ID       | CURRENCY_UOM_ID | PRODUCT_STORE_ID    | SALES_CHANNEL_ENUM_ID | GRAND_TOTAL |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+---------------------+-----------------------+-------------+
| 1064     | SALES_ORDER   | Test Order 7 | 2022-01-09 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_CCDEFAULT_STORE | WEB_SALES_CHANNEL     |     48.8700 |
| 1153     | SALES_ORDER   | Test Order 4 | 2020-04-19 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE   | WEB_SALES_CHANNEL     |     31.6400 |
| 1051     | SALES_ORDER   | Test Order 1 | 2020-04-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE   | WEB_SALES_CHANNEL     |     77.9500 |
| 1052     | SALES_ORDER   | Test Order 2 | 2020-04-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE   | WEB_SALES_CHANNEL     |     16.3200 |
| 1102     | SALES_ORDER   | Test Order 3 | 2020-04-17 00:00:00.000 | ORDER_COMPLETED | USD             | OMS_DEFAULT_STORE   | WEB_SALES_CHANNEL     |    129.9200 |
| 1255     | SALES_ORDER   | Test Order 5 | 2020-03-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE   | WEB_SALES_CHANNEL     |     75.9300 |
| 1061     | SALES_ORDER   | Test Order 6 | 2019-04-24 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE   | WEB_SALES_CHANNEL     |     87.0700 |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+---------------------+-----------------------+-------------+
7 rows in set (0.00 sec)
4 Output the count of OrderItem Ship Group for each shipmentMethodTypeId.
mysql> SELECT COUNT(*) FROM Order_Item_Ship_Group GROUP BY shipment_Method_Type_Id;
+----------+
| COUNT(*) |
+----------+
|       12 |
+----------+
1 row in set (0.00 sec)
5 List the OrderHeader details with grandTotal greater than 50.

mysql> SELECT * FROM order_Header WHERE GRAND_TOTAL>50;
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
| ORDER_ID | ORDER_TYPE_ID | ORDER_NAME   | ORDER_DATE              | STATUS_ID       | CURRENCY_UOM_ID | PRODUCT_STORE_ID  | SALES_CHANNEL_ENUM_ID | GRAND_TOTAL |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
| 1051     | SALES_ORDER   | Test Order 1 | 2020-04-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     77.9500 |
| 1061     | SALES_ORDER   | Test Order 6 | 2019-04-24 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     87.0700 |
| 1102     | SALES_ORDER   | Test Order 3 | 2020-04-17 00:00:00.000 | ORDER_COMPLETED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |    129.9200 |
| 1255     | SALES_ORDER   | Test Order 5 | 2020-03-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     75.9300 |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
4 rows in set (0.00 sec)



6 List the Person details who have not placed any orders.



mysql> select * FROM person p INNER JOIN order_item_ship_group oisg ON p.PARTY_ID <> oisg.CUSTOMER_PARTY_ID GROUP BY PARTY_ID;
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+----------+-------------------+-------------------+-------------------------+-------------------+
| PARTY_ID  | FIRST_NAME | MIDDLE_NAME | LAST_NAME | GENDER | BIRTH_DATE | EMPLOYMENT_STATUS_ENUM_ID | OCCUPATION        | ORDER_ID | SHIP_GROUP_SEQ_ID | CUSTOMER_PARTY_ID | SHIPMENT_METHOD_TYPE_ID | FACILITY_ID       |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+----------+-------------------+-------------------+-------------------------+-------------------+
| CustDemo1 | Joe        | Q           | Public    | M      | 1999-06-15 | EMPS_FULLTIME             | Software Engineer | 1061     | 01                | CustDemo6         | GROUND                  | WebStoreWarehouse |
| CustDemo2 | Jack       | John        | Smith     | M      | 1999-09-14 | EMPS_FULLTIME             | Doctor            | 1051     | 01                | CustDemo1         | GROUND                  | WebStoreWarehouse |
| CustDemo3 | Lily       | J           | Brown     | F      | 1998-06-11 | EMPS_PARTTIME             | Software Engineer | 1051     | 01                | CustDemo1         | GROUND                  | WebStoreWarehouse |
| CustDemo4 | John       | J           | Norvig    | F      | 1998-06-11 | EMPS_FULLTIME             | Software Engineer | 1051     | 01                | CustDemo1         | GROUND                  | WebStoreWarehouse |
| CustDemo5 | Charlie    | Jack        | William   | M      | 1992-04-22 | EMPS_SELF                 | Architect         | 1051     | 01                | CustDemo1         | GROUND                  | WebStoreWarehouse |
| CustDemo6 | James      | W           | Evans     | M      | 1993-05-20 | EMPS_FULLTIME             | Civil Engineer    | 1051     | 01                | CustDemo1         | GROUND                  | WebStoreWarehouse |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+----------+-------------------+-------------------+-------------------------+-------------------+
6 rows in set (0.00 sec)


7 List the Person details whose first name starts with ‘J’ and third character is ’h’.

mysql> SELECT * FROM person WHERE first_name Like 'J_h%';
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
| PARTY_ID  | FIRST_NAME | MIDDLE_NAME | LAST_NAME | GENDER | BIRTH_DATE | EMPLOYMENT_STATUS_ENUM_ID | OCCUPATION        |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
| CustDemo4 | John       | J           | Norvig    | F      | 1998-06-11 | EMPS_FULLTIME             | Software Engineer |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
1 row in set (0.00 sec)

8 List all OrderItem details for the order with orderId, 1102 and shipGroupSeqId, 01.

mysql> SELECT * FROM order_Item WHERE ORDER_ID='1102' AND SHIP_GROUP_SEQ_ID='02';
+----------+-------------------+--------------------+-------------------+-------------+-------------------------+----------+-------------+
| ORDER_ID | ORDER_ITEM_SEQ_ID | ORDER_ITEM_TYPE_ID | SHIP_GROUP_SEQ_ID | PRODUCT_ID  | ITEM_DESCRIPTION        | QUANTITY | UNIT_AMOUNT |
+----------+-------------------+--------------------+-------------------+-------------+-------------------------+----------+-------------+
| 1102     | 04                | PRODUCT_ORDER_ITEM | 02                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 |
+----------+-------------------+--------------------+-------------------+-------------+-------------------------+----------+-------------+
1 row in set (0.00 sec)
9 List the OrderItem details for only those products for which chargeShipping is set to "Y".

mysql> SELECT o.ORDER_ID,ORDER_ITEM_SEQ_ID,ORDER_ITEM_TYPE_ID,SHIP_GROUP_SEQ_ID,p.PRODUCT_ID,ITEM_DESCRIPTION,QUANTITY,UNIT_AMOUNT FROM ORDER_ITEM o Inner JOIN product p ON o.PRODUCT_ID = p.PRODUCT_ID where CHARGE_SHIPPING='y' ;
+----------+-------------------+---------------------+-------------------+-------------+-------------------------+----------+-------------+
| ORDER_ID | ORDER_ITEM_SEQ_ID | ORDER_ITEM_TYPE_ID  | SHIP_GROUP_SEQ_ID | PRODUCT_ID  | ITEM_DESCRIPTION        | QUANTITY | UNIT_AMOUNT |
+----------+-------------------+---------------------+-------------------+-------------+-------------------------+----------+-------------+
| 1051     | 01                | PRODUCT_ORDER_ITEM  | 01                | DEMO_UNIT_1 | Demo Product Unit One   | 1.000000 |    16.99000 |
| 1102     | 01                | PRODUCT_ORDER_ITEM  | 01                | DEMO_UNIT_1 | Demo Product Unit One   | 3.000000 |    16.99000 |
| 1051     | 02                | PRODUCT_ORDER_ITEM  | 02                | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |    18.99000 |
| 1061     | 01                | PRODUCT_ORDER_ITEM  | 01                | DEMO_UNIT_2 | Demo Product Unit Two   | 2.000000 |    15.99000 |
| 1064     | 02                | PRODUCT_ORDER_ITEM  | 02                | DEMO_UNIT_2 | Demo Product Unit Two   | 2.000000 |     6.33000 |
| 1102     | 02                | PRODUCT_ORDER_ITEM  | 01                | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |    18.99000 |
| 1052     | 01                | PRODUCT_ORDER_ITEM  | 01                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 |
| 1102     | 04                | PRODUCT_ORDER_ITEM  | 02                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 |
| 1153     | 01                | PRODUCT_ORDER_ITEM  | 01                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 |
| 1153     | 03                | PRODUCT_ORDER_ITEM  | 01                | DEMO_UNIT_4 | Product Unit FourDemo   | 1.000000 |    12.99000 |
| 1255     | 01                | PRODUCT_ORDER_ITEM  | 01                | DEMO_UNIT_4 | Demo Product Unit Four  | 3.000000 |    12.99000 |
| 1061     | 02                | PRODUCT_ORDER_ITEM  | 02                | DEMO_UNIT_5 | Demo Product Unit Five  | 1.000000 |    55.09000 |
| 1064     | 01                | PRODUCT_ORDER_ITEM  | 01                | DEMO_UNIT_5 | Demo Product Unit Five  | 3.000000 |    12.07000 |
| 1255     | 03                | PRODUCT_ORDER_ITEM  | 02                | DEMO_UNIT_5 | Demo Product Unit Five  | 3.000000 |    12.07000 |
+----------+-------------------+---------------------+-------------------+-------------+-------------------------+----------+-------------+


10 List the Person details whose employment status is either EMPS_SELF or EMPS_FULLTIME without using the OR operator.

mysql> SELECT * FROM assignment.person WHERE EMPLOYMENT_STATUS_ENUM_ID IN ('EMPS_SELF','EMPS_FULLTIME' );
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
| PARTY_ID  | FIRST_NAME | MIDDLE_NAME | LAST_NAME | GENDER | BIRTH_DATE | EMPLOYMENT_STATUS_ENUM_ID | OCCUPATION        |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
| CustDemo1 | Joe        | Q           | Public    | M      | 1999-06-15 | EMPS_FULLTIME             | Software Engineer |
| CustDemo2 | Jack       | John        | Smith     | M      | 1999-09-14 | EMPS_FULLTIME             | Doctor            |
| CustDemo4 | John       | J           | Norvig    | F      | 1998-06-11 | EMPS_FULLTIME             | Software Engineer |
| CustDemo5 | Charlie    | Jack        | William   | M      | 1992-04-22 | EMPS_SELF                 | Architect         |
| CustDemo6 | James      | W           | Evans     | M      | 1993-05-20 | EMPS_FULLTIME             | Civil Engineer    |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
5 rows in set (0.00 sec)

11 List all columns of Facility table.

mysql> SELECT * FROM assignment.facility;
+--------------------+---------------------+
| FACILITY_ID        | FACILITY_NAME       |
+--------------------+---------------------+
| RegionalWarehouse1 | Regional Warehouse1 |
| RegionalWarehouse2 | Regional Warehouse2 |
| WebStoreWarehouse  | Web Store Warehouse |

12 Output the sum of the grandTotal from OrderHeader table for each order date.

mysql> SELECT order_date,sum(GRAND_TOTAL) FROM order_header GROUP BY ORDER_DATE;
+-------------------------+------------------+
| order_date              | sum(GRAND_TOTAL) |
+-------------------------+------------------+
| 2019-04-24 00:00:00.000 |          87.0700 |
| 2020-03-17 00:00:00.000 |          75.9300 |
| 2020-04-17 00:00:00.000 |         224.1900 |
| 2020-04-19 00:00:00.000 |          31.6400 |
| 2022-01-09 00:00:00.000 |          48.8700 |
+-------------------------+------------------+
5 rows in set (0.00 sec)


 13 List the OrderHeader records where grand total is greater than highest grand total of the order date on 2020-04-17.

mysql> SELECT * FROM assignment.order_header where GRAND_TOTAL<(select min(GRAND_TOTAL)from assignment.order_header where order_date='2020-04-17' );
Empty set (0.00 sec)


14 Output the Person's party Id, first name, last name and orderId for all customers who have order date 2020-04-17.

mysql> SELECT party_Id,first_name,last_name ,oh.order_Id FROM person p  join Order_Item_Ship_Group oi on customer_Party_Id=party_id inner join order_header oh ON oh.order_id=oi.order_id where order_date='2020-04-17';
+-----------+------------+-----------+----------+
| party_Id  | first_name | last_name | order_Id |
+-----------+------------+-----------+----------+
| CustDemo1 | Joe        | Public    | 1051     |
| CustDemo1 | Joe        | Public    | 1051     |
| CustDemo1 | Joe        | Public    | 1052     |
| CustDemo3 | Lily       | Brown     | 1102     |
| CustDemo3 | Lily       | Brown     | 1102     |
+-----------+------------+-----------+----------+
15 Output the Person's party Id, first name, last name and orderId for all customers who have order date 2020-04-17.

16 List the OrderHeader details for highest grandTotal for each order date.
mysql> SELECT order_id, order_type_id, order_name, order_date, status_id, currency_uom_id, product_store_id, sales_channel_enum_id, MAX(grand_total) AS highest_grandTotal FROM order_header GROUP BY order_date;\
+----------+---------------+--------------+-------------------------+----------------+-----------------+---------------------+-----------------------+--------------------+
| order_id | order_type_id | order_name   | order_date              | status_id      | currency_uom_id | product_store_id    | sales_channel_enum_id | highest_grandTotal |
+----------+---------------+--------------+-------------------------+----------------+-----------------+---------------------+-----------------------+--------------------+
| 1061     | SALES_ORDER   | Test Order 6 | 2019-04-24 00:00:00.000 | ORDER_APPROVED | USD             | OMS_DEFAULT_STORE   | WEB_SALES_CHANNEL     |            87.0700 |
| 1255     | SALES_ORDER   | Test Order 5 | 2020-03-17 00:00:00.000 | ORDER_APPROVED | USD             | OMS_DEFAULT_STORE   | WEB_SALES_CHANNEL     |            75.9300 |
| 1051     | SALES_ORDER   | Test Order 1 | 2020-04-17 00:00:00.000 | ORDER_APPROVED | USD             | OMS_DEFAULT_STORE   | WEB_SALES_CHANNEL     |           129.9200 |
| 1153     | SALES_ORDER   | Test Order 4 | 2020-04-19 00:00:00.000 | ORDER_APPROVED | USD             | OMS_DEFAULT_STORE   | WEB_SALES_CHANNEL     |            31.6400 |
| 1064     | SALES_ORDER   | Test Order 7 | 2022-01-09 00:00:00.000 | ORDER_APPROVED | USD             | OMS_CCDEFAULT_STORE | WEB_SALES_CHANNEL     |            48.8700 |
+----------+---------------+--------------+-------------------------+----------------+-----------------+---------------------+-----------------------+--------------------+


17 Find the count of order item ship group for each Person. Output the below details for this query:
partyId
firstName
lastName
mysql> SELECT party_Id,first_name,last_name ,count(Order_ID)   FROM person  ,order_item_ship_group GROUP BY CUSTOMER_PARTY_ID;
+-----------+------------+-----------+-----------------+
| party_Id  | first_name | last_name | count(Order_ID) |
+-----------+------------+-----------+-----------------+
| CustDemo1 | Joe        | Public    |              18 |
| CustDemo1 | Joe        | Public    |              12 |
| CustDemo1 | Joe        | Public    |               6 |
| CustDemo1 | Joe        | Public    |              12 |
| CustDemo1 | Joe        | Public    |              24 |
+-----------+------------+-----------+-----------------+
5 rows in set (0.00 sec)


18 Output the customerPartyId and highest order grandTotal for each customer.
+-------------------+------------------+
| customer_party_id | sum(GRAND_TOTAL) |
+-------------------+------------------+
| CustDemo1         |         155.9000 |
| CustDemo1         |          16.3200 |
| CustDemo6         |         174.1400 |
| CustDemo6         |          97.7400 |
| CustDemo3         |         259.8400 |
| CustDemo4         |          31.6400 |
| CustDemo5         |         151.8600 |
+-------------------+------------------



19 List the unique order Ids for the Order Headers with more than one orderItem ShipGroup.


mysql> SELECT oh.order_id FROM order_header OH INNER JOIN order_item_ship_group oi ON oh.order_id =oi.order_id where oi.order_id>1;
+----------+
| order_id |
+----------+
| 1051     |
| 1061     |
| 1064     |
| 1102     |
| 1255     |
| 1051     |
| 1052     |
| 1061     |
| 1064     |
| 1102     |
| 1153     |
| 1255     |
+----------+
12 rows in set (0.00 sec)


20 List all OrderHeader details whose grandTotal is greater than the average grandTotal for all orders date 2020-04-17.

mysql> SELECT * FROM order_header where grand_total>(SELECT AVG(grand_total) FROM order_header WHERE order_date = '2020-04-17' GROUP BY order_date);
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
| ORDER_ID | ORDER_TYPE_ID | ORDER_NAME   | ORDER_DATE              | STATUS_ID       | CURRENCY_UOM_ID | PRODUCT_STORE_ID  | SALES_CHANNEL_ENUM_ID | GRAND_TOTAL |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
| 1051     | SALES_ORDER   | Test Order 1 | 2020-04-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     77.9500 |
| 1061     | SALES_ORDER   | Test Order 6 | 2019-04-24 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     87.0700 |
| 1102     | SALES_ORDER   | Test Order 3 | 2020-04-17 00:00:00.000 | ORDER_COMPLETED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |    129.9200 |
| 1255     | SALES_ORDER   | Test Order 5 | 2020-03-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     75.9300 |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
4 rows in set (0.00 sec)
21 List the RENTAL_ORDER_ITEM Order Item Details for each order.

mysql> SELECT * FROM order_item WHERE ORDER_ITEM_TYPE_ID='RENTAL_ORDER_ITEM';
+----------+-------------------+--------------------+-------------------+------------+------------------+----------+-------------+
| ORDER_ID | ORDER_ITEM_SEQ_ID | ORDER_ITEM_TYPE_ID | SHIP_GROUP_SEQ_ID | PRODUCT_ID | ITEM_DESCRIPTION | QUANTITY | UNIT_AMOUNT |
+----------+-------------------+--------------------+-------------------+------------+------------------+----------+-------------+
| 1051     | 03                | RENTAL_ORDER_ITEM  | 02                | NULL       | Rental Item      | 3.000000 |     1.33000 |
| 1052     | 02                | RENTAL_ORDER_ITEM  | 01                | NULL       | Rental Item      | 1.000000 |     1.33000 |
| 1102     | 03                | RENTAL_ORDER_ITEM  | 01                | NULL       | Rental Item      | 3.000000 |     2.33000 |
| 1153     | 02                | RENTAL_ORDER_ITEM  | 01                | NULL       | Rental Item      | 1.000000 |     1.33000 |
| 1153     | 04                | RENTAL_ORDER_ITEM  | 01                | NULL       | Rental Item      | 1.000000 |     2.33000 |
| 1255     | 02                | RENTAL_ORDER_ITEM  | 01                | NULL       | Rental Item      | 3.000000 |     1.33000 |
+----------+-------------------+--------------------+-------------------+------------+------------------+----------+-------------+

22 Find the Order details assigned to the facility with the “WebStoreWarehouse” value. Output the below fields for this query:
   orderId
   shipGroupSeqId
   facilityId
   customerPartyId
   productId
   itemDescription
   quantity

mysql> SELECT oi.order_id,oi.ship_group_seq_id,facility_id,customer_party_id,product_id , item_description,quantity FROM order_item OI INNER JOIN  order_item_ship_group OISG ON oi.order_id=OISG.order_id WHERE  facility_id='WebStoreWarehouse' GROUP BY customer_party_id;
+----------+-------------------+-------------------+-------------------+-------------+-------------------------+----------+
| order_id | ship_group_seq_id | facility_id       | customer_party_id | product_id  | item_description        | quantity |
+----------+-------------------+-------------------+-------------------+-------------+-------------------------+----------+
| 1051     | 01                | WebStoreWarehouse | CustDemo1         | DEMO_UNIT_1 | Demo Product Unit One   | 1.000000 |
| 1102     | 01                | WebStoreWarehouse | CustDemo3         | DEMO_UNIT_1 | Demo Product Unit One   | 3.000000 |
| 1153     | 01                | WebStoreWarehouse | CustDemo4         | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |
| 1255     | 01                | WebStoreWarehouse | CustDemo5         | DEMO_UNIT_4 | Demo Product Unit Four  | 3.000000 |
| 1061     | 01                | WebStoreWarehouse | CustDemo6         | DEMO_UNIT_2 | Demo Product Unit Two   | 2.000000 |
+----------+-------------------+-------------------+-------------------+-------------+-------------------------+----------+
23
List the below Order Information for the orderId, 1153.
orderId
shipGroupSeqId
customerPartyId
firstName
lastName
orderDate
orderItemSeqId
productId
itemDescription
unitAmount
quantity
grandTotal
ELECT OH.order_id, OI.ship_group_seq_id,OISG.customer_party_id, P.first_name, P.last_name, OH.order_date, OI.order_item_seq_id, OI.product_id, OI.item_description, OI.quantity, OI.unit_amount, OH.grand_total FROM order_item_ship_group OISG INNER JOIN person P ON OISG.customer_party_id = P.party_id INNER JOIN order_item OI ON OISG.order_id = OI.order_id INNER JOIN order_header OH ON  OISG.order_id = OH.order_id WHERE OH.order_id = '1153';
+----------+-------------------+-------------------+------------+-----------+-------------------------+-------------------+-------------+-------------------------+----------+-------------+-------------+
| order_id | ship_group_seq_id | customer_party_id | first_name | last_name | order_date              | order_item_seq_id | product_id  | item_description        | quantity | unit_amount | grand_total |
+----------+-------------------+-------------------+------------+-----------+-------------------------+-------------------+-------------+-------------------------+----------+-------------+-------------+
| 1153     | 01                | CustDemo4         | John       | Norvig    | 2020-04-19 00:00:00.000 | 01                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 |     31.6400 |
| 1153     | 01                | CustDemo4         | John       | Norvig    | 2020-04-19 00:00:00.000 | 02                | NULL        | Rental Item             | 1.000000 |     1.33000 |     31.6400 |
| 1153     | 01                | CustDemo4         | John       | Norvig    | 2020-04-19 00:00:00.000 | 03                | DEMO_UNIT_4 | Product Unit FourDemo   | 1.000000 |    12.99000 |     31.6400 |
| 1153     | 01                | CustDemo4         | John       | Norvig    | 2020-04-19 00:00:00.000 | 04                | NULL        | Rental Item             | 1.000000 |     2.33000 |     31.6400 |
+----------+-------------------+-------------------+------------+-----------+-------------------------+-------------------+-------------+-------------------------+----------+-------------+-------------+

24 List the below Order details for the customer partyId, CustDemo1.
orderId
shipGroupSeqId
orderName
customerPartyId
orderItemSeqId
productId
itemDescription
quantity
unitAmount
ysql> SELECT oitsg.order_id,oitsg.ship_group_seq_id,oitsg.customer_party_id,first_name,last_name,order_date,oi.order_item_seq_id,product_id,item_description,unit_amount,grand_total,quantity FROM order_item oi INNER JOIN order_header oh  ON  oh.order_id=oi.order_id,order_item_ship_group oitsg INNER JOIN person p ON p.party_id=oitsg.customer_Party_Id where oi.ORDER_ID='1153' GROUP BY product_id  ;
+----------+-------------------+-------------------+------------+-----------+-------------------------+-------------------+-------------+-------------------------+-------------+-------------+----------+
| order_id | ship_group_seq_id | customer_party_id | first_name | last_name | order_date              | order_item_seq_id | product_id  | item_description        | unit_amount | grand_total | quantity |
+----------+-------------------+-------------------+------------+-----------+-------------------------+-------------------+-------------+-------------------------+-------------+-------------+----------+
| 1051     | 01                | CustDemo1         | Joe        | Public    | 2020-04-19 00:00:00.000 | 02                | NULL        | Rental Item             |     1.33000 |     31.6400 | 1.000000 |
| 1051     | 01                | CustDemo1         | Joe        | Public    | 2020-04-19 00:00:00.000 | 01                | DEMO_UNIT_3 | Demo Product Unit Three |    14.99000 |     31.6400 | 1.000000 |
| 1051     | 01                | CustDemo1         | Joe        | Public    | 2020-04-19 00:00:00.000 | 03                | DEMO_UNIT_4 | Product Unit FourDemo   |    12.99000 |     31.6400 | 1.000000 |
+----------+-------------------+-------------------+------------+-----------+-------------------------+-------------------+-------------+-------------------------+-------------+-------------+----------+
3 rows in set (0.01 sec)

