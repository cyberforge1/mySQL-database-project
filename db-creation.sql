
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description TEXT
);


CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    CategoryID INT,
    Name VARCHAR(255),
    Price DECIMAL(10, 2),
    Description VARCHAR(255),
    IsAvailable BOOLEAN,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);


CREATE TABLE Stores (
    StoreID INT PRIMARY KEY,
    Location VARCHAR(255),
    Phone VARCHAR(20),
    HasParking BOOLEAN
);


CREATE TABLE Stock (
    StockID INT PRIMARY KEY,
    ProductID INT,
    StoreID INT,
    Quantity BIGINT,
    LastStockedDate DATETIME,
    IsLow BOOLEAN,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (StoreID) REFERENCES Stores(StoreID)
);


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(20),
    JoinDate DATETIME
);


CREATE TABLE Carts (
    CartID INT PRIMARY KEY,
    CustomerID INT,
    DateCreated DATETIME,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CartID INT,
    CustomerID INT,
    Date DATETIME,
    Total DECIMAL(10, 2),
    OrderStatus VARCHAR(255),
    IsPaid BOOLEAN,
    FOREIGN KEY (CartID) REFERENCES Carts(CartID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    StoreID INT,
    Name VARCHAR(255),
    Position VARCHAR(255),
    IsFullTime BOOLEAN,
    FOREIGN KEY (StoreID) REFERENCES Stores(StoreID)
);