-- Insert data into Players
INSERT INTO Players (Username, Email, Country, DateJoined) VALUES
('Davido', 'davido20@gmail.com', '2023-01-01'),
('RusticMan', 'Ruster34@yahoo.com', '2024-02-15');

-- Insert data into Games
INSERT INTO Games (GameName, GamingStudio, ReleaseDate) VALUES
('Jackpot fever', 'HouseDallas' '2022-11-01'),
('Fire Rubies','NorthStudio' '2023-03-10');

-- Insert data into Scores
INSERT INTO Scores (PlayerID, GameID, Score, ScoreDate) VALUES
(1, 1, 1500, '2023-01-10'),
(1, 2, 2000, '2023-02-20'),
(2, 1, 1200, '2024-02-18');

-- Insert data into Purchases
INSERT INTO Purchases (PlayerID, GameID, PurchaseAmount, PurchaseDate) VALUES
(1, 1, 12.50, '2023-01-02'),
(1, 2, 13.40, '2023-02-16'),
(2, 1, 25.50 '2023-01-20');
