CREATE DATABASE airbnb_listings;
USE airbnb_listings;

CREATE TABLE airbnb (
    id INT PRIMARY KEY,
    city VARCHAR(255),
    country VARCHAR(255),
    no_of_rooms INT,
    year_listed INT
);

INSERT INTO airbnb (id, city, country, no_of_rooms, year_listed) 
VALUES (1, 'Paris', 'France', 5, 2021);

INSERT INTO airbnb (id, city, country, no_of_rooms, year_listed) 
VALUES (2, 'Tokyo', 'Japan', 2, 2022);

INSERT INTO airbnb (id, city, country, no_of_rooms, year_listed) 
VALUES (3, 'New York', 'USA', 3, 2023);

SELECT * FROM airbnb;

SELECT *
   FROM airbnb
   WHERE number_of_rooms >= 3;


   
