CREATE DATABASE tstore;

USE tstore;

SHOW TABLES;

CREATE TABLE book(seq BIGINT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255) NOT NULL,
creator VARCHAR(255) NOT NULL,
publisher VARCHAR(255) NOT NULL,
pubDate DATE);

DESC book;



