CREATE TABLE [dbo].[products_CPU] (
    [cpu_pid] INT            IDENTITY (1, 1) NOT NULL,
    [廠商]      NVARCHAR (30)  NOT NULL,
    [產品名稱]    NVARCHAR (100) NOT NULL,
    [CPU腳位]   NVARCHAR (30)  NULL,
    [價格]      INT            NOT NULL,
    [上架時間]    DATETIME       CONSTRAINT [DF_CPU_products_上架時間] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_CPU_products] PRIMARY KEY CLUSTERED ([cpu_pid] ASC),
    CONSTRAINT [IX_products_CPU_name] UNIQUE NONCLUSTERED ([產品名稱] ASC)
);

