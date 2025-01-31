﻿CREATE TABLE [dbo].[Question_Choice] (
  [Qst_id] [int] NOT NULL,
  [Choice] [varchar](150) NOT NULL,
  [choiceID] [varchar](2) NULL,
  CONSTRAINT [PK_Question_Choice_1] PRIMARY KEY CLUSTERED ([Qst_id], [Choice])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Question_Choice]
  ADD CONSTRAINT [FK_Question_Choice_Questions] FOREIGN KEY ([Qst_id]) REFERENCES [dbo].[Questions] ([Qst_id])
GO