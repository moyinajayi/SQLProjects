-- Fallback tables (implemented as historical backup tables)
CREATE TABLE Players_Fallback AS SELECT * FROM Players;
CREATE TABLE Scores_Fallback AS SELECT * FROM Scores;

-- Permanent journals (implemented as audit tables)
CREATE TABLE Players_Journal (
    JournalID INT PRIMARY KEY AUTO_INCREMENT,
    Operation VARCHAR(50),
    PlayerID INT,
    Username VARCHAR(50),
    Email VARCHAR(100),
    Country VARCHAR (100)
    DateJoined DATE,
    OperationTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TRIGGER Players_Audit AFTER INSERT OR UPDATE OR DELETE ON Players
FOR EACH ROW
BEGIN
    INSERT INTO Players_Journal (Operation, PlayerID, Username, Email,Country, DateJoined) VALUES
    (CASE
        WHEN INSERTING THEN 'INSERT'
        WHEN UPDATING THEN 'UPDATE'
        WHEN DELETING THEN 'DELETE'
     END,
     OLD.PlayerID, OLD.Username, OLD.Email, OLD.Country, OLD.DateJoined);
END;
