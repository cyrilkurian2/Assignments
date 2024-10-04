CREATE TABLE Customers (
    CustomerID INT IDENTITY(1, 1) PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    Phone VARCHAR(255) UNIQUE,
);

CREATE TABLE MovieTheatre (
	MovieTheatreID INT IDENTITY(1, 1) PRIMARY KEY,
	MovieTheatreName VARCHAR(255),
	MovieTheatreEmail VARCHAR(255),
	Rating INT,
	MovieTheatreTotalSales INT,
	TotalScreens INT,
);

CREATE TABLE Movies (
	MovieID INT IDENTITY(1, 1) PRIMARY KEY,
	MovieName VARCHAR(255),
	MovieDescription VARCHAR(255),
	
);

CREATE TABLE MovieBookings (
	MovieBookingID INT IDENTITY(1, 1) PRIMARY KEY,
	CustomerID INT NOT NULL,
	MovieID INT NOT NULL,
	MovieTheatreID INT NOT NULL,
	ScreenNumber INT,
	SeatNumber INT,
	TotalAmount DECIMAL(10, 2),
	BookingDate DATETIME DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
	FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
	FOREIGN KEY (MovieTheatreID) REFERENCES MovieTheatre(MovieTheatreID),
);

CREATE TABLE Payments (
	PaymentID INT IDENTITY(1, 1) PRIMARY KEY,
	MovieBookingID INT NOT NULL,
	PaymentDate DATETIME DEFAULT CURRENT_TIMESTAMP,
	PaymentAmount DECIMAL(10, 2),
	FOREIGN KEY (MovieBookingID) REFERENCES MovieBookings(MovieBookingID),
);

CREATE TABLE Reviews (
	ReviewID INT IDENTITY(1, 1) PRIMARY KEY,
	MovieID INT NOT NULL,
	CustomerID INT NOT NULL,
	Rating INT,
	ReviewDesciption VARCHAR(255),
	FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
);

