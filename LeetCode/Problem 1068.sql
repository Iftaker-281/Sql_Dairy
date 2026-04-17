--Write a solution to report the product_name, year, and price for each sale_id in the Sales table.
--Return the resulting table in any order.
--Using of left join
--Product sales analycis
SELECT p.product_name,y.year,price
FROM Sales y
LEFT JOIN Product p
ON y.product_id = p.product_id;

