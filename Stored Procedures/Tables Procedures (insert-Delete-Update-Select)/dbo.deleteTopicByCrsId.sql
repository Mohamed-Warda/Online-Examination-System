﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[deleteTopicByCrsId] @crsId INT
WITH ENCRYPTION
AS
BEGIN TRY
	IF EXISTS(SELECT crs_id FROM Topic t WHERE @crsId=T.Crs_id)
		BEGIN
			DELETE FROM Topic WHERE @crsId=Crs_id
		END
	ELSE
		SELECT 'Topic does not exist'
END TRY
BEGIN CATCH
	SELECT 'error'
END CATCH
GO