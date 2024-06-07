-- Start a transaction
START TRANSACTION;

-- Update player's email and lock the row
UPDATE Players SET Email = 'newemail@example.com' WHERE PlayerID = 1;

-- Another update to be included in the transaction
UPDATE Scores SET Score = 1600 WHERE PlayerID = 1 AND GameID = 1;

-- Commit the transaction
COMMIT;

-- Rollback example
START TRANSACTION;

-- Perform some operations
UPDATE Players SET Email = 'finister@yahoo.com' WHERE PlayerID = 2;

-- Rollback the transaction
ROLLBACK;
