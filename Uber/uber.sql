CREATE TABLE Customers (
    CustomerID INT IDENTITY(1, 1) PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    Phone VARCHAR(255) UNIQUE
);

CREATE TABLE Drivers (
    DriverID INT IDENTITY(1, 1) PRIMARY KEY, 
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    Phone VARCHAR(255) UNIQUE,
    Status VARCHAR(255) DEFAULT 'available',
    TaxiCarNumber VARCHAR(255) UNIQUE,
    UpiID VARCHAR(255) UNIQUE
);

CREATE TABLE RideDetails (
    RideID INT IDENTITY(1, 1) PRIMARY KEY,
	CustomerID INT NOT NULL,
    DriverID INT NOT NULL,
    PickupLocation VARCHAR(255),
    DropoffLocation VARCHAR(255),
    RequestTime DATETIME DEFAULT CURRENT_TIMESTAMP,
    Fare DECIMAL(10, 2),
    StartTime DATETIME,
    EndTime DATETIME,
    Status VARCHAR(255) DEFAULT 'requested',
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID)
);

CREATE TABLE Payment (
    PaymentID INT IDENTITY(1, 1) PRIMARY KEY,
    RideID INT NOT NULL,
    Amount DECIMAL(10, 2),
    PaymentMethod VARCHAR(255),
    PaymentStatus VARCHAR(255),
    FOREIGN KEY (RideID) REFERENCES RideDetails(RideID)
);

CREATE TABLE DriverEarnings (
    DriverID INT NOT NULL,
	TotalRides INT DEFAULT 0,
    TotalEarning DECIMAL(10, 2),
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID)
);

