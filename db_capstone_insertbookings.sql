INSERT IGNORE INTO bookings (BookingID, BookingDate, TableNumber, CustomerID)
VALUES (1, "2022-10-10", 5, 1);

INSERT IGNORE INTO bookings (BookingID, BookingDate, TableNumber, CustomerID)
VALUES (2, "2022-11-12", 3, 3);

INSERT IGNORE INTO bookings (BookingID, BookingDate, TableNumber, CustomerID)
VALUES (3, "2022-10-11", 2, 2);

INSERT IGNORE INTO bookings (BookingID, BookingDate, TableNumber, CustomerID)
VALUES (4, "2022-10-13", 2, 1);

SELECT * from bookings;