CREATE VIEW OrdersView_2 AS
SELECT customer.CustomerID, customer.FullName, orders.OrderID, orders.TotalCost as Cost, menu.Name
FROM customer 
INNER JOIN orders
INNER JOIN menu
WHERE orders.TotalCost > 150
ORDER BY orders.TotalCost DESC;