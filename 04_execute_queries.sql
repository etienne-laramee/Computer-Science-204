-- C. Write the following queries to retrieve the information detailed below.

-- 1. Display all contents of the Clients table
SELECT *
FROM Client;

-- 2. First names, last names, ages and occupations of all clients
-- We calculate age by converting current date to year only and calculate the difference.
SELECT ClientFirstName AS name,
    ClientLastName AS 'last name',
    DATE_FORMAT(NOW(), '%Y') - ClientDoB AS age,
    Occupation AS occupation
FROM Client;

-- 3. First and last names of clients that borrowed books in March 2018
-- To get all borrowed books in march, we use the wildcard compare to
--     the year and month of the date only.
SELECT ClientFirstName, ClientLastName
FROM Client
JOIN Borrower ON Client.ClientID = Borrower.ClientID
WHERE BorrowDate LIKE '2018-03-%';

-- 4. First and last names of the top 5 authors clients borrowed in 2017
-- Use a wildcard to compare the borrow dates with the year only.
-- Then group all results by AuthorID and count them to measure popularity.
-- Finally order by the most popular and limit the results to the top 5.
SELECT Author.AuthorFirstName, Author.AuthorLastName
FROM Author
JOIN Book on Author.AuthorID = Book.AuthorID
JOIN Borrower on Book.BookID = Borrower.BookID
WHERE Borrower.BorrowDate LIKE '2017%'
GROUP BY Author.AuthorID
ORDER BY COUNT(Author.AuthorID) DESC
LIMIT 5;

-- 5. Nationalities of the least 5 authors that clients borrowed during the years 2015-2017
-- Similar as above, but since the date spans multiple years, we use a REGEX to
--     compare the date with a date that starts with 201 followed by a 5, 6, or 7, and ends
--     with any other characters or numbers.
SELECT Author.AuthorNationality
FROM Author
JOIN Book on Author.AuthorID = Book.AuthorID
JOIN Borrower on Book.BookID = Borrower.BookID
WHERE Borrower.BorrowDate REGEXP '^201[5-7].*'
GROUP BY Author.AuthorID
ORDER BY COUNT(Author.AuthorID) ASC
LIMIT 5;

-- 6. The book that was most borrowed during the years 2015-2017
-- We use the same strategy for matching a range of years as above
--    and aggregate the results by their BookID.
-- Then we group by the number of occurences of each book.
-- Finally we sort by most popular and take the top first entry.
SELECT Book.* FROM Book
JOIN Borrower ON Book.BookID = Borrower.BookID
WHERE Borrower.BorrowDate REGEXP '^201[5-7].*'
GROUP BY Book.BookID
ORDER BY COUNT(Book.BookID) DESC
LIMIT 1;

-- 7. Top borrowed genres for client born in years 1970-1980
-- Look for borrows where the client's date of birth is between the first day
--     of 1970 and the last one of 1980.
-- Group the entries by the book genre and count them to establish the popularity.
-- Display the book genres in descending order of popularity for the selected age group.
SELECT COUNT(Book.Genre) AS Popularity, Book.Genre FROM Client
JOIN Borrower ON Borrower.ClientID = Client.ClientID
JOIN Book ON Book.BookID = Borrower.BookID
WHERE Client.ClientDoB BETWEEN '1970-01-01' AND '1980-12-31'
GROUP BY Book.Genre
ORDER BY Popularity DESC;

-- 8. Top 5 occupations that borrowed the most in 2016
-- Limit the search by borrow date in the year 2016
-- Group by occupation and sort by the most populous
SELECT Client.Occupation FROM Client
JOIN Borrower ON Client.ClientID = Borrower.ClientID
WHERE Borrower.BorrowDate LIKE '2016%'
GROUP BY Client.Occupation
ORDER BY COUNT(Client.Occupation) DESC
LIMIT 5;

-- 9. Average number of borrowed books by job title
-- Starting with the inner request
--     Count the number of borrows per client
-- From that resulting table, we group the results by occupation
--     enabling us to count the total of borrow per occupation
--     and then divide safely (using the NULLIF) by the number
--     of clients that have a same occupation.
-- This gives us the average number of borrows per occupation.
-- To finish we display a table with the average borrows in
--     descending order for each job title (occupation).
Select ROUND(
        SUM(sub.NumBorrow) / NULLIF(COUNT(Occupation), 0)
    ) AS 'Average borrow',
    Occupation AS 'Job title'
FROM (
        SELECT COUNT(Borrower.BorrowId) AS NumBorrow, Client.*
        FROM Client
            JOIN Borrower ON Borrower.ClientID = Client.ClientID
        GROUP BY Client.ClientID
        ORDER BY NumBorrow DESC
    ) AS sub
GROUP BY sub.Occupation
ORDER BY 'Average borrow' DESC;

-- 10. Create a VIEW and display the titles that were borrowed by at least 20% of clients
SELECT * FROM Borrower
JOIN Client ON Client.ClientID = Borrower.ClientID
JOIN Book ON Book.BookID = Borrower.BookID
ORDER BY Book.BookID;

SELECT *,
(
    -- Get number of distinct clients
    SELECT COUNT(DISTINCT(Client.ClientID))
    FROM Client
) AS B,
FROM 
(
    -- Get number of distinct client that borrowed each book
    SELECT COUNT(DISTINCT(Client.ClientID)) AS 'Distinct Clients',
        Book.*
    FROM Client
        JOIN Borrower on Borrower.ClientID = Client.ClientID
        JOIN Book on Book.BookID = Borrower.BookID
    GROUP BY Book.BookID
) AS A
GROUP BY BookID;

-- 11. The top month of borrows in 2017
-- 12. Average number of borrows by age
-- 13. The oldest and the youngest clients of the library
-- 14. First and last names of authors that wrote books in more than one genre