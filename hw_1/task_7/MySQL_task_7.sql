CREATE DATABASE CarShop;

USE CarShop;

  
  CREATE TABLE cars
(
    car_id int auto_increment,
    mark Varchar(20) NOT NULL,
    model Varchar(20) NOT NULL,
    engine FLOAT NOT NULL,
    price int NOT NULL,
    max_speed int NOT NULL,
    primary key(car_id)
);
  
  INSERT INTO cars 
  (mark, model, engine, price, max_speed )
  VALUES 
  ('Audi', 'A5', 3.0, 35000, 250);
  
  
  INSERT INTO cars 
  (mark, model, engine, price, max_speed )
  VALUES 
  ('Audi', 'Q5', 3.5, 35000, 250);