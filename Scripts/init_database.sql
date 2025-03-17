/*
Create Databse and add schemas
===================
Purpose:
  Creates DB, if it already excists it drops and recreates the database. Creates three schemas: Bronze, Silver and Gold.
Warning: Will drop the entire database - ensure data is backed up before running.
*/

use master;
go

--
If exists (select 1 from sys.databases where name = 'DataWareHouse')
Begin
  Alter Database DataWareHouse set SINGLE_USER WITH ROLLBNACJ IMMEDIATE;
  Drop DATABASE DataWareHouse;
End;
go

------
create database DataWareHouse;
go

Use DataWareHouse;
go
  
Create SCHEMA Bronze;
go
  
Create SCHEMA Silver;
go
Create SCHEMA Gold;
