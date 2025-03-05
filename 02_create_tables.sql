-- Use the database created in the script 01_createDatabase.sql
USE CS204;

-- A. Write the SQL statements in order to create the tables for the database
CREATE TABLE Client
(
    ClientID INT PRIMARY KEY, -- Indexed by default
    ClientFirstName VARCHAR(255) NOT NULL,
    ClientLastName VARCHAR(255) NOT NULL,
    ClientDoB YEAR NOT NULL,
    Occupation VARCHAR(255),
    INDEX idx_job_title (Occupation), -- Index for sorting by occupation.
    INDEX idx_date_of_birth (ClientDoB) -- Index for sorting by Date of birth.
);

CREATE TABLE Borrower
(
    BorrowID INT PRIMARY KEY, -- Indexed by default
    ClientID INT NOT NULL, -- Indexed by default
    BookID INT NOT NULL, -- Indexed by default
    BorrowDate Date NOT NULL,
    INDEX idx_date (BorrowDate) -- Index for sorting and filtering by borrow date.
);

CREATE TABLE Book
(
    BookID INT PRIMARY KEY, -- Indexed by default
    BookTitle VARCHAR(255) NOT NULL,
    AuthorID INT NOT NULL, -- Indexed by default
    Genre VARCHAR(255),
    INDEX idx_genre (Genre) -- Index for sorting and filtering by book genre.
);

CREATE TABLE Author
(
    AuthorID INT PRIMARY KEY, -- Indexed by default
    AuthorFirstName VARCHAR(255) NOT NULL,
    AuthorLastName VARCHAR(255) NOT NULL,
    AuthorNationality VARCHAR(255),
    INDEX idx_nationality (AuthorNationality) -- Index for sorting and filtering by Author's nationality
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
