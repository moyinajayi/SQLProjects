-- Creating admin user
CREATE USER 'game_admin1'@'localhost' IDENTIFIED BY 'securepassword';

-- Grant privileges to the new Admin user
GRANT ALL PRIVILEGES ON GamingCompanyXD.* TO 'game_admin'@'localhost';

-- Revoke privileges from admin user
REVOKE INSERT ON GamingCompanyXD.Players FROM 'game_admin'@'localhost';
