
CREATE DATABASE IF NOT EXISTS shipping;

USE shipping;

CREATE TABLE Ship (
    name VARCHAR(50) PRIMARY KEY,
    displacement DECIMAL(10,2) NOT NULL,
    captain VARCHAR(50) NOT NULL,
    crewCount INT NOT NULL,
    homePort VARCHAR(50) NOT NULL,
    buildYear YEAR NOT NULL
);

CREATE TABLE Port (
    name VARCHAR(50) PRIMARY KEY,
    city VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL
);

CREATE TABLE Container (
    containerID VARCHAR(50) PRIMARY KEY,
    height DECIMAL(10,2) NOT NULL,
    width DECIMAL(10,2) NOT NULL,
    length DECIMAL(10,2) NOT NULL,
    weight DECIMAL(10,2) NOT NULL,
    shipID VARCHAR(50),
    FOREIGN KEY (shipID) REFERENCES Ship(name)
);
