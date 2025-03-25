Create DATABASE Sanjayproj;
USE Sanjayproj;

CREATE TABLE catalog(
    Catalog_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Location VARCHAR(50) NOT NULL
);

CREATE TABLE Genre (
Genre_ID INT PRIMARY KEY AUTO_INCREMENT ,
Name VARCHAR(255),
Description TEXT
);

CREATE TABLE Author (
 Author_ID INT PRIMARY KEY AUTO_INCREMENT ,
  Name VARCHAR(255),
 Birth_Date DATE  ,
 Nationality VARCHAR(255)
);

CREATE TABLE Member (
    Member_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255)  ,
    Contact_Info VARCHAR(255) ,
    Join_Date DATE
);

CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) ,
    Contact_Info VARCHAR(255) ,
    Job_Title VARCHAR(255) ,
    Hire_Date DATE 
);

CREATE TABLE Material (
    Material_ID INT PRIMARY KEY,
    Title VARCHAR(255),
    Publication_Date DATE ,
    Catalog_ID INT ,
    Genre_ID INT,
    CONSTRAINT fcatalog FOREIGN KEY (Catalog_ID) REFERENCES Catalog(Catalog_ID),
   CONSTRAINT fGenre FOREIGN KEY (Genre_ID) REFERENCES Genre(Genre_ID)
);

CREATE TABLE Authorship (
    Authorship_ID INT PRIMARY KEY,
    Author_ID INT ,
    Material_ID INT ,
    CONSTRAINT fAuthor FOREIGN KEY (Author_ID) REFERENCES Author(Author_ID),
    CONSTRAINT fMaterial FOREIGN KEY (Material_ID) REFERENCES Material(Material_ID)
);

CREATE TABLE Borrow (
    Borrow_ID INT PRIMARY KEY,
    Material_ID INT,
    Member_ID INT,
    Staff_ID INT,
    Borrow_Date DATE ,
    Due_Date DATE,
    Return_Date DATE,
    CONSTRAINT fk_material FOREIGN KEY (Material_ID) REFERENCES Material(Material_ID),
    CONSTRAINT fk_Member FOREIGN KEY (Member_ID) REFERENCES Member(Member_ID),
    CONSTRAINT fk_Staff FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID)
);

LOAD DATA INFILE 'D:/Sem 2/CS 504/Final PROJECT/Author.csv'
 INTO TABLE Author
  FIELDS TERMINATED BY ',' 
  ENCLOSED BY '"' 
  LINES TERMINATED BY '\n' 
  IGNORE 1 ROWS;

LOAD DATA INFILE 'D:/Sem 2/CS 504/Final PROJECT/Catalog.csv'
 INTO TABLE Catalog
  FIELDS TERMINATED BY ',' 
  ENCLOSED BY '"' 
  LINES TERMINATED BY '\n' 
  IGNORE 1 ROWS;

  LOAD DATA INFILE 'D:/Sem 2/CS 504/Final PROJECT/Genre.csv'
 INTO TABLE Genre
  FIELDS TERMINATED BY ',' 
  ENCLOSED BY '"' 
  LINES TERMINATED BY '\n' 
  IGNORE 1 ROWS;

  LOAD DATA INFILE 'D:/Sem 2/CS 504/Final PROJECT/Member.csv'
 INTO TABLE Member
  FIELDS TERMINATED BY ',' 
  ENCLOSED BY '"' 
  LINES TERMINATED BY '\n' 
  IGNORE 1 ROWS;

INSERT INTO staff (Staff_ID, Name, Contact_Info, Job_Title, Hire_Date)
VALUES
(1, 'Amy Green', 'amy.green@email.com', 'Librarian', '2017-06-01'),
(2, 'Brian Taylor', 'brian.taylor@email.com', 'Library Assistant', '2018-11-15'),
(3, 'Christine King', 'chris.king@email.com', 'Library Assistant', '2019-05-20'),
(4, 'Daniel Wright', 'dan.wright@email.com', 'Library Technician', '2020-02-01');

