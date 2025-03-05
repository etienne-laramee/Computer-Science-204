# 1. Display all contents of the Clients table
Query
```sql
SELECT *
FROM Client;
```
Result
```text
+----------+-----------------+----------------+-----------+----------------------------+
| ClientID | ClientFirstName | ClientLastName | ClientDoB | Occupation                 |
+----------+-----------------+----------------+-----------+----------------------------+
|        1 | Kaiden          | Hill           |      2006 | Student                    |
|        2 | Alina           | Morton         |      2010 | Student                    |
|        3 | Fania           | Brooks         |      1983 | Food Scientist             |
|        4 | Courtney        | Jensen         |      2006 | Student                    |
|        5 | Brittany        | Hill           |      1983 | Firefighter                |
|        6 | Max             | Rogers         |      2005 | Student                    |
|        7 | Margaret        | McCarthy       |      1981 | School Psychologist        |
|        8 | Julie           | McCarthy       |      1973 | Professor                  |
|        9 | Ken             | McCarthy       |      1974 | Securities Clerk           |
|       10 | Britany         | O'Quinn        |      1984 | Violinist                  |
|       11 | Conner          | Gardner        |      1998 | Licensed Massage Therapist |
|       12 | Mya             | Austin         |      1960 | Parquet Floor Layer        |
|       13 | Thierry         | Rogers         |      2004 | Student                    |
|       14 | Eloise          | Rogers         |      1984 | Computer Security Manager  |
|       15 | Gerard          | Jackson        |      1979 | Oil Exploration Engineer   |
|       16 | Randy           | Day            |      1986 | Aircraft Electrician       |
|       17 | Jodie           | Page           |      1990 | Manufacturing Director     |
|       18 | Coral           | Rice           |      1996 | Window Washer              |
|       19 | Ayman           | Austin         |      2002 | Student                    |
|       20 | Jaxson          | Austin         |      1999 | Repair Worker              |
|       21 | Joel            | Austin         |      1973 | Police Officer             |
|       22 | Alina           | Austin         |      2010 | Student                    |
|       23 | Elin            | Austin         |      1962 | Payroll Clerk              |
|       24 | Ophelia         | Wolf           |      2004 | Student                    |
|       25 | Eliot           | McGuire        |      1967 | Dentist                    |
|       26 | Peter           | McKinney       |      1968 | Professor                  |
|       27 | Annabella       | Henry          |      1974 | Nurse                      |
|       28 | Anastasia       | Baker          |      2001 | Student                    |
|       29 | Tyler           | Baker          |      1984 | Police Officer             |
|       30 | Lilian          | Ross           |      1983 | Insurance Agent            |
|       31 | Thierry         | Arnold         |      1975 | Bus Driver                 |
|       32 | Angelina        | Rowe           |      1979 | Firefighter                |
|       33 | Marcia          | Rowe           |      1974 | Health Educator            |
|       34 | Martin          | Rowe           |      1976 | Ship Engineer              |
|       35 | Adeline         | Rowe           |      2005 | Student                    |
|       36 | Colette         | Rowe           |      1963 | Professor                  |
|       37 | Diane           | Clark          |      1975 | Payroll Clerk              |
|       38 | Caroline        | Clark          |      1960 | Dentist                    |
|       39 | Dalton          | Clayton        |      1982 | Police Officer             |
|       40 | Steve           | Clayton        |      1990 | Bus Driver                 |
|       41 | Melanie         | Clayton        |      1987 | Computer Engineer          |
|       42 | Alana           | Wilson         |      2007 | Student                    |
|       43 | Carson          | Byrne          |      1995 | Food Scientist             |
|       44 | Conrad          | Byrne          |      2007 | Student                    |
|       45 | Ryan            | Porter         |      2008 | Student                    |
|       46 | Elin            | Porter         |      1978 | Computer Programmer        |
|       47 | Tyler           | Harvey         |      2007 | Student                    |
|       48 | Arya            | Harvey         |      2008 | Student                    |
|       49 | Serena          | Harvey         |      1978 | School Teacher             |
|       50 | Lilly           | Franklin       |      1976 | Doctor                     |
|       51 | Mai             | Franklin       |      1994 | Dentist                    |
|       52 | John            | Franklin       |      1999 | Firefighter                |
|       53 | Judy            | Franklin       |      1995 | Firefighter                |
|       54 | Katy            | Lloyd          |      1992 | School Teacher             |
|       55 | Tamara          | Allen          |      1963 | Ship Engineer              |
|       56 | Maxim           | Lyons          |      1985 | Police Officer             |
|       57 | Allan           | Lyons          |      1983 | Computer Engineer          |
|       58 | Marc            | Harris         |      1980 | School Teacher             |
|       59 | Elin            | Young          |      2009 | Student                    |
|       60 | Diana           | Young          |      2008 | Student                    |
|       61 | Diane           | Young          |      2006 | Student                    |
|       62 | Alana           | Bird           |      2003 | Student                    |
|       63 | Anna            | Becker         |      1979 | Security Agent             |
|       64 | Katie           | Grant          |      1977 | Manager                    |
|       65 | Joan            | Grant          |      2010 | Student                    |
|       66 | Bryan           | Bell           |      2001 | Student                    |
|       67 | Belle           | Miller         |      1970 | Professor                  |
|       68 | Peggy           | Stevens        |      1990 | Bus Driver                 |
|       69 | Steve           | Williamson     |      1975 | HR Clerk                   |
|       70 | Tyler           | Williamson     |      1999 | Doctor                     |
|       71 | Izabelle        | Williamson     |      1990 | Systems Analyst            |
|       72 | Annabel         | Williamson     |      1960 | Cashier                    |
|       73 | Mohamed         | Waters         |      1966 | Insurance Agent            |
|       74 | Marion          | Newman         |      1970 | Computer Programmer        |
|       75 | Ada             | Williams       |      1986 | Computer Programmer        |
|       76 | Sean            | Scott          |      1983 | Bus Driver                 |
|       77 | Farrah          | Scott          |      1974 | Ship Engineer              |
|       78 | Christine       | Lambert        |      1973 | School Teacher             |
|       79 | Alysha          | Lambert        |      2007 | Student                    |
|       80 | Maia            | Grant          |      1984 | School Teacher             |
+----------+-----------------+----------------+-----------+----------------------------+
80 rows in set (0.002 sec)
```
# 2. First names, last names, ages and occupations of all clients
Query
```sql
SELECT Client.ClientFirstName AS name,
    Client.ClientLastName AS 'last name',
    DATE_FORMAT(NOW(), '%Y') - Client.ClientDoB AS age,
    Client.Occupation AS occupation
FROM Client;
```
Result
```text
+-----------+------------+------+----------------------------+
| name      | last name  | age  | occupation                 |
+-----------+------------+------+----------------------------+
| Kaiden    | Hill       |   19 | Student                    |
| Alina     | Morton     |   15 | Student                    |
| Fania     | Brooks     |   42 | Food Scientist             |
| Courtney  | Jensen     |   19 | Student                    |
| Brittany  | Hill       |   42 | Firefighter                |
| Max       | Rogers     |   20 | Student                    |
| Margaret  | McCarthy   |   44 | School Psychologist        |
| Julie     | McCarthy   |   52 | Professor                  |
| Ken       | McCarthy   |   51 | Securities Clerk           |
| Britany   | O'Quinn    |   41 | Violinist                  |
| Conner    | Gardner    |   27 | Licensed Massage Therapist |
| Mya       | Austin     |   65 | Parquet Floor Layer        |
| Thierry   | Rogers     |   21 | Student                    |
| Eloise    | Rogers     |   41 | Computer Security Manager  |
| Gerard    | Jackson    |   46 | Oil Exploration Engineer   |
| Randy     | Day        |   39 | Aircraft Electrician       |
| Jodie     | Page       |   35 | Manufacturing Director     |
| Coral     | Rice       |   29 | Window Washer              |
| Ayman     | Austin     |   23 | Student                    |
| Jaxson    | Austin     |   26 | Repair Worker              |
| Joel      | Austin     |   52 | Police Officer             |
| Alina     | Austin     |   15 | Student                    |
| Elin      | Austin     |   63 | Payroll Clerk              |
| Ophelia   | Wolf       |   21 | Student                    |
| Eliot     | McGuire    |   58 | Dentist                    |
| Peter     | McKinney   |   57 | Professor                  |
| Annabella | Henry      |   51 | Nurse                      |
| Anastasia | Baker      |   24 | Student                    |
| Tyler     | Baker      |   41 | Police Officer             |
| Lilian    | Ross       |   42 | Insurance Agent            |
| Thierry   | Arnold     |   50 | Bus Driver                 |
| Angelina  | Rowe       |   46 | Firefighter                |
| Marcia    | Rowe       |   51 | Health Educator            |
| Martin    | Rowe       |   49 | Ship Engineer              |
| Adeline   | Rowe       |   20 | Student                    |
| Colette   | Rowe       |   62 | Professor                  |
| Diane     | Clark      |   50 | Payroll Clerk              |
| Caroline  | Clark      |   65 | Dentist                    |
| Dalton    | Clayton    |   43 | Police Officer             |
| Steve     | Clayton    |   35 | Bus Driver                 |
| Melanie   | Clayton    |   38 | Computer Engineer          |
| Alana     | Wilson     |   18 | Student                    |
| Carson    | Byrne      |   30 | Food Scientist             |
| Conrad    | Byrne      |   18 | Student                    |
| Ryan      | Porter     |   17 | Student                    |
| Elin      | Porter     |   47 | Computer Programmer        |
| Tyler     | Harvey     |   18 | Student                    |
| Arya      | Harvey     |   17 | Student                    |
| Serena    | Harvey     |   47 | School Teacher             |
| Lilly     | Franklin   |   49 | Doctor                     |
| Mai       | Franklin   |   31 | Dentist                    |
| John      | Franklin   |   26 | Firefighter                |
| Judy      | Franklin   |   30 | Firefighter                |
| Katy      | Lloyd      |   33 | School Teacher             |
| Tamara    | Allen      |   62 | Ship Engineer              |
| Maxim     | Lyons      |   40 | Police Officer             |
| Allan     | Lyons      |   42 | Computer Engineer          |
| Marc      | Harris     |   45 | School Teacher             |
| Elin      | Young      |   16 | Student                    |
| Diana     | Young      |   17 | Student                    |
| Diane     | Young      |   19 | Student                    |
| Alana     | Bird       |   22 | Student                    |
| Anna      | Becker     |   46 | Security Agent             |
| Katie     | Grant      |   48 | Manager                    |
| Joan      | Grant      |   15 | Student                    |
| Bryan     | Bell       |   24 | Student                    |
| Belle     | Miller     |   55 | Professor                  |
| Peggy     | Stevens    |   35 | Bus Driver                 |
| Steve     | Williamson |   50 | HR Clerk                   |
| Tyler     | Williamson |   26 | Doctor                     |
| Izabelle  | Williamson |   35 | Systems Analyst            |
| Annabel   | Williamson |   65 | Cashier                    |
| Mohamed   | Waters     |   59 | Insurance Agent            |
| Marion    | Newman     |   55 | Computer Programmer        |
| Ada       | Williams   |   39 | Computer Programmer        |
| Sean      | Scott      |   42 | Bus Driver                 |
| Farrah    | Scott      |   51 | Ship Engineer              |
| Christine | Lambert    |   52 | School Teacher             |
| Alysha    | Lambert    |   18 | Student                    |
| Maia      | Grant      |   41 | School Teacher             |
+-----------+------------+------+----------------------------+
80 rows in set (0.001 sec)
```
# 3. First and last names of clients that borrowed books in March 2018
Query
```sql
SELECT Client.ClientFirstName, Client.ClientLastName
FROM Client
JOIN Borrower ON Client.ClientID = Borrower.ClientID
WHERE Borrower.BorrowDate LIKE '2018-03-%';
```
Result
```text
+-----------------+----------------+
| ClientFirstName | ClientLastName |
+-----------------+----------------+
| Maia            | Grant          |
| Marcia          | Rowe           |
| Alysha          | Lambert        |
| Tyler           | Baker          |
| Katy            | Lloyd          |
| Angelina        | Rowe           |
| Gerard          | Jackson        |
| Carson          | Byrne          |
+-----------------+----------------+
8 rows in set (0.001 sec)
```
# 4. First and last names of the top 5 authors clients borrowed in 2017
Query
```sql
SELECT Author.AuthorFirstName, Author.AuthorLastName
FROM Author
JOIN Book on Author.AuthorID = Book.AuthorID
JOIN Borrower on Book.BookID = Borrower.BookID
WHERE Borrower.BorrowDate LIKE '2017%'
GROUP BY Author.AuthorID
ORDER BY COUNT(Author.AuthorID) DESC
LIMIT 5;
```
Result
```text
+-----------------+----------------+
| AuthorFirstName | AuthorLastName |
+-----------------+----------------+
| Elena           | Martin         |
| Logan           | Moore          |
| Sofia           | Smith          |
| Maria           | Brown          |
| Zoe             | Roy            |
+-----------------+----------------+
5 rows in set (0.003 sec)
```
# 5. Nationalities of the least 5 authors that clients borrowed during the years 2015-2017
Query
```sql
SELECT Author.AuthorNationality
FROM Author
JOIN Book on Author.AuthorID = Book.AuthorID
JOIN Borrower on Book.BookID = Borrower.BookID
WHERE Borrower.BorrowDate REGEXP '^201[5-7].*'
GROUP BY Author.AuthorID
ORDER BY COUNT(Author.AuthorID) ASC
LIMIT 5;
```
Result
```text
+-------------------+
| AuthorNationality |
+-------------------+
| Spain             |
| USA               |
| Canada            |
| USA               |
| Great Britain     |
+-------------------+
5 rows in set (0.003 sec)
```
# 6. The book that was most borrowed during the years 2015-2017
Query
```sql
SELECT Book.* FROM Book
JOIN Borrower ON Book.BookID = Borrower.BookID
WHERE Borrower.BorrowDate REGEXP '^201[5-7].*'
GROUP BY Book.BookID
ORDER BY COUNT(Book.BookID) DESC
LIMIT 1;
```
Result
```text
+--------+-------------------+----------+---------+
| BookID | BookTitle         | AuthorID | Genre   |
+--------+-------------------+----------+---------+
|      3 | The perfect match |        3 | Fiction |
+--------+-------------------+----------+---------+
1 row in set (0.001 sec)
```
# 7. Top borrowed genres for client born in years 1970-1980
Query
```sql
SELECT COUNT(Book.Genre) AS Popularity, Book.Genre FROM Client
JOIN Borrower ON Borrower.ClientID = Client.ClientID
JOIN Book ON Book.BookID = Borrower.BookID
WHERE Client.ClientDoB BETWEEN '1970-01-01' AND '1980-12-31'
GROUP BY Book.Genre
ORDER BY Popularity DESC;
```
Result
```text
+------------+------------+
| Popularity | Genre      |
+------------+------------+
|         24 | Science    |
|         16 | Fiction    |
|         15 | Well being |
|          5 | Humor      |
|          4 | Society    |
|          3 | History    |
|          3 | Law        |
|          3 | Children   |
|          3 | Literature |
+------------+------------+
9 rows in set (0.001 sec)
```
# 8. Top 5 occupations that borrowed the most in 2016
Query
```sql
SELECT Client.Occupation FROM Client
JOIN Borrower ON Client.ClientID = Borrower.ClientID
WHERE Borrower.BorrowDate LIKE '2016%'
GROUP BY Client.Occupation
ORDER BY COUNT(Client.Occupation) DESC
LIMIT 5;
```
Result
```text
+---------------------+
| Occupation          |
+---------------------+
| Student             |
| Bus Driver          |
| Dentist             |
| Computer Programmer |
| Police Officer      |
+---------------------+
5 rows in set (0.001 sec)
```
# 9. Average number of borrowed books by job title
Query
```sql
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
```
Result
```text
+----------------+----------------------------+
| Average borrow | Job title                  |
+----------------+----------------------------+
|              6 | Dentist                    |
|              4 | Student                    |
|              7 | Nurse                      |
|              5 | Police Officer             |
|              4 | Insurance Agent            |
|              4 | Doctor                     |
|              4 | Bus Driver                 |
|              6 | Computer Programmer        |
|              6 | Computer Security Manager  |
|              4 | Ship Engineer              |
|              3 | Firefighter                |
|              5 | Food Scientist             |
|              4 | Professor                  |
|              4 | School Teacher             |
|              5 | Oil Exploration Engineer   |
|              5 | Manufacturing Director     |
|              5 | Cashier                    |
|              4 | Violinist                  |
|              4 | Systems Analyst            |
|              3 | Computer Engineer          |
|              4 | HR Clerk                   |
|              3 | Manager                    |
|              3 | Payroll Clerk              |
|              3 | Repair Worker              |
|              2 | Aircraft Electrician       |
|              2 | School Psychologist        |
|              2 | Securities Clerk           |
|              2 | Licensed Massage Therapist |
|              2 | Parquet Floor Layer        |
|              2 | Security Agent             |
|              2 | Window Washer              |
|              2 | Health Educator            |
+----------------+----------------------------+
32 rows in set (0.002 sec)
```
# 10. Create a VIEW and display the titles that were borrowed by at least 20% of clients
Query
```sql
CREATE VIEW PopularBooks AS
SELECT Book.*
FROM Book
LEFT JOIN Borrower ON Book.BookID = Borrower.BookID
GROUP BY Book.BookID
HAVING (COUNT(Borrower.ClientID) / (SELECT COUNT(*) FROM Client) * 100) >= 20;
```
Result
```text
MySQL [CS204]> CREATE VIEW PopularBooks AS
ECT B    -> SELECT Book.*
    -> FROM Book
T JOI    -> N BorLEFT JOIN Borrower ON Book.BookID = Borrower.BookID
ook.Boo    -> GROUP BY Book.BookID
    -> HAVING (COUNT(Borrower.ClientID) / (SELECT COUNT(*) FROM Client) * 100) >= 20;
Query OK, 0 rows affected (0.011 sec)
```
Query
```sql
SELECT * FROM PopularBooks;
```
Result
```
MySQL [CS204]> SELECT * FROM PopularBooks;
+--------+-------------------------+----------+---------+
| BookID | BookTitle               | AuthorID | Genre   |
+--------+-------------------------+----------+---------+
|     13 | Electrical transformers |       12 | Science |
+--------+-------------------------+----------+---------+
1 row in set (0.005 sec)
```
# 11. The top month of borrows in 2017
Query
```sql
SELECT DATE_FORMAT(BorrowDate, '%m') AS Month, COUNT(*) AS Occurences
FROM Borrower
WHERE YEAR(Borrower.BorrowDate) = 2017
GROUP BY DATE_FORMAT(BorrowDate, '%m')
ORDER BY Occurences DESC
LIMIT 1;
```
Result
```text
+-------+------------+
| Month | Occurences |
+-------+------------+
| 08    |         10 |
+-------+------------+
1 row in set (0.001 sec)
```
# 12. Average number of borrows by age
Query
```sql
SELECT sub.Age,
    ROUND(AVG(IFNULL(sub.BorrowsPerClient, 0)), 2) AS AverageBorrowsPerAge
FROM (
        SELECT (YEAR(NOW()) - ClientDoB) AS Age,
            COUNT(DISTINCT Borrower.BorrowID) AS BorrowsPerClient
        FROM Client
            LEFT JOIN Borrower ON Client.ClientID = Borrower.ClientID
        GROUP BY Client.ClientID,
            Age
    ) AS sub
GROUP BY sub.Age
ORDER BY sub.Age;
```
Result
```text
+------+----------------------+
| Age  | AverageBorrowsPerAge |
+------+----------------------+
|   15 |                 2.33 |
|   16 |                 0.00 |
|   17 |                 6.00 |
|   18 |                 5.00 |
|   19 |                 3.67 |
|   20 |                 4.50 |
|   21 |                 1.50 |
|   22 |                 5.00 |
|   23 |                 2.00 |
|   24 |                 4.50 |
|   26 |                 3.67 |
|   27 |                 2.00 |
|   29 |                 2.00 |
|   30 |                 4.50 |
|   31 |                10.00 |
|   33 |                 3.00 |
|   35 |                 5.50 |
|   38 |                 2.00 |
|   39 |                 3.00 |
|   40 |                 4.00 |
|   41 |                 5.50 |
|   42 |                 3.00 |
|   43 |                 3.00 |
|   44 |                 2.00 |
|   45 |                 1.00 |
|   46 |                 4.33 |
|   47 |                 5.50 |
|   48 |                 3.00 |
|   49 |                 3.50 |
|   50 |                 2.67 |
|   51 |                 3.25 |
|   52 |                 3.67 |
|   55 |                 4.50 |
|   57 |                 4.00 |
|   58 |                 3.00 |
|   59 |                 1.00 |
|   62 |                 2.50 |
|   63 |                 3.00 |
|   65 |                 3.67 |
+------+----------------------+
39 rows in set (0.002 sec)
```
# 13. The oldest and the youngest clients of the library
Query
```sql
SELECT Client.*, YEAR(NOW()) - Client.ClientDoB AS Age FROM Client
WHERE Client.ClientDoB = (SELECT MIN(Client.ClientDoB) FROM Client)
OR Client.ClientDoB = (SELECT MAX(Client.ClientDoB) FROM Client)
ORDER BY Age ASC;
```
Result
```text
+----------+-----------------+----------------+-----------+---------------------+------+
| ClientID | ClientFirstName | ClientLastName | ClientDoB | Occupation          | Age  |
+----------+-----------------+----------------+-----------+---------------------+------+
|        2 | Alina           | Morton         |      2010 | Student             |   15 |
|       22 | Alina           | Austin         |      2010 | Student             |   15 |
|       65 | Joan            | Grant          |      2010 | Student             |   15 |
|       12 | Mya             | Austin         |      1960 | Parquet Floor Layer |   65 |
|       38 | Caroline        | Clark          |      1960 | Dentist             |   65 |
|       72 | Annabel         | Williamson     |      1960 | Cashier             |   65 |
+----------+-----------------+----------------+-----------+---------------------+------+
6 rows in set (0.001 sec)
```
# 14. First and last names of authors that wrote books in more than one genre
Query
```sql
SELECT Author.AuthorFirstName, Author.AuthorLastName
FROM Author
JOIN Book ON Author.AuthorID = Book.AuthorID
JOIN (
    SELECT COUNT(Genre) AS NbGenres,
        Genre,
        AuthorID
    FROM Book
    GROUP BY Genre, AuthorID
    HAVING NbGenres > 1
) AS sub ON sub.AuthorID = Author.AuthorID
GROUP BY Author.AuthorID, sub.NbGenres;
```
Result
```text
+-----------------+----------------+
| AuthorFirstName | AuthorLastName |
+-----------------+----------------+
| Sofia           | Smith          |
| Maria           | Brown          |
| Elena           | Martin         |
| Oliver          | Martin         |
| Helena          | Adams          |
| Liam            | Parker         |
+-----------------+----------------+
6 rows in set (0.001 sec)
```