--A table may contain duplicate rows.
--Each row of this table indicates the date, units, and product_id of each product sold.
--Write a solution to find the average selling price for each product. average_price should be rounded to 2 decimal places.
--If a product does not have any sold units, its average selling price is assumed to be 0.
--Average selling price = Total Price of Product / Number of products sold.
--COALESCE() হলো SQL এর একটা function, যেটা NULL মানকে replace করে অন্য value দেয়।
SELECT p.product_id,
ROUND(
COALESCE (SUM(p.price*u.units) / SUM(u.units), 0), 2) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
