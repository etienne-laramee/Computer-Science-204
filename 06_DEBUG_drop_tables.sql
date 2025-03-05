-- Use the database created in the script 01_createDatabase.sql
USE CS204;

ALTER TABLE Borrower
DROP CONSTRAINT fk_borrower_book;

ALTER TABLE Borrower
DROP CONSTRAINT fk_borrower_client;

ALTER TABLE Book
DROP CONSTRAINT fk_book_author;

DROP VIEW IF EXISTS PopularBooks;

DROP TABLE Client;
DROP TABLE Borrower;
DROP TABLE Book;
DROP TABLE Author;