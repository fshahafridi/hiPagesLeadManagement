USE [HiPages]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 20/05/2020 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[parent_category_id] [int] NOT NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobs]    Script Date: 20/05/2020 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[status] [varchar](50) NOT NULL,
	[suburb_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[contact_name] [varchar](255) NOT NULL,
	[contact_phone] [varchar](255) NOT NULL,
	[contact_email] [varchar](255) NOT NULL,
	[price] [int] NOT NULL,
	[description] [text] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_jobs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[suburbs]    Script Date: 20/05/2020 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[suburbs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[postcode] [varchar](4) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[categories] ON 
GO
INSERT [dbo].[categories] ([Id], [Name], [parent_category_id]) VALUES (1, N'Plumbing', 0)
GO
INSERT [dbo].[categories] ([Id], [Name], [parent_category_id]) VALUES (2, N'Electrical', 0)
GO
INSERT [dbo].[categories] ([Id], [Name], [parent_category_id]) VALUES (3, N'Carpentry', 0)
GO
INSERT [dbo].[categories] ([Id], [Name], [parent_category_id]) VALUES (4, N'Handyman', 0)
GO
INSERT [dbo].[categories] ([Id], [Name], [parent_category_id]) VALUES (5, N'Building', 0)
GO
INSERT [dbo].[categories] ([Id], [Name], [parent_category_id]) VALUES (6, N'Bathroom Renovation', 5)
GO
SET IDENTITY_INSERT [dbo].[categories] OFF
GO
SET IDENTITY_INSERT [dbo].[jobs] ON 
GO
INSERT [dbo].[jobs] ([Id], [status], [suburb_id], [category_id], [contact_name], [contact_phone], [contact_email], [price], [description], [created_at], [updated_at]) VALUES (1, N'new', 1, 1, N'Luke Skywalker', N'0412345678', N'luke@mailinator.com', 40500, N'Integer aliquam pulvinar odio et convallis. Integer id tristique ex. Aenean scelerisque massa vel est sollicitudin vulputate. Suspendisse quis ex eu ligula elementum suscipit nec a est. Aliquam a gravida diam. Donec placerat magna posuere massa maximus vehicula. Cras nisl ipsum, fermentum nec odio in, ultricies dapibus risus. Vivamus neque.', CAST(N'2020-05-19T01:33:53.897' AS DateTime), CAST(N'2020-05-20T08:41:27.177' AS DateTime))
GO
INSERT [dbo].[jobs] ([Id], [status], [suburb_id], [category_id], [contact_name], [contact_phone], [contact_email], [price], [description], [created_at], [updated_at]) VALUES (2, N'accepted', 2, 2, N'Darth Vader', N'0422223333', N'darth@mailinator.com', 30, N'Praesent elit dui, blandit eget nisl sed, ornare pharetra urna. In cursus auctor tellus. Quisque ligula metus, viverra nec nibh ut, sagittis luctus tellus. Nulla egestas nibh ut diam vehicula, ut auctor lectus pharetra. Aliquam condimentum, erat eget vehicula eleifend, nulla risus consequat augue, quis convallis mi diam et dui.', CAST(N'2020-05-19T01:33:53.897' AS DateTime), CAST(N'2020-05-20T18:25:43.823' AS DateTime))
GO
INSERT [dbo].[jobs] ([Id], [status], [suburb_id], [category_id], [contact_name], [contact_phone], [contact_email], [price], [description], [created_at], [updated_at]) VALUES (3, N'new', 3, 3, N'Han Solo', N'0498765432', N'han@mailinator.com', 45, N'Aliquam posuere est sit amet libero egestas tempus. Donec ut efficitur sapien. Sed molestie nec lacus malesuada suscipit. Aliquam suscipit nibh at posuere tempor. Etiam a sollicitudin felis. In et enim leo. Morbi vel imperdiet purus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam posuere auctor elit, id venenatis.', CAST(N'2020-05-19T01:33:53.897' AS DateTime), CAST(N'2020-05-20T08:35:53.773' AS DateTime))
GO
INSERT [dbo].[jobs] ([Id], [status], [suburb_id], [category_id], [contact_name], [contact_phone], [contact_email], [price], [description], [created_at], [updated_at]) VALUES (4, N'new', 4, 4, N'Kylo Ren', N'0488770066', N'kylo@mailinator.com', 15, N'Proin semper consectetur mauris id commodo. In accumsan est ligula, id posuere libero placerat ac. Nunc non volutpat sem. Mauris gravida dictum eleifend. Praesent quis mattis arcu, rutrum sagittis diam. Nullam tempus sagittis diam, vel viverra nunc ultricies non. Sed at orci sem. Phasellus eget arcu hendrerit, congue metus ut, mollis tellus. Quisque gravida metus ut libero porta, sit amet rutrum odio porta. Fusce interdum est sed quam venenatis dictum. Integer ultrices est in odio semper dictum. Proin nec urna vel quam finibus maximus.	Sed accumsan urna vitae libero luctus volutpat. Nulla eu sodales enim, vitae blandit ligula. Suspendisse at magna pellentesque, rhoncus orci quis, consequat diam. Donec pulvinar accumsan erat, quis hendrerit est ultricies vel. Vivamus felis justo, vulputate non urna sed, finibus semper ipsum. Cras mattis, est vel posuere mattis, turpis augue elementum massa, vitae accumsan nibh nisl nec lectus. Maecenas porta sagittis erat at consequat. Suspendisse fermentum rutrum bibendum. Donec tempor mollis massa vel egestas.Morbi rutrum felis lacinia eros tincidunt scelerisque. Morbi aliquam porttitor sapien. Phasellus eu odio ac neque faucibus suscipit in at lectus. Maecenas et blandit arcu. Nullam sed sem neque. Nulla sit amet tristique nisl. Ut et pretium velit. Fusce consequat tincidunt fringilla. Nunc gravida libero sit amet augue viverra, a imperdiet odio dictum. Sed iaculis, metus vel rutrum convallis, quam ex commodo nibh, eget ultrices nisi eros eu massa. Ut iaculis maximus ligula, sed efficitur mauris bibendum sagittis. Curabitur et dolor mi. Proin lorem urna, porttitor quis lacus pharetra, ornare porta nulla. Sed ultricies feugiat nibh, et semper tellus aliquet sit amet. Cras faucibus scelerisque nisi, at vestibulum massa pharetra et', CAST(N'2020-05-19T01:33:53.897' AS DateTime), CAST(N'2020-05-20T08:37:26.040' AS DateTime))
GO
INSERT [dbo].[jobs] ([Id], [status], [suburb_id], [category_id], [contact_name], [contact_phone], [contact_email], [price], [description], [created_at], [updated_at]) VALUES (5, N'new', 5, 5, N'Lando Calrissian', N'0433335555', N'lando@mailinator.com', 62, N'Quisque blandit erat id mi tincidunt porta. Vivamus eleifend sagittis neque id maximus. Etiam molestie, massa ut tempus fermentum, augue nisi pulvinar nunc, id malesuada ipsum ipsum nec odio. Etiam et nisl facilisis, egestas massa eget, sagittis sapien. Curabitur eget consequat diam. Proin auctor rhoncus est, vitae imperdiet sem mollis.', CAST(N'2020-05-19T01:33:53.897' AS DateTime), CAST(N'2020-05-20T08:39:36.773' AS DateTime))
GO
INSERT [dbo].[jobs] ([Id], [status], [suburb_id], [category_id], [contact_name], [contact_phone], [contact_email], [price], [description], [created_at], [updated_at]) VALUES (6, N'new', 1, 6, N'Jabba TheHutt', N'0411443322', N'jabba@mailinator.com', 55, N'Suspendisse consequat malesuada arcu id venenatis. Donec maximus, dolor quis elementum scelerisque, lorem diam ornare arcu, sed venenatis orci justo nec nibh. Maecenas sollicitudin pulvinar lorem, at aliquet tortor tincidunt at. Vestibulum blandit, arcu eu blandit vehicula, orci nulla porta justo, a semper nunc risus sit amet ante. Donec lobortis', CAST(N'2020-05-19T01:33:53.897' AS DateTime), CAST(N'2020-05-20T08:36:10.340' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[jobs] OFF
GO
SET IDENTITY_INSERT [dbo].[suburbs] ON 
GO
INSERT [dbo].[suburbs] ([Id], [Name], [postcode]) VALUES (1, N'Sydney', N'2000')
GO
INSERT [dbo].[suburbs] ([Id], [Name], [postcode]) VALUES (2, N'Bondi', N'2026')
GO
INSERT [dbo].[suburbs] ([Id], [Name], [postcode]) VALUES (3, N'Manly', N'2095')
GO
INSERT [dbo].[suburbs] ([Id], [Name], [postcode]) VALUES (4, N'Surry Hills', N'2010')
GO
INSERT [dbo].[suburbs] ([Id], [Name], [postcode]) VALUES (5, N'Newtown', N'2042')
GO
SET IDENTITY_INSERT [dbo].[suburbs] OFF
GO
ALTER TABLE [dbo].[categories] ADD  CONSTRAINT [DF_categories_parent_category_id]  DEFAULT ((0)) FOR [parent_category_id]
GO
ALTER TABLE [dbo].[jobs] ADD  CONSTRAINT [DF_jobs_status]  DEFAULT ('new') FOR [status]
GO
ALTER TABLE [dbo].[jobs] ADD  CONSTRAINT [DF_jobs_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
