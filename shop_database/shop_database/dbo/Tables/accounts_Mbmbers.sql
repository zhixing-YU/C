CREATE TABLE [dbo].[accounts_Mbmbers] (
    [mbmbers_id] INT           IDENTITY (1, 1) NOT NULL,
    [會員帳號]       VARCHAR (20)  NOT NULL,
    [賣家權限]       INT           CONSTRAINT [DF_mbmbers_賣家權限] DEFAULT ((0)) NOT NULL,
    [帳號啟動]       INT           CONSTRAINT [DF_mbmbers_帳號啟動] DEFAULT ((1)) NOT NULL,
    [密碼]         VARCHAR (20)  NOT NULL,
    [會員姓名]       NVARCHAR (50) NOT NULL,
    [連絡電話]       VARCHAR (20)  NOT NULL,
    [會員地址]       NVARCHAR (50) NOT NULL,
    [郵件地址]       NVARCHAR (50) NOT NULL,
    [註冊時間]       DATETIME      CONSTRAINT [DF_mbmbers_註冊時間] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_mbmbers] PRIMARY KEY CLUSTERED ([mbmbers_id] ASC),
    CONSTRAINT [IX_email] UNIQUE NONCLUSTERED ([郵件地址] ASC),
    CONSTRAINT [IX_mbmbers_mbmber_account] UNIQUE NONCLUSTERED ([會員帳號] ASC)
);