INSERT INTO material (Material_ID, Title, Publication_Date, Catalog_ID, Genre_ID)
VALUES
(1, 'The Catcher in the Rye', '1951-07-16', 1, 1),
(2, 'To Kill a Mockingbird', '1960-07-11', 2, 1),
(3, 'The Da Vinci Code', '2003-04-01', 3, 2),
(4, 'The Hobbit', '1937-09-21', 4, 3),
(5, 'The Shining', '1977-01-28', 5, 4),
(6, 'Pride and Prejudice', '1813-01-28', 1, 1),
(7, 'The Great Gatsby', '1925-04-10', 2, 1),
(8, 'Moby Dick', '1851-10-18', 3, 1),
(9, 'Crime and Punishment', '1866-01-01', 4, 1),
(10, 'The Hitchhiker''s Guide to the Galaxy', '1979-10-12', 5, 3),
(11, '1984', '1949-06-08', 1, 5),
(12, 'Animal Farm', '1945-08-17', 2, 5),
(13, 'The Haunting of Hill House', '1959-10-17', 3, 4),
(14, 'Brave New World', '1932-08-01', 4, 5),
(15, 'The Chronicles of Narnia: The Lion the Witch and the Wardrobe', '1950-10-16', 5, 3),
(16, 'The Adventures of Huckleberry Finn', '1884-12-10', 6, 1),
(17, 'The Catch-22', '1961-10-11', 7, 1),
(18, 'The Picture of Dorian Gray', '1890-07-01', 8, 1),
(19, 'The Call of Cthulhu', '1928-02-01', 9, 4),
(20, 'Harry Potter and the Philosopher''s Stone', '1997-06-26', 10, 3),
(21, 'Frankenstein', '1818-01-01', 6, 4),
(22, 'A Tale of Two Cities', '1859-04-30', 7, 1),
(23, 'The Iliad', '1750-01-01', 8, 6),
(24, 'The Odyssey', '1725-01-01', 9, 6),
(25, 'The Brothers Karamazov', '1880-01-01', 10, 1),
(26, 'The Divine Comedy', '1320-01-01', 6, 6),
(27, 'The Grapes of Wrath', '1939-04-14', 7, 1),
(28, 'The Old Man and the Sea', '1952-09-01', 8, 1),
(29, 'The Count of Monte Cristo', '1844-01-01', 9, 1),
(30, 'A Midsummer Night''s Dream', '1596-01-01', 10, 7),
(31, 'The Tricky Book', '1888-01-01', 10, 7);

INSERT INTO authorship (Authorship_ID, Author_ID, Material_ID)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 1, 21),
(22, 2, 22),
(23, 3, 22),
(24, 3, 23),
(25, 4, 24),
(26, 5, 25),
(27, 6, 26),
(28, 7, 27),
(29, 8, 28),
(30, 19, 28),
(31, 9, 29),
(32, 10, 30),
(33, 8, 30),
(34, 2, 29);

INSERT INTO Borrow (Borrow_ID, Material_ID, Member_ID, Staff_ID, Borrow_Date, Due_Date, Return_Date)
VALUES 
(1, 1, 1, 1, '2018-09-12', '2018-10-03', '2018-09-30'),
(2, 2, 2, 1, '2018-10-15', '2018-11-05', '2018-10-29'),
(3, 3, 3, 1, '2018-12-20', '2019-01-10', '2019-01-08'),
(4, 4, 4, 1, '2019-03-11', '2019-04-01', '2019-03-27'),
(5, 5, 5, 1, '2019-04-20', '2019-05-11', '2019-05-05'),
(6, 6, 6, 1, '2019-07-05', '2019-07-26', '2019-07-21'),
(7, 7, 7, 1, '2019-09-10', '2019-10-01', '2019-09-25'),
(8, 8, 8, 1, '2019-11-08', '2019-11-29', '2019-11-20'),
(9, 9, 9, 1, '2020-01-15', '2020-02-05', '2020-02-03'),
(10, 10, 10, 1, '2020-03-12', '2020-04-02', '2020-03-28'),
(11, 1, 11, 2, '2020-05-14', '2020-06-04', '2020-05-28'),
(12, 2, 12, 2, '2020-07-21', '2020-08-11', '2020-08-02'),
(13, 3, 13, 2, '2020-09-25', '2020-10-16', '2020-10-15'),
(14, 4, 1, 2, '2020-11-08', '2020-11-29', '2020-11-24'),
(15, 5, 2, 2, '2021-01-03', '2021-01-24', '2021-01-19'),
(16, 6, 3, 2, '2021-02-18', '2021-03-11', '2021-03-12'),
(17, 17, 4, 2, '2021-04-27', '2021-05-18', '2021-05-20'),
(18, 18, 5, 2, '2021-06-13', '2021-07-04', '2021-06-28'),
(19, 19, 6, 2, '2021-08-15', '2021-09-05', '2021-09-03'),
(20, 20, 7, 2, '2021-10-21', '2021-11-11', NULL),
(21, 21, 1, 3, '2021-11-29', '2021-12-20', NULL),
(22, 22, 2, 3, '2022-01-10', '2022-01-31', '2022-01-25'),
(23, 23, 3, 3, '2022-02-07', '2022-02-28', '2022-02-23'),
(24, 24, 4, 3, '2022-03-11', '2022-04-01', '2022-03-28'),
(25, 25, 5, 3, '2022-04-28', '2022-05-19', '2022-05-18'),
(26, 26, 6, 3, '2022-06-22', '2022-07-13', '2022-07-08'),
(27, 27, 7, 3, '2022-08-04', '2022-08-25', '2022-08-23'),
(28, 28, 8, 3, '2022-09-13', '2022-10-04', '2022-09-28'),
(29, 29, 9, 3, '2022-10-16', '2022-11-06', '2022-11-05'),
(30, 30, 8, 3, '2022-11-21', '2022-12-12', '2022-12-05'),
(31, 1, 9, 4, '2022-12-28', '2023-01-18', NULL),
(32, 2, 1, 4, '2023-01-23', '2023-02-13', NULL),
(33, 3, 10, 4, '2023-02-02', '2023-02-23', '2023-02-17'),
(34, 4, 11, 4, '2023-03-01', '2023-03-22', NULL),
(35, 5, 12, 4, '2023-03-10', '2023-03-31', NULL),
(36, 6, 13, 4, '2023-03-15', '2023-04-05', NULL),
(37, 7, 17, 4, '2023-03-25', '2023-04-15', NULL),
(38, 8, 8, 4, '2023-03-30', '2023-04-20', NULL),
(39, 9, 9, 4, '2023-03-26', '2023-04-16', NULL),
(40, 10, 20, 4, '2023-03-28', '2023-04-18', NULL);

