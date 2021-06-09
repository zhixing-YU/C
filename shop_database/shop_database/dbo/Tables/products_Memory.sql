CREATE TABLE [dbo].[products_Memory] (
    [momory_pid] INT            IDENTITY (1, 1) NOT NULL,
    [廠商]         NVARCHAR (30)  NOT NULL,
    [產品名稱]       NVARCHAR (100) NOT NULL,
    [記憶體容量大小]    NVARCHAR (30)  NOT NULL,
    [價格]         INT            NOT NULL,
    [上架時間]       DATETIME       CONSTRAINT [DF_products_Memory_上架時間] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_products_Memory] PRIMARY KEY CLUSTERED ([momory_pid] ASC),
    CONSTRAINT [IX_products_Memory] UNIQUE NONCLUSTERED ([產品名稱] ASC)
);

