CREATE DATABASE Warehouse;

USE Warehouse;


CREATE TABLE suppliers                 
(	                                     
	id int NOT NULL,  
	name varchar(25) NOT NULL,   
	phone varchar(25) DEFAULT 'Unknown',
    PRIMARY KEY (id)
    
);

INSERT INTO suppliers																			   
(id, name, phone)
VALUES
(1,'NailsCo',  '(093)1231212'),
(2,'HammersCo',  '(095)2313244'),
(3, 'BucketsCo', '(099)5467432'),
(4, 'FoilCo',  '(095)5456732');

CREATE TABLE goods                 
(	                                     
	id int auto_increment NOT NULL,  
	name varchar(25) NOT NULL,   
	items varchar(25) NOT NULL,
	quantity varchar(10)
    
);

INSERT INTO goods																			   
(id, name, items, quantity)
VALUES
(1,'nails pack', 'nails', '5'),
(2,'TopChop', 'hammers', '12'),
(3,'Lidad', 'buckets','35'),
(4,'Silver','foil','100');


USE Warehouse;

CREATE TABLE clients                 
(	                                     
	id int NOT NULL,  
	name varchar(25) NOT NULL,   
	age int NOT NULL,
	phone varchar(25) DEFAULT 'Unknown'
   
    
);

INSERT INTO clients																			   
(id, name, age, phone)
VALUES
(1,'Dan', 25, '(093)1231212'),
(2,'Mike', 18, '(095)2313244'),
(3, 'Alicia',32,'(099)5467432'),
(4, 'Henry',46,'(095)5456732'),
(5, 'Dylan',31,'(066)5465632');





