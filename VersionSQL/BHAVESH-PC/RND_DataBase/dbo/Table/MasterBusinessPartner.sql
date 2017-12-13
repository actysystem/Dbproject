/****** Object:  Table [dbo].[MasterBusinessPartner]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MasterBusinessPartner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BusinessPartnerCode] [nvarchar](50) NOT NULL,
	[BusinessPartnerName] [nvarchar](80) NOT NULL,
	[BusinessPartnerShortName] [nvarchar](20) NULL,
	[Address1] [nvarchar](150) NOT NULL,
	[Address2] [nvarchar](150) NULL,
	[PostalCode] [varchar](10) NOT NULL,
	[TelephoneNo1] [varchar](20) NOT NULL,
	[TelephoneNo2] [varchar](20) NULL,
	[FaxNo] [varchar](20) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedUser] [nvarchar](80) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedUser] [nvarchar](80) NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Master_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_MasterBusinessPartner] UNIQUE NONCLUSTERED 
(
	[BusinessPartnerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MasterBusinessPartner] ADD  CONSTRAINT [DF__MasterBus__Creat__3E5D3103]  DEFAULT ('ADMIN') FOR [CreatedUser]
ALTER TABLE [dbo].[MasterBusinessPartner] ADD  CONSTRAINT [DF__MasterBus__Creat__3F51553C]  DEFAULT ('2013-05-15 15:08:13.100') FOR [CreatedDate]
ALTER TABLE [dbo].[MasterBusinessPartner] ADD  CONSTRAINT [DF__MasterBus__Modif__40457975]  DEFAULT ('ADMIN') FOR [ModifiedUser]
ALTER TABLE [dbo].[MasterBusinessPartner] ADD  CONSTRAINT [DF__MasterBus__Modif__41399DAE]  DEFAULT ('2013-05-15 15:08:13.100') FOR [ModifiedDate]
