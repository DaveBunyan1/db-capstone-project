-- Insert data into customers table
INSERT IGNORE INTO customers (CustomerID, CustomerName, ContactNumber, Email) VALUES
(1, 'John Doe', '123-456-7890', 'john.doe@example.com'),
(2, 'Jane Smith', '987-654-3210', 'jane.smith@example.com'),
(3, 'Alice Johnson', '555-123-4567', 'alice.johnson@example.com'),
(4, 'Bob Wilson', '333-555-7890', 'bob.wilson@example.com'),
(5, 'Eva Williams', '777-888-9999', 'eva.williams@example.com'),
(6, 'Michael Brown', '111-222-3333', 'michael.brown@example.com'),
(7, 'Sara Davis', '444-666-7777', 'sara.davis@example.com'),
(8, 'Alex Turner', '999-888-7777', 'alex.turner@example.com'),
(9, 'Grace Taylor', '111-444-5555', 'grace.taylor@example.com'),
(10, 'Ryan Miller', '123-567-8901', 'ryan.miller@example.com');

-- Insert data into menuitems table
INSERT IGNORE INTO menuitems (MenuItemsID, StarterName, CourseName, DessertName) VALUES
(1, 'Spring Rolls', 'Sweet and Sour Chicken', 'Fortune Cookie'),
(2, 'Vegetable Samosa', 'Paneer Tikka Masala', 'Gulab Jamun'),
(3, 'Edamame', 'Sashimi Platter', 'Green Tea Ice Cream'),
(4, 'Hummus with Pita', 'Grilled Lamb Kebabs', 'Baklava'),
(5, 'Guacamole and Chips', 'Chicken Fajitas', 'Churros');

-- Insert data into menu table
INSERT IGNORE INTO menu (MenuID, MenuItemsID, MenuName, Price, Cuisine) VALUES
(1, 1, 'Special Combo', 15.99, 'Chinese'),
(2, 2, 'Vegetarian Delight', 12.99, 'Indian'),
(3, 3, 'Sushi Feast', 20.99, 'Japanese'),
(4, 4, 'Mediterranean Platter', 18.99, 'Mediterranean'),
(5, 5, 'Tex-Mex Fiesta', 16.99, 'Mexican');

-- Inserting a receptionist
INSERT IGNORE INTO Staff (StaffID, StaffRole, StaffName, Salary) VALUES (1, 'Receptionist', 'Alice Johnson', 30000);

-- Inserting two waiters/waitresses
INSERT IGNORE INTO Staff (StaffID, StaffRole, StaffName, Salary) VALUES (2, 'Waiter', 'Bob Smith', 25000);
INSERT IGNORE INTO Staff (StaffID, StaffRole, StaffName, Salary) VALUES (3, 'Waitress', 'Eva Davis', 25000);

-- Inserting a chef
INSERT IGNORE INTO Staff (StaffID, StaffRole, StaffName, Salary) VALUES (4, 'Chef', 'Charlie Williams', 40000);

-- Inserting a manager
INSERT IGNORE INTO Staff (StaffID, StaffRole, StaffName, Salary) VALUES (5, 'Manager', 'Sophia Brown', 50000);