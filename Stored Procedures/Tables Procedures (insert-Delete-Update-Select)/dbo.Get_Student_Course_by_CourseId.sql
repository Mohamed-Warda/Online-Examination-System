﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[Get_Student_Course_by_CourseId] @id INT 
WITH ENCRYPTION
AS 
	BEGIN TRY
			SELECT * FROM Student_Course sc 
			WHERE sc.Crs_id = @id
	END TRY

	BEGIN CATCH
			SELECT 'Error'
	END CATCH
GO