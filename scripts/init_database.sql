/* 
=============================================================================
Create Database and schemas
=============================================================================
Script Purpose:
  This Script creates a new database named 'Datawarehouse' after checking if it already exists.
  If the database exists, it dropped and recreated. Additionaly, the script sets up three schemas within the database: 'Bronze', 'Silver', 'Gold'.

WARNING:
  Running this script will drop the entire 'Datawarehouse' database if it exists.
  All data in the database will be permanently deleted. Proceed with caution and ensure you have proper backups before running this script.
*/

USE master;
Go

-----Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'Datawarehouse')
BEGIN
    ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Datawarehouse;
END;
GO

-----Create the 'Datawarehouse' database
CREATE DATABASE Datawarehouse;
GO

USE Datawarehouse;
GO

-----Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
