CREATE TABLE Investors (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE Companies (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE Users (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    password VARCHAR(255)
);