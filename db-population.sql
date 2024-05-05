
INSERT INTO Categories (CategoryID, Name, Description) VALUES
(1, 'Electronics', 'All electronic gadgets and devices'),
(2, 'Home Appliances', 'Major and minor home appliances'),
(3, 'Video Games', 'Console and PC video games');


INSERT INTO Products (ProductID, CategoryID, Name, Price, Description, IsAvailable) VALUES
(1, 1, 'Smartphone', 299.99, 'Latest model smartphone', TRUE),
(2, 2, 'Microwave Oven', 99.99, 'Compact microwave oven ', TRUE),
(3, 3, 'Video Game', 59.99, 'Role-playing video game', TRUE);


INSERT INTO Stores (StoreID, Location, Phone, HasParking) VALUES
(1, '123 Main St, FirstCity', '123-456-7890', TRUE),
(2, '456 Side St, SecondCity', '321-654-0987', FALSE);


INSERT INTO Stock (StockID, ProductID, StoreID, Quantity, LastStockedDate, IsLow) VALUES
(1, 1, 1, 50, '2023-05-01 12:00:00', FALSE),
(2, 2, 2, 20, '2023-05-02 02:00:00', TRUE),
(3, 3, 1, 15, '2023-05-03 04:00:00', FALSE);


INSERT INTO Customers (CustomerID, Name, Email, Phone, JoinDate) VALUES
(1, 'Sam Smith', 'sam.smith@example.com', '555-1234', '2023-04-01 09:00:00'),
(2, 'Jack Gold', 'jack.gold@example.com', '555-5678', '2023-04-02 10:00:00');


INSERT INTO Carts (CartID, CustomerID, DateCreated) VALUES
(1, 1, '2023-05-01 10:00:00'),
(2, 2, '2023-05-02 11:00:00');


INSERT INTO Orders (OrderID, CartID, CustomerID, Date, Total, OrderStatus, IsPaid) VALUES
(1, 1, 1, '2023-05-01 11:00:00', 359.98, 'Completed', TRUE),
(2, 2, 2, '2023-05-02 12:00:00', 59.99, 'Processing', FALSE);


INSERT INTO Employees (EmployeeID, StoreID, Name, Position, IsFullTime) VALUES
(1, 1, 'Alice Johnson', 'Manager', TRUE),
(2, 2, 'Bob Lee', 'Sales Associate', FALSE);