CREATE DATABASE user;
use user@localhost;
CREATE TABLE user(
  uid int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  uname varchar(20) NOT NULL,
  email varchar(30) NOT NULL,
  password varchar(25) NOT NULL,
  admin int(1) NOT NULL
  );