SELECT g.Name, COUNT(m.Material_ID) AS Total_Materials
FROM Genre g
JOIN Material m ON g.Genre_ID = m.Genre_ID
GROUP BY g.Name;

SELECT a.Name
FROM Author a
JOIN Authorship au ON a.Author_ID = au.Author_ID
JOIN Material m ON au.Material_ID = m.Material_ID
JOIN Genre g ON m.Genre_ID = g.Genre_ID
WHERE g.Name = 'Horror & Suspense';

SELECT m.Title, a.Name 
FROM Material m 
JOIN Authorship au ON m.Material_ID = au.Material_ID 
JOIN Author a ON au.Author_ID = a.Author_ID 
WHERE m.Title IN 
( SELECT Title FROM Material WHERE Publication_Date > '2000-01-01' );

SELECT DISTINCT m.Material_ID, m.Title
FROM Material m
WHERE NOT EXISTS (
    SELECT 1
    FROM Borrow b
    WHERE b.Material_ID = m.Material_ID
      AND b.Return_Date IS NULL
);

SELECT m.Material_ID, m.Title, b.Borrow_Date, b.Due_Date
FROM Material m
LEFT JOIN Borrow b ON m.Material_ID = b.Material_ID
WHERE b.Return_Date IS NULL 
  AND b.Due_Date < '2023-04-01'
  AND b.Material_ID IS NOT NULL;

SELECT m.Title, COUNT(b.Material_ID) AS Borrow_Count
FROM Material m
LEFT JOIN Borrow b ON m.Material_ID = b.Material_ID
GROUP BY m.Title
ORDER BY Borrow_Count DESC
LIMIT 10;

SELECT COUNT(*) AS Count_of_materials_by_Lucas_Piki
FROM Author a
JOIN Authorship au ON a.Author_ID = au.Author_ID
WHERE a.Name = 'Lucas Piki';   

SELECT COUNT(DISTINCT Material_ID) AS TotalMaterials
FROM (
    SELECT a1.Material_ID
    FROM Authorship a1
    JOIN Authorship a2 ON a1.Material_ID = a2.Material_ID AND a1.Author_ID != a2.Author_ID
) AS subquery;

SELECT g.Name, COUNT(b.Material_ID) AS Borrow_Count
FROM Genre g
JOIN Material m ON g.Genre_ID = m.Genre_ID
JOIN Borrow b ON m.Material_ID = b.Material_ID
GROUP BY g.Name
ORDER BY Borrow_Count DESC;


SELECT COUNT(*) AS Total_Borrowed_Materials
FROM Borrow
WHERE DATE(Borrow.Borrow_Date) BETWEEN DATE('2020-09-01') AND DATE('2020-10-31');

UPDATE Borrow
JOIN Material ON Borrow.Material_ID = Material.Material_ID
SET Borrow.Return_Date = '2023-04-01'
WHERE Material.Title = 'Harry Potter and the Philosopher''s Stone';

SELECT b.*
FROM Borrow b
JOIN Material m ON b.Material_ID = m.Material_ID
WHERE m.Title = "Harry Potter and the Philosopher's Stone";


DELETE FROM Borrow
WHERE Member_ID IN (
    SELECT Member_ID
    FROM Member
    WHERE Name = 'Emily Miller'
);
DELETE FROM Member
WHERE Name = 'Emily Miller';



SELECT * FROM Borrow
WHERE Member_ID IN (
    SELECT Member_ID
    FROM Member
    WHERE Name = 'Emily Miller'
);

SELECT * FROM Member
WHERE Name = 'Emily Miller';

INSERT INTO Catalog (Name, Location)
VALUES ('E-Books', 'Online');

INSERT INTO Genre (Name, Description)
VALUES ('Mystery & Thriller', 'Genre of suspenseful and thrilling stories');

INSERT INTO Author (Name)
VALUES ('Lucas Luke');

SET @Material_ID = (SELECT MAX(Material_ID) + 1 FROM Material);
INSERT INTO Material (Material_ID, Title, Publication_Date)
VALUES (@Material_ID, 'New book', '2020-08-01');


SET @Authorship_ID = (SELECT MAX(Authorship_ID) + 1 FROM Authorship);
INSERT INTO Authorship (Authorship_ID, Material_ID)
VALUES (@Authorship_ID, @Material_ID);