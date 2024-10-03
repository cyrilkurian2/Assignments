-- Library Management Schema

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100),
    BirthYear INT
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(200),
    AuthorID INT,
    PublicationYear INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Patrons (
    PatronID INT PRIMARY KEY,
    PatronName VARCHAR(100),
    MembershipDate DATE
);

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    BookID INT,
    PatronID INT,
    LoanDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (PatronID) REFERENCES Patrons(PatronID)
);

-- Questions

-- 1. List all books along with their authors, including books without assigned authors.
SELECT  * FROM Books LEFT JOIN Authors ON Books.AuthorID = Authors.AuthorID

-- 2. Display all patrons and their loan history, including patrons who have never borrowed a book.
SELECT * FROM Patrons LEFT JOIN Loans ON Patrons.PatronID = Loans.PatronID

-- 3. Show all authors and the books they've written, including authors who haven't written any books in our collection.
SELECT * FROM Authors LEFT JOIN BOOKS ON Authors.AuthorID = Books.AuthorID

-- 4. List all possible book-patron combinations, regardless of whether a loan has occurred.
SELECT Books.Title,Patrons.PatronName FROM Books CROSS JOIN Patrons

-- 5. Display all loans with book and patron information, including loans where either the book or patron information is missing.
SELECT * FROM Loans LEFT JOIN Books ON Loans.BookID = Books.BookID LEFT JOIN Patrons ON Loans.PatronID = Patrons.PatronID

-- 6. Show all books that have never been loaned, along with their author information.
SELECT * FROM Books LEFT JOIN Loans ON Books.BookID = Loans.BookID LEFT JOIN Authors ON Books.AuthorID = Authors.AuthorID WHERE Loans.LoanID IS NULL

-- 7. List all patrons who have borrowed books in the last month, along with the books they've borrowed.
SELECT p.PatronID,p.PatronName,l.LoanDate,l.ReturnDate, b.BookID,b.Title 
FROM Patrons p LEFT JOIN Loans l ON p.PatronID = l.PatronID LEFT JOIN Books b ON l.BookID = b.BookID 
WHERE l.LoanDate >= DATEADD(MONTH, -1, GETDATE()) 

-- 8. Display all authors born after 1970 and their books, including those without any books in our collection.
SELECT a.AuthorID, a.AuthorName, b.BookID, b.Title FROM Authors a LEFT JOIN Books b ON a.AuthorID = b.AuthorID WHERE a.BirthYear > 1870

-- 9. Show all books published before 2000 and any associated loan information.
SELECT * FROM Books b LEFT JOIN Loans l ON b.BookID = l.BookID WHERE PublicationYear < 2000

-- 10. List all possible author-patron combinations, regardless of whether the patron has borrowed a book by that author.
SELECT a.AuthorName, b.Title 
FROM Authors a CROSS JOIN Books b
LEFT JOIN Loans ON b.BookID = Loans.BookID 
LEFT JOIN Patrons ON Patrons.PatronID = Loans.PatronID