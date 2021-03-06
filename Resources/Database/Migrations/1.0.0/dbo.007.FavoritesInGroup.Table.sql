USE [{DATABASE_NAME}]
GO
/****** Object:  Table [dbo].[FavoritesInGroup]    Script Date: 12/10/2012 22:16:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavoritesInGroup](
	[FavoriteId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
 CONSTRAINT [PK_FavoritesInGroup] PRIMARY KEY CLUSTERED 
(
	[FavoriteId] ASC,
	[GroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FavoritesInGroup]  WITH CHECK ADD  CONSTRAINT [FK_FavoritesInGroup_Favorites] FOREIGN KEY([FavoriteId])
REFERENCES [dbo].[Favorites] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FavoritesInGroup] CHECK CONSTRAINT [FK_FavoritesInGroup_Favorites]
GO
ALTER TABLE [dbo].[FavoritesInGroup]  WITH CHECK ADD  CONSTRAINT [FK_FavoritesInGroup_Groups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FavoritesInGroup] CHECK CONSTRAINT [FK_FavoritesInGroup_Groups]
GO
