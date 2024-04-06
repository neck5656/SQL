-- Inserting data into the Books table
INSERT INTO Books (BookID, Title, Author, CategoryID)
VALUES 
    (1, 'The Great Gatsby', 'F. Scott Fitzgerald', 1),
    (2, 'To Kill a Mockingbird', 'Harper Lee', 1),
    (3, '1984', 'George Orwell', 2),
    (4, 'Pride and Prejudice', 'Jane Austen', 3);

-- Inserting sample categories
INSERT INTO Categories (CategoryID, CategoryName)
VALUES (1, 'Fiction'),
       (2, 'Science Fiction'),
       (3, 'Romance');

	   select * from Categories
	   select * from books