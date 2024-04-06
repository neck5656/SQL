Create database LibraryManagementSystem;
go
CREATE TABLE Users (
    UserID INT PRIMARY KEY NOT NULL,
    UserName NVARCHAR(255)
);
go
CREATE TABLE Roles (
    RoleID INT PRIMARY KEY NOT NULL,
    RoleName NVARCHAR(255)
);
go
CREATE TABLE UserRoles (
    UserRoleID INT PRIMARY KEY NOT NULL,
    UserID INT FOREIGN KEY REFERENCES Users(UserID),
    RoleID INT FOREIGN KEY REFERENCES Roles(RoleID)
);
go


CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY NOT NULL,
    CategoryName NVARCHAR(255)
);
go
CREATE TABLE Books (
    BookID INT PRIMARY KEY NOT NULL,
    Title NVARCHAR(255),
    Author NVARCHAR(255),
    CategoryID INT FOREIGN KEY REFERENCES Categories(CategoryID)
	
);
go
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY NOT NULL,
    UserID INT FOREIGN KEY REFERENCES Users(UserID),
    BookID INT FOREIGN KEY REFERENCES Books(BookID),
    OrderDate DATE
);

go
CREATE TABLE Students (
StudentID INT PRIMARY KEY NOT NULL,
 UserRoleID INT FOREIGN KEY REFERENCES UserRoles(UserRoleID),
  UserName VARCHAR(255)
);
go
CREATE TABLE Supplier(
  SupplierID INT PRIMARY KEY NOT NULL,
  BookID INT FOREIGN KEY REFERENCES Books(BookID),
   supplierName VARCHAR(255),
);
go
CREATE TABLE Librarians(
LibrariansID INT PRIMARY KEY NOT NULL,
 UserRoleID INT FOREIGN KEY REFERENCES UserRoles(UserRoleID),
 TelephoneNumber NVARCHAR(255)
);
CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY NOT NULL,
    UserID INT,
    LibrarianID INT,
    BookID INT,
    Comment NVARCHAR(1000),
    Rating INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (LibrarianID) REFERENCES Librarians(LibrariansID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
go
CREATE TABLE BorrowRecords (
    BorrowID INT IDENTITY(1,1) PRIMARY KEY,
    BookID INT NOT NULL,
    BorrowDate DATETIME NOT NULL
);
go
CREATE TABLE Bookrating (
    RatingID INT PRIMARY KEY IDENTITY,
    BookID INT,
    RatingValue INT,
    DateSubmitted DATETIME
);