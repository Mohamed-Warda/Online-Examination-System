﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[Add_StudentGarde] @StuId INT, @CrsId INT, @grade INT

WITH ENCRYPTION
AS 
	BEGIN TRY
			INSERT INTO  Student_Course 
			VALUES (@StuId, @CrsId, @grade)
	END TRY
	BEGIN CATCH
			SELECT 'Error'
	END CATCH
GO