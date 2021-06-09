CREATE TABLE [dbo].[Orders] (
    [order_number] INT             IDENTITY (1, 1) NOT NULL,
    [mbmber_id]    INT             NOT NULL,
    [購買清單]         NVARCHAR (1000) NOT NULL,
    [訂單狀態]         NVARCHAR (50)   NOT NULL,
    [結算金額]         INT             NOT NULL,
    [訂單送出日期]       DATETIME        CONSTRAINT [DF_Orders_summit_time] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([order_number] ASC),
    CONSTRAINT [FK_Orders_accounts_Mbmbers] FOREIGN KEY ([mbmber_id]) REFERENCES [dbo].[accounts_Mbmbers] ([mbmbers_id])
);

