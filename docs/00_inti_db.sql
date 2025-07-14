/*
------------------------------------------------------------
File: 01_create_database.sql
Purpose:
  This script creates the main Data Warehouse database named "DataWarehouse".
  It also sets up a multi-layered schema structure following the typical 
  Data Lakehouse pattern:
    - BRONZE: Raw data layer
    - SILVER: Cleaned and transformed layer
    - GOLD: Final presentation layer for reporting and analytics

Usage:
  Execute this script in your PostgreSQL environment.

WARNING:
  ⚠️ This script includes a DROP DATABASE command (commented).
  Uncommenting it will permanently delete the existing "DataWarehouse" database.
  Use with caution — only drop the database if you are sure you want to recreate it!
------------------------------------------------------------
*/

-- DROP DATABASE IF EXISTS "DataWarehouse";

CREATE DATABASE "DataWarehouse"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- Switch to the new database
\c "DataWarehouse";

-- Create schemas for the layered architecture
CREATE SCHEMA BRONZE;
CREATE SCHEMA SILVER;
CREATE SCHEMA GOLD;
