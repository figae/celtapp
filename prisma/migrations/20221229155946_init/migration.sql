BEGIN TRY

BEGIN TRAN;

-- CreateTable
CREATE TABLE [dbo].[Caracter] (
    [id] INT NOT NULL IDENTITY(1,1),
    [name] NVARCHAR(1000) NOT NULL,
    CONSTRAINT [Caracter_pkey] PRIMARY KEY CLUSTERED ([id])
);

COMMIT TRAN;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN;
END;
THROW

END CATCH
