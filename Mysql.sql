-- Aircraft Table
CREATE TABLE Aircraft (
    Id INT PRIMARY KEY,
    capacity INT,
    Model VARCHAR(100),
    Maj_pilot VARCHAR(100),
    Assistant VARCHAR(100),
    Host1 VARCHAR(100),
    Host2 VARCHAR(100),
    AL_Id INT
);

-- Airline Table
CREATE TABLE Airline (
    Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(255),
    Cont_person VARCHAR(100)
);

-- Airline_Phones Table
CREATE TABLE Airline_Phones (
    AL_Id INT,
    Phones VARCHAR(20),
    FOREIGN KEY (AL_Id) REFERENCES Airline(Id)
);

-- Transaction Table
CREATE TABLE Transaction (
    Id INT PRIMARY KEY,
    Description VARCHAR(255),
    Amout DECIMAL(10, 2),
    Date DATE,
    AL_Id INT,
    FOREIGN KEY (AL_Id) REFERENCES Airline(Id)
);

-- Employee Table
CREATE TABLE Employee (
    Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(255),
    Gender CHAR(1),
    Position VARCHAR(100),
    BD_Year INT,
    BD_Month INT,
    BD_Day INT,
    AL_Id INT,
    FOREIGN KEY (AL_Id) REFERENCES Airline(Id)
);

-- Emp_Qualifications Table
CREATE TABLE Emp_Qualifications (
    Emp_Id INT,
    Qualifications VARCHAR(100),
    FOREIGN KEY (Emp_Id) REFERENCES Employee(Id)
);

-- Route Table
CREATE TABLE Route (
    Id INT PRIMARY KEY,
    Distance DECIMAL(10, 2),
    Destination VARCHAR(100),
    Origin VARCHAR(100),
    Classification VARCHAR(50)
);

-- Aircraft_Routes Table
CREATE TABLE Aircraft_Routes (
    AC_Id INT,
    Route_Id INT,
    Departure DATETIME,
    Num_Of_Pass INT,
    Price DECIMAL(10, 2),
    Arrival DATETIME,
    FOREIGN KEY (AC_Id) REFERENCES Aircraft(Id),
    FOREIGN KEY (Route_Id) REFERENCES Route(Id)
);
