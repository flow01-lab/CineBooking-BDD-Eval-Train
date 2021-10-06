_$ mysql.server start

_$ mysql -h localhost -u root -p

CREATE DATABASE CineBooking;
USE CineBooking;

CREATE TABLE Customers (
    Id CHAR(36) NOT NULL PRIMARY KEY,
    FirstName VARCHAR(25),
    LastName VARCHAR(25),
    DateBirth DATE,
    Email VARCHAR(50),
    Phone VARCHAR(25)
);

INSERT INTO Customers (
    Id, FirstName, LastName, DateBirth, Email, Phone
)
VALUES (
    UUID(),
    'John',
    'Doe',
    '1970-09-12',
    'jonh.doe@studi-universe.com',
    '0660385223'
),
(
    UUID(),
    'Sarah',
    'Conor',
    '1983-06-26',
    'sarah.conor@studi-universe.com',
    '0705329763'
),
(
    UUID(),
    'Martin',
    'Dupond',
    '1998-08-15',
    'dupond.martin@studi-universe.com',
    '0845278566'
);

CREATE TABLE Cinemas (
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(100),
    Adress VARCHAR(254),
    ZIPCode INT,
    Phone VARCHAR(25),
    Email VARCHAR(50)
);

INSERT INTO Cinemas (
    Name, City, Adress, ZIPCode, Phone, Email
)
VALUES (
    'Le Concorde',
    'Villeflight',
    '8 Rue Belair',
    87000,
    '0260385223',
    'contact@concorde.fr'
),
(
    'Le Manège',
    'Tours',
    '10 Rue de la Cavalerie',
    37000,
    '0460532976',
    'contact@lemanège-tours.fr'
),
(
    'Le Cihell',
    'Enfert',
    '12 Avenue du Purgatoire',
    88666,
    '0945278566',
    'contact@lecihell.com'
);

CREATE TABLE Movies(
    Id CHAR(36) NOT NULL PRIMARY KEY,
    Name VARCHAR(254),
    Duration INT,
    Director VARCHAR(100),
    ReleaseDate YEAR,
    Country VARCHAR(50)
);

INSERT INTO Movies(
    Id, Name, Duration, Director, ReleaseDate, Country
)
VALUES(
    UUID(),
    'Gunda',
    93,
    'Victor Kossakovsky',
    '2020',
    'Norvège/États-Unis'
),
(
    UUID(),
    'The Earth is Blue as an Orange',
    74,
    'Iryna Tsilyk',
    '2020',
    'Ukraine/Litunanie'
),
(
    UUID(),
    'STARGIRL',
    107,
    'Julia Hart',
    '2020',
    'États-Unis'

),
(
    UUID(),
    'ORLANDO',
    94,
    'Sally Potter',
    '1992',
    'Royaume-Unis'
),
(
    UUID(),
    'MY SALINGER YEAR',
    101,
    'Philippe Falardeau',
    '2020',
    'Irlande/Canada'
);

CREATE TABLE Sessions(
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    DateTime DATETIME,
    ProjectRoomId INT,
    MovieId INT
);

INSERT INTO Sessions (
    DateTime
)

VALUES(
    '2021-10-11 10:00'
),
(
    '2021-10-11 10:30'
),
(
    '2021-10-11 11:00'
),
(
    '2021-10-11 12:00'
),
(
    '2021-10-12 10:00'
),
(
    '2021-10-12 14:00'
),
(
    '2021-10-12 15:00'
),
(
    '2021-10-13 11:00'
),
(
    '2021-10-13 16:00'
),
(
    '2021-10-14 14:00'
);

CREATE TABLE ProjectRooms(
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Places INT,
    NbSessionAuth INT,
    CinemaId INT
);

INSERT INTO ProjectRooms (

)

VALUES(

);

CREATE TABLE Rates(
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(25),
    Price DECIMAL,
    Currency VARCHAR(10)
);

INSERT INTO Rates (
    Name, Price, Currency
)
VALUES(
    'Plein Tarif',
    9.20,
    '€'
),
(
    'Etudiant',
    7.60,
    '€'
),
(
    'Moins de 14 ans',
    5.90,
    '€'
);

CREATE TABLE OrderCustom
(
    Id CHAR(36) NOT NULL PRIMARY KEY,
    CustomerId CHAR(36),
    CinemaId INT,
    OrderDate DATETIME,
    MovieId CHAR(36),
    SessionId INT,
    RateId INT,
    Places INT,
    Cost INT
);

SELECT * FROM OrderCustom INNER JOIN Customers ON Customers.Id = OrderCustom.CustomerId;
SELECT * FROM OrderCustom INNER JOIN Cinemas ON Cinemas.Id = OrderCustom.CinemaId;
SELECT * FROM OrderCustom INNER JOIN Movies ON Movies.Id = OrderCustom.MovieId;
SELECT * FROM OrderCustom INNER JOIN Sessions ON Sessions.Id = OrderCustom.SessionId;
SELECT * FROM OrderCustom INNER JOIN Rates ON Rates.Id = OrderCustom.RateId;

SELECT * FROM Sessions INNER JOIN ProjectRooms ON ProjectRooms.Id = Sessions.ProjectRoomId;
SELECT * FROM ProjectRooms INNER JOIN Cinemas ON Cinemas.Id = ProjectRooms.CinemaId;
SELECT * FROM Sessions INNER JOIN Movies ON Movies.Id = Sessions.MovieId;

_$ mysqldump -u root -p CineBooking > CineBooking.sql





