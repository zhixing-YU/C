CREATE TABLE [dbo].[products_MDB] (
    [mother_broad_pid] INT            IDENTITY (1, 1) NOT NULL,
    [廠商]               NVARCHAR (30)  NOT NULL,
    [產品名稱]             NVARCHAR (100) NOT NULL,
    [CPU插槽腳位]          NVARCHAR (30)  NOT NULL,
    [價格]               INT            NOT NULL,
    [上架時間]             DATETIME       CONSTRAINT [DF_products_MDB_上架時間] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_MDB_products] PRIMARY KEY CLUSTERED ([mother_broad_pid] ASC),
    CONSTRAINT [IX_products_MDB_name] UNIQUE NONCLUSTERED ([產品名稱] ASC)
);

