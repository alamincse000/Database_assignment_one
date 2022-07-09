

CREATE DATABASE class_one_assignment;
USE class_one_assignment;
DROP TABLE customers

CREATE TABLE customers(
id INT AUTO_INCREMENT,
First_name VARCHAR(20)NOT NULL,
Last_name VARCHAR(20)NOT NULL,
date_Of_Birth DATE NOT NULL,
Phone VARCHAR(15),
Address VARCHAR(20)NOT NULL,
City VARCHAR(20)NOT NULL,
State VARCHAR(15)NOT NULL,
Points VARCHAR(10)NOT NULL,
PRIMARY KEY(id)
);

SELECT * FROM customers;
INSERT INTO customers(First_name, Last_name, date_Of_Birth, Phone, Address, City, State, Points)VALUES
(' Babara','MacCaffrey',' 1986-03-28','781-932-9754','0 Sage Terrace',' Waltham','MA','2273'),
(' Ines','Brushfield','1986-04-13','804-427-9456','14187 Commercial Trail',' Hampton','VA','947'),
(' Freddi',' Boagey','1985-02-07','719-724-7869','251 Springs Junction','Colorado Springs',' CO',' 2967'),
('Ambur',' Roseburgh',' 1974-04-14','407-231-8017','30 Arapahoe Terrace','Orlando','FL',' 457'),
('Clemmie',' Betchley','1973-11-07','',' 5 Spohn Circle','Arlington',' TX','3675');

TRUNCATE TABLE customers;



4. SHOW only 2 members whose points are more THAN 1000.
 SELECT * FROM customers WHERE Points>1000 LIMIT 2; 

 
 5. Find the customers whose age IS IN 1980 TO 1990 OR points LESS THAN 1000.
 SELECT * FROM customers WHERE Date_of_birth BETWEEN '1980-01-01' AND '1990-12-30';


6. ORDER the customers BY points IN ascending AND descending order.
SELECT * FROM customers ORDER BY Points ASC;

AND 

SELECT * FROM customers ORDER BY Points DESC;

7.Find the customer whose NAME CONTAINS 'burgh' USING LIKE AND regexp.

SELECT * FROM customers WHERE LOWER (CONCAT (First_Name, ' ', Last_name)) LIKE '%burgh';

AND 

SELECT * FROM customers WHERE LOWER (CONCAT (First_Name, ' ', Last_name)) REGEXP 'burgh';



8. Find the customer who does NOT have phone number.

SELECT * FROM customers WHERE Phone IS NULL;

9.Change the 'Date of Birth' COLUMN NAME INTO 'dob'
ALTER TABLE customers CHANGE COLUMN Date_of_Birth dob DATE;

10. Find the MAX POINT holder customer

SELECT * FROM customers WHERE Points =(SELECT MAX(Points) FROM customers);

11. EXECUTE a QUERY FOR the following scenario.
IF customers have points LESS THAN 1000, they are bronze member.
IF customers have points more THAN 1000 AND LESS THAN 2000, they are silver member.
IF customers have points more THAN 2000 AND LESS THAN 3000, they are gold member.
IF customers have points more THAN 3000, they are platinum member.


SELECT  Points,
CASE
	WHEN Points<1000 THEN 'They are bronze member.'
	WHEN Points >1000 AND Points <2000 THEN 'They are silver member.'
	WHEN Points >2000 AND Points<3000 THEN 'They are gold member.'
	WHEN Points >3000 THEN 'They are platinum member.'
	ELSE 'They are not valid members.'
END AS Points_measurement FROM customers;



