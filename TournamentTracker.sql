--CREATE TABLE
CREATE TABLE Tournaments.dbo.[Prizes] (
	id int NOT NULL PRIMARY KEY,
	PlaceNumber int NOT NULL,
	PlaceName nvarchar(50) NOT NULL,
	PrizeAmount money NOT NULL,
	PrizePercentage float NOT NULL
);


--CREATE PROCEDURE
CREATE PROCEDURE dbo.spPrizes_Insert
	@PlaceNumber int,
	@PlaceName nvarchar(50),
	@PrizeAmount money,
	@PrizePercentage float,
	@id int = 0 output
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO dbo.Prizes (PlaceNumber, PlaceName, PrizeAmount, PrizePercentage)
	VALUES (@PlaceNumber, @PlaceName, @PrizeAmount, @PrizePercentage);

	SELECT @id = SCOPE_IDENTITY();

END


--ALTER PROCEDURE
USE [Tournaments]
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

ALTER PROCEDURE [dbo].[spPrizes_Insert]
	@PlaceNumber int,
	@PlaceName nvarchar(50),
	@PrizeAmount money,
	@PrizePercentage float,
	@id int = 0 output
AS
BEGIN 
	SET NOCOUNT ON;

	INSERT INTO dbo.Prizes (PlaceNumber, PlaceName, PrizeAmount, PrizePercentage)
	VALUES (@PlaceNumber, @PlaceName, @PrizeAmount, @PrizePercentage)
	
	SELECT @id = SCOPE_IDENTITY();

END

---------------------------------------------------------------------------------------------------

SELECT * FROM Prizes p ;

