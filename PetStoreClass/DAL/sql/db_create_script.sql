USE [PetStoreClass]
GO
/****** Object:  Table [dbo].[AnimalType]    Script Date: 3/23/2016 5:49:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AnimalType](
	[AnimalTypeCD] [varchar](2) NOT NULL,
	[AnimalName] [varchar](100) NOT NULL,
	[AnimalDescription] [varchar](3000) NOT NULL,
 CONSTRAINT [PK_AnimalType] PRIMARY KEY CLUSTERED 
(
	[AnimalTypeCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pet]    Script Date: 3/23/2016 5:49:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pet](
	[PetID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[PetName] [varchar](100) NOT NULL,
	[PetDescription] [varchar](3000) NOT NULL,
	[PetPrice] [numeric](5, 2) NOT NULL,
	[ListDT] [date] NOT NULL,
	[AnimalTypeCD] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Pet] PRIMARY KEY CLUSTERED 
(
	[PetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Pet]  WITH CHECK ADD  CONSTRAINT [FK_Pet_AnimalType] FOREIGN KEY([AnimalTypeCD])
REFERENCES [dbo].[AnimalType] ([AnimalTypeCD])
GO
ALTER TABLE [dbo].[Pet] CHECK CONSTRAINT [FK_Pet_AnimalType]
GO
