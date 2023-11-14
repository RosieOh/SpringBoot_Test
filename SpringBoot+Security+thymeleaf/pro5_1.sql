CREATE DATABASE tstore;

USE tstore;

SHOW TABLES;

CREATE TABLE book(seq BIGINT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255) NOT NULL,
creator VARCHAR(255) NOT NULL,
publisher VARCHAR(255) NOT NULL,
pubDate DATE);

DESC book;

SELECT * FROM book;

ALTER TABLE book ADD COLUMN seller VARCHAR(50),
 ADD COLUMN amount INT DEFAULT 1,
 ADD COLUMN price INT DEFAULT 1000, 
 ADD COLUMN oriPrice INT, 
 ADD COLUMN viewCnt INT DEFAULT 0;
 ADD COLUMN states VARCHAR(50) DEFAULT 'SALES', 
 ADD COLUMN img VARCHAR(255) DEFAULT '/images/no_img.png';


CREATE TABLE item(id BIGINT AUTO_INCREMENT PRIMARY KEY,
itemName VARCHAR(255) NOT NULL,
price INT DEFAULT 1000,
quantity INT DEFAULT 1);

DESC item;

SELECT * FROM item;


CREATE TABLE user(id BIGINT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(50) NOT NULL,
name VARCHAR(100) NOT NULL,
password VARCHAR(300) NOT NULL,
tel VARCHAR(20),
email VARCHAR(200),
regDate DATETIME DEFAULT CURRENT_TIMESTAMP(),
UNIQUE KEY uk_name(userId,email)
); 
CREATE table role(id INT AUTO_INCREMENT PRIMARY KEY,
roleName VARCHAR(20));

INSERT INTO ROLE VALUES (DEFAULT, 'ADMIN');
INSERT INTO ROLE VALUES (DEFAULT, 'TEACHER');
INSERT INTO ROLE VALUES (DEFAULT, 'MANAGER');
INSERT INTO ROLE VALUES (DEFAULT, 'STAFF');
INSERT INTO ROLE VALUES (DEFAULT, 'USER');

CREATE TABLE userRole(userId BIGINT, roleId INT);

SHOW TABLES;

SELECT * FROM ROLE;

SELECT * FROM USER;

SELECT * FROM userrole;

SELECT a.id, a.username, b.roleId FROM USER a INNER JOIN userrole b ON a.id=b.userId WHERE a.id=1;

UPDATE userrole SET roleId=1 WHERE userId=1;