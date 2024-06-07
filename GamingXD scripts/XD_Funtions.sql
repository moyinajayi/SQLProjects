-- function to get the total number of players
CREATE FUNCTION GetTotalPlayers() RETURNS INT
BEGIN
    DECLARE totalPlayers INT;
    SELECT COUNT(*) INTO totalPlayers FROM Players;
    RETURN totalPlayers;
END;

-- Using JOIN operations -- Inner join to get players' scores along with their usernames
SELECT Players.Username, Games.GameName, Scores.Score, Scores.ScoreDate
FROM Scores
INNER JOIN Players ON Scores.PlayerID = Players.PlayerID
INNER JOIN Games ON Scores.GameID = Games.GameID;

-- Left join to get all players and their purchase details 
SELECT Players.Username, Games.GameName, Purchases.PurchaseDate, Purchases.PurchaseAmount
FROM Players
LEFT JOIN Purchases ON Players.PlayerID = Purchases.PlayerID
LEFT JOIN Games ON Purchases.GameID = Games.GameID;

-- Full join to get all scores, including those without corresponding player with UNion
SELECT Players.Username, Games.GameName, Scores.Score, Scores.ScoreDate
FROM Scores
LEFT JOIN Players ON Scores.PlayerID = Players.PlayerID
LEFT JOIN Games ON Scores.GameID = Games.GameID
UNION
SELECT Players.Username, Games.GameName, Scores.Score, Scores.ScoreDate
FROM Scores
RIGHT JOIN Players ON Scores.PlayerID = Players.PlayerID
RIGHT JOIN Games ON Scores.GameID = Games.GameID;
