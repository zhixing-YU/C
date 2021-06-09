CREATE TABLE [dbo].[products_VGA] (
    [vga_pid] INT            IDENTITY (1, 1) NOT NULL,
    [廠商]      NVARCHAR (30)  NOT NULL,
    [顯示卡晶片廠]  NVARCHAR (30)  NOT NULL,
    [顯示卡晶片系列] NVARCHAR (30)  NOT NULL,
    [產品名稱]    NVARCHAR (100) NOT NULL,
    [價格]      INT            NOT NULL,
    [上架時間]    DATETIME       CONSTRAINT [DF_products_VGA_上架時間] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_products_VGA] PRIMARY KEY CLUSTERED ([vga_pid] ASC),
    CONSTRAINT [IX_products_VGA_name] UNIQUE NONCLUSTERED ([產品名稱] ASC)
);

