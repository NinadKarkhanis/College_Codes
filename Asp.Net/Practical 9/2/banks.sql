//Database1.mdf
CREATE TABLE [dbo].[banks]
(
	[Id] INT NOT NULL  IDENTITY, 
    [Bank] NVARCHAR(50) NULL, 
    [Customer] NVARCHAR(50) NULL, 
    [AccNo] INT NULL, 
    [BranchName] NVARCHAR(50) NULL, 
    [City] NVARCHAR(50) NULL, 
    [State] NVARCHAR(50) NULL, 
    [Zip] INT NULL
)
