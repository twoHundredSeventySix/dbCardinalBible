CREATE TABLE [dbo].[kjv] (
    [id]        INT            NOT NULL,
    [bookId]    INT            NOT NULL,
    [chapterId] INT            NOT NULL,
    [verseId]   INT            NOT NULL,
    [verse]     VARCHAR (2000) NOT NULL,
    CONSTRAINT [PK_kjv] PRIMARY KEY CLUSTERED ([id] ASC)
);

