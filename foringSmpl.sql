create database Fori
use Fori
-- Create the parent table
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(50)
);

-- Create the child table with a foreign key constraint
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    UserID INT,
    OrderDate DATE,
    CONSTRAINT FK_Orders_Users FOREIGN KEY (UserID) REFERENCES Users(UserID)
);
describe Orders;
-- Insert data into the parent table
INSERT INTO Users (UserID, UserName)
VALUES (10, 'Sreerag'),
       (2, 'Jane'),
       (3, 'David');

-- Insert data into the child table
INSERT INTO Orders (OrderID, UserID, OrderDate)
VALUES (1, 1, '2023-06-08'),
       (2, 2, '2023-06-09'),
       (3, 1, '2023-06-10');

-- Attempt to insert an invalid record into the child table
INSERT INTO Orders (OrderID, UserID, OrderDate)
VALUES (13, 1, '22-12-2022');

-- Display the data from the child table
SELECT * FROM Orders;
select * from Users; 
