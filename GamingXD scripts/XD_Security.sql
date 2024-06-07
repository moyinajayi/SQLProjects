-- Create roles and assign privileges
CREATE ROLE read_access;
CREATE ROLE write_access;

-- Grant specific privileges to roles
GRANT SELECT ON GamingCompanyXD.* TO read_access;
GRANT INSERT, UPDATE, DELETE ON GamingCompanyXD.* TO write_access;

-- Assign roles to users
GRANT read_access TO 'game_admin'@'localhost';
GRANT write_access TO 'game_admin'@'localhost';

-- Revoke roles from users
REVOKE read_access FROM 'game_admin'@'localhost';
REVOKE write_access FROM 'game_admin'@'localhost';
