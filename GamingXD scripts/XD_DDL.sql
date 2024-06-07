-- Create database
CREATE DATABASE GamingCompanyXD;

-- Use the database
USE GamingCompanyXD;

-- Create tables
CREATE TABLE Players (
    PlayerID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(750) UNIQUE NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Country VARCHAR(100) NOT NULL
    DateJoined DATE NOT NULL
);

CREATE TABLE Games (
    GameID INT PRIMARY KEY AUTO_INCREMENT,
    GameName VARCHAR(100) NOT NULL,
    ReleaseDate DATE NOT NULL
    GamingStudio VARCHAR(100) NOT NULL
);

CREATE TABLE Scores (
    ScoreID INT PRIMARY KEY AUTO_INCREMENT,
    PlayerID INT,
    GameID INT,
    Score INT NOT NULL,
    ScoreDate DATE NOT NULL,
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID),
    FOREIGN KEY (GameID) REFERENCES Games(GameID)
);

CREATE TABLE Purchases (
    PurchaseID INT PRIMARY KEY AUTO_INCREMENT,
    PlayerID INT,
    GameID INT,
    PurchaseDate DATE NOT NULL,
    PurchaseAmount FLOAT NOT NULL
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID),
    FOREIGN KEY (GameID) REFERENCES Games(GameID)
);