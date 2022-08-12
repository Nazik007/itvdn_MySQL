
CREATE DATABASE MyDB;


USE MyDB;

CREATE TABLE employee

     (id INT AUTO_INCREMENT NOT NULL,
     fname VARCHAR (30) NOT NULL,
     lname VARCHAR (30) NOT NULL,
     phone INT (30) NOT NULL,
     PRIMARY KEY (id)
     
     );
     
 
 
 
 USE MyDB;
 
 CREATE TABLE fininfo
 
       ( id INT AUTO_INCREMENT NOT NULL,
		 position VARCHAR (20) NOT NULL,
         salary INT (20) NOT NULL,
         PRIMARY KEY (id)
         );
         
 
 
 USE MyDB;
 
 CREATE TABLE personal
 
    (id INT AUTO_INCREMENT NOT NULL,
    martialstatus VARCHAR (20) NOT NULL,
    bithday VARCHAR (20) NOT NULL,
    address VARCHAR (60) NOT NULL,
    PRIMARY KEY (id)
    );
    
    
 USE    MyDB;
 
 INSERT INTO employee 
 (fname, lname, phone)
 VALUES 
 ('Petro', 'Zadorozhnii', 0993246028);
 
 INSERT INTO employee
  (fname, lname, phone)
 VALUES 
 ('Ivan', 'Dobin', 09934567696);
 
  INSERT INTO employee
  (fname, lname, phone)
 VALUES 
 ('Mark', 'Valin', 09534567696);
 
  INSERT INTO employee
  (fname, lname, phone)
 VALUES 
 ('Tom', 'Halin', 09534567696);
 
  INSERT INTO employee
  (fname, lname, phone)
 VALUES 
 ('Sam', 'Tudor', 09534668696);
 
 
 USE MyDB;
 
 
 INSERT INTO fininfo
 (position, salary)
 VALUES
 ('sale manager', 12000);
 
 
 INSERT INTO fininfo
 (position, salary)
 VALUES
 ('cleaner', 6000);
 
 INSERT INTO fininfo
 (position, salary)
 VALUES
 ('project manager', 25000);
 
 INSERT INTO fininfo
 (position, salary)
 VALUES
 ('brand specialist', 9000);
 
 INSERT INTO fininfo
 (position, salary)
 VALUES
 ('support manager', 12500);
 
 
  USE MyDB;
  
 INSERT INTO personal 
 (martialstatus, bithday, address)
 VALUES 
 ('married', '23/07', 'B.Zad,Street/27'); 
 
  INSERT INTO personal 
 (martialstatus, bithday, address)
 VALUES 
 ('married', '11/06', 'Good,Street 56/65');
 
  INSERT INTO personal 
 (martialstatus, bithday, address)
 VALUES 
 ('not married', '03/08', 'Vlasova ,Street 76/45');
 
  INSERT INTO personal 
 (martialstatus, bithday, address)
 VALUES 
 ('not married', '4/06', 'Valova,Street 56');
 
  INSERT INTO personal 
 (martialstatus, bithday, address)
 VALUES 
 ('married', '04/06', 'Bigda,Street 56');
 
 
 
 
 
 



    
    


