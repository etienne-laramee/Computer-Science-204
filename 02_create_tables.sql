-- Use the database created in the script 01_createDatabase.sql
USE CS204;

-- A. Write the SQL statements in order to create the tables for the database
CREATE TABLE Client
(
    ClientID INT PRIMARY KEY,
    ClientFirstName VARCHAR(255) NOT NULL,
    ClientLastName VARCHAR(255) NOT NULL,
    ClientDoB YEAR NOT NULL,
    Occupation VARCHAR(255)
);

CREATE TABLE Borrower
(
    BorrowID INT PRIMARY KEY,
    ClientID INT NOT NULL,
    BookID INT NOT NULL,
    BorrowDate Date NOT NULL
);

CREATE TABLE Book
(
    BookID INT PRIMARY KEY,
    BookTitle VARCHAR(255) NOT NULL,
    AuthorID INT NOT NULL,
    Genre VARCHAR(255)
);

CREATE TABLE Author
(
    AuthorID INT PRIMARY KEY,
    AuthorFirstName VARCHAR(255) NOT NULL,
    AuthorLastName VARCHAR(255) NOT NULL,
    AuthorNationality VARCHAR(255)
);

ALTER TABLE Borrower
ADD CONSTRAINT fk_borrower_client
FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
ON DELETE CASCADE;

ALTER TABLE Borrower
ADD CONSTRAINT fk_borrower_book
FOREIGN KEY (BookID) REFERENCES Book(BookID)
ON DELETE CASCADE;

ALTER TABLE Book
ADD CONSTRAINT fk_book_author
FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
ON DELETE CASCADE;
