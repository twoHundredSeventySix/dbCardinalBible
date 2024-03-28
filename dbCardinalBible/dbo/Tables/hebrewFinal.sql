CREATE TABLE [dbo].[hebrewFinal] (
    [id]          INT          NOT NULL,
    [name]        VARCHAR (50) NOT NULL,
    [letter]      NVARCHAR (1) NOT NULL,
    [finalLetter] NVARCHAR (1) NOT NULL,
    CONSTRAINT [PK_hebrewFinal] PRIMARY KEY CLUSTERED ([id] ASC)
);

