--2a
--SELECT SUM(quantity) FROM orderitems
--WHERE item_price = (SELECT MAX(item_price) FROM orderitems)

--2b
SELECT cust_contact FROM customers
WHERE (cust_email IS NOT NULL) AND (cust_country = 'USA')

--2c
--SELECT UPPER(products.prod_id || ' - ' || vendors.vend_name) AS products_sold  
--FROM products JOIN vendors
--ON products.vend_id = vendors.vend_id
--WHERE prod_id IN (SELECT prod_id FROM orderitems)
