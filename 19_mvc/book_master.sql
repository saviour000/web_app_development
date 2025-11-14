CREATE DATABASE book_master;
USE book_master;

CREATE TABLE book_info (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    book_name VARCHAR(100),
    author VARCHAR(100),
    price DECIMAL(10,2)
);