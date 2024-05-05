
-- List all products
SELECT * FROM Products;

-- List customers and their orders
SELECT C.Name, C.Email, O.OrderID, O.Date, O.Total
FROM Customers C
INNER JOIN Orders O ON C.CustomerID = O.CustomerID;

-- Retrieve low stock details including product names
SELECT P.Name, S.StoreID, S.Quantity
FROM Stock S
INNER JOIN Products P ON S.ProductID = P.ProductID
WHERE S.IsLow = TRUE;


-- List products with their category names
SELECT P.Name, P.Description, C.Name AS CategoryName
FROM Products P
INNER JOIN Categories C ON P.CategoryID = C.CategoryID;


-- Count the number of products in each category
SELECT C.Name, COUNT(P.ProductID) AS NumberOfProducts
FROM Categories C
INNER JOIN Products P ON C.CategoryID = P.CategoryID
GROUP BY C.Name;

-- List employees and their store locations
SELECT E.Name, E.Position, S.Location
FROM Employees E
INNER JOIN Stores S ON E.StoreID = S.StoreID;

-- Find orders with a total amount greater than $100
SELECT O.OrderID, O.Date, O.Total
FROM Orders O
WHERE O.Total > 100.00;

-- Find specific products by name
SELECT *
FROM Products
WHERE Name = 'Smartphone';
