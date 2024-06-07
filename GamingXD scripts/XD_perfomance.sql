-- Index creation for performance
CREATE INDEX idx_player_email ON Players(Email);
CREATE INDEX idx_game_release ON Games(ReleaseDate);

-- Query using indexed columns
SELECT Players.Username, Players.Email, Games.GameName, Purchases.PurchaseAmount
FROM Players
JOIN Purchases ON Players.PlayerID = Purchases.PlayerID
JOIN Games ON Purchases.GameID = Games.GameID
WHERE Games.ReleaseDate > '2023-01-01'
ORDER BY Players.Email;

-- Partitioned tables for (e.g for Scores)
ALTER TABLE Scores PARTITION BY RANGE (YEAR(ScoreDate)) (
    PARTITION p0 VALUES LESS THAN (2023),
    PARTITION p1 VALUES LESS THAN (2024),
    PARTITION p2 VALUES LESS THAN (2025)
);
