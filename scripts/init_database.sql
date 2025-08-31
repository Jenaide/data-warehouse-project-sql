/* 
Create Database and Schemas
---------------------------------------------------------------------------------------
Scripts Purpose:
  This script creates a new database name 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three 
  schemas with in the database: 'bronze', 'silver', 'gold'.

Warning:
  Runnings this script will drop the entire 'DataWarehouse' database if it exists.
  All the data in the database will be permanetly deleted. Proceed with caution and
  ensure you have properly backed up before running this script.
*/

USE master;
GO

-- Drop and Recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.database WHERE NAME = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO
  
USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
