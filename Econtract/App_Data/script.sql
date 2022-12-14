USE [econtract]
GO
/****** Object:  Table [dbo].[Accounts_Roles]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts_Roles](
	[RoleID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Description] [varchar](255) NULL,
 CONSTRAINT [PK_Accounts_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accounts_Roles] ON
INSERT [dbo].[Accounts_Roles] ([RoleID], [Description]) VALUES (1, N'系统管理员')
INSERT [dbo].[Accounts_Roles] ([RoleID], [Description]) VALUES (2, N'普通管理员')
INSERT [dbo].[Accounts_Roles] ([RoleID], [Description]) VALUES (5, N'客服管理')
INSERT [dbo].[Accounts_Roles] ([RoleID], [Description]) VALUES (6, N'只读用户')
SET IDENTITY_INSERT [dbo].[Accounts_Roles] OFF
/****** Object:  Table [dbo].[Accounts_RolePermissions]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts_RolePermissions](
	[RoleID] [int] NOT NULL,
	[PermissionID] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Accounts_RolePermissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts_RolePermissions] ON
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (0, 5, 61)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 16, 65)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 17, 66)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 18, 67)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 19, 68)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 70, 69)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 71, 70)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 72, 71)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 73, 72)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 60, 73)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 59, 74)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 66, 75)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 46, 76)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 47, 77)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 48, 78)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 64, 79)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 56, 80)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 57, 81)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 58, 82)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 21, 83)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 22, 84)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 23, 85)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 8, 86)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 9, 87)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 10, 88)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (2, 11, 89)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (5, 61, 332)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (5, 62, 333)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (5, 63, 334)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (5, 91, 335)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (5, 8, 336)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (5, 9, 337)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (5, 10, 338)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (5, 11, 339)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (6, 88, 370)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (6, 89, 371)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (6, 90, 372)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (6, 16, 373)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (6, 17, 374)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (6, 19, 375)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (6, 46, 376)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (6, 47, 377)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (6, 48, 378)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (6, 84, 379)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (6, 71, 380)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (6, 72, 381)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (1, 16, 398)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (1, 17, 399)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (1, 18, 400)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (1, 19, 401)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (1, 67, 402)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (1, 68, 403)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (1, 69, 404)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (1, 46, 405)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (1, 47, 406)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (1, 48, 407)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (1, 64, 408)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (1, 1, 409)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (1, 2, 410)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (1, 3, 411)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (1, 4, 412)
INSERT [dbo].[Accounts_RolePermissions] ([RoleID], [PermissionID], [id]) VALUES (1, 6, 413)
SET IDENTITY_INSERT [dbo].[Accounts_RolePermissions] OFF
/****** Object:  Table [dbo].[Accounts_Permissions]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts_Permissions](
	[PermissionID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Description] [varchar](255) NULL,
	[CategoryID] [int] NULL,
 CONSTRAINT [PK_Accounts_Permissions] PRIMARY KEY CLUSTERED 
(
	[PermissionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accounts_Permissions] ON
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (1, N'帐户管理', 1)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (2, N'管理用户列表', 1)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (3, N'增加管理用户', 1)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (4, N'删除管理用户', 1)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (5, N'修改管理用户', 1)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (6, N'分配用户角色', 1)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (7, N'角色列表', 1)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (8, N'增加角色', 1)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (9, N'删除角色', 1)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (10, N'修改角色', 1)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (11, N'分配角色权限', 1)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (12, N'权限列表', 1)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (13, N'增加权限', 1)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (14, N'删除权限', 1)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (15, N'修改权限', 1)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (16, N'菜单管理', 1)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (17, N'系统日志管理', 1)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (18, N'系统管理菜单', 2)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (19, N'个人信息菜单', 2)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (20, N'文章管理菜单', 2)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (21, N'市场专区菜单', 2)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (22, N'专区列表', 3)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (23, N'信息发布', 3)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (24, N'删除专区信息', 3)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (25, N'修改专区信息', 3)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (26, N'专区分类', 3)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (27, N'图片评论', 3)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (28, N'文章列表', 4)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (29, N'增加文章', 4)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (30, N'删除文章', 4)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (31, N'修改文章', 4)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (32, N'文章分类', 4)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (33, N'文章评论', 4)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (34, N'模板列表', 5)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (35, N'添加模板', 5)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (36, N'删除模板', 5)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (37, N'修改模板', 5)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (38, N'模板管理菜单', 2)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (39, N'查看留言', 6)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (40, N'回复留言', 6)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (41, N'删除留言', 6)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (42, N'修改留言', 6)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (43, N'留言管理菜单', 2)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (44, N'招聘列表', 7)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (45, N'发布招聘', 7)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (46, N'删除招聘', 7)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (47, N'简历管理菜单', 2)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (48, N'修改招聘', 7)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (49, N'人才简历', 7)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (50, N'删除简历', 7)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (51, N'总体统计', 8)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (52, N'视频列表', 9)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (53, N'视频管理菜单', 2)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (54, N'网站统计菜单', 2)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (55, N'其它列表', 10)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (56, N'添加其它', 10)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (57, N'删除其它', 10)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (58, N'修改其它', 10)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (59, N'发布视频', 9)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (60, N'删除视频', 9)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (61, N'修改视频', 9)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (62, N'视频分类', 9)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (63, N'视频评论', 9)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (64, N'其它管理菜单', 2)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (65, N'链接分类', 11)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (66, N'链接列表', 11)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (67, N'增加链接', 11)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (68, N'删除链接', 11)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (69, N'修改链接', 11)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (70, N'产品类别', 12)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (71, N'产品列表', 12)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (72, N'增加产品', 12)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (73, N'删除产品', 12)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (74, N'修改产品', 12)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (75, N'链接管理菜单', 2)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (76, N'来路统计', 8)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (77, N'详细统计', 8)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (78, N'自定义统计', 8)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (79, N'投票管理菜单', 2)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (80, N'投票类别', 13)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (81, N'添加投票', 13)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (82, N'投票列表', 13)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (83, N'修改投票', 13)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (84, N'删除投票', 13)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (85, N'客户服务', 14)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (86, N'客户健康档案', 14)
INSERT [dbo].[Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (87, N'客户意见', 14)
SET IDENTITY_INSERT [dbo].[Accounts_Permissions] OFF
/****** Object:  Table [dbo].[Accounts_PermissionCategories]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts_PermissionCategories](
	[CategoryID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Description] [varchar](255) NULL,
 CONSTRAINT [PK_Accounts_PermissionCategories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accounts_PermissionCategories] ON
INSERT [dbo].[Accounts_PermissionCategories] ([CategoryID], [Description]) VALUES (1, N'系统管理')
INSERT [dbo].[Accounts_PermissionCategories] ([CategoryID], [Description]) VALUES (2, N'主菜单显示控制')
INSERT [dbo].[Accounts_PermissionCategories] ([CategoryID], [Description]) VALUES (3, N'图片管理')
INSERT [dbo].[Accounts_PermissionCategories] ([CategoryID], [Description]) VALUES (4, N'文章管理')
INSERT [dbo].[Accounts_PermissionCategories] ([CategoryID], [Description]) VALUES (5, N'模板管理')
INSERT [dbo].[Accounts_PermissionCategories] ([CategoryID], [Description]) VALUES (6, N'留言管理')
INSERT [dbo].[Accounts_PermissionCategories] ([CategoryID], [Description]) VALUES (7, N'招聘管理')
INSERT [dbo].[Accounts_PermissionCategories] ([CategoryID], [Description]) VALUES (8, N'统计管理')
INSERT [dbo].[Accounts_PermissionCategories] ([CategoryID], [Description]) VALUES (9, N'视频管理')
INSERT [dbo].[Accounts_PermissionCategories] ([CategoryID], [Description]) VALUES (10, N'其它管理')
INSERT [dbo].[Accounts_PermissionCategories] ([CategoryID], [Description]) VALUES (11, N'链接管理')
INSERT [dbo].[Accounts_PermissionCategories] ([CategoryID], [Description]) VALUES (12, N'产品管理')
INSERT [dbo].[Accounts_PermissionCategories] ([CategoryID], [Description]) VALUES (13, N'投票管理')
INSERT [dbo].[Accounts_PermissionCategories] ([CategoryID], [Description]) VALUES (14, N'客户服务')
SET IDENTITY_INSERT [dbo].[Accounts_PermissionCategories] OFF
/****** Object:  Table [dbo].[Accounts_Users]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts_Users](
	[UserID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](38) NOT NULL,
	[TrueName] [varchar](50) NULL,
	[Sex] [varchar](2) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[EmployeeID] [int] NULL,
	[DepartmentID] [varchar](38) NULL,
	[Activity] [bit] NULL,
	[UserType] [varchar](8) NULL,
	[Style] [int] NULL,
 CONSTRAINT [PK_Accounts_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accounts_Users] ON
INSERT [dbo].[Accounts_Users] ([UserID], [UserName], [Password], [TrueName], [Sex], [Phone], [Email], [EmployeeID], [DepartmentID], [Activity], [UserType], [Style]) VALUES (1, N'admin', N'e10adc3949ba59abbe56e057f20f883e', N'管理员', N'男', NULL, NULL, 0, NULL, 1, N'AA', 2)
SET IDENTITY_INSERT [dbo].[Accounts_Users] OFF
/****** Object:  Table [dbo].[Accounts_UserRoles]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts_UserRoles](
	[UserID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Accounts_UserRoles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts_UserRoles] ON
INSERT [dbo].[Accounts_UserRoles] ([UserID], [RoleID], [id]) VALUES (1, 1, 1)
INSERT [dbo].[Accounts_UserRoles] ([UserID], [RoleID], [id]) VALUES (5, 1, 2)
INSERT [dbo].[Accounts_UserRoles] ([UserID], [RoleID], [id]) VALUES (7, 2, 3)
INSERT [dbo].[Accounts_UserRoles] ([UserID], [RoleID], [id]) VALUES (11, 2, 4)
INSERT [dbo].[Accounts_UserRoles] ([UserID], [RoleID], [id]) VALUES (13, 5, 5)
INSERT [dbo].[Accounts_UserRoles] ([UserID], [RoleID], [id]) VALUES (14, 5, 6)
INSERT [dbo].[Accounts_UserRoles] ([UserID], [RoleID], [id]) VALUES (15, 6, 7)
SET IDENTITY_INSERT [dbo].[Accounts_UserRoles] OFF
/****** Object:  Table [dbo].[Accounts_UserLoginInfo]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts_UserLoginInfo](
	[LoginID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[IP] [nvarchar](50) NULL,
	[ErrorTimes] [int] NOT NULL,
	[ErrorDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Accounts_UserLoginInfo] PRIMARY KEY CLUSTERED 
(
	[LoginID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts_UserLoginInfo] ([LoginID], [UserID], [IP], [ErrorTimes], [ErrorDate]) VALUES (0, 5, N'127.0.0.1', 0, CAST(0x0000AA8500E87F49 AS DateTime))
/****** Object:  StoredProcedure [dbo].[Accounts_DeletePermissionCategory]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Accounts_DeletePermissionCategory    脚本日期: 2007-5-16 17:04:22 ******/

/****** 对象: 存储过程 dbo.Accounts_DeletePermissionCategory    脚本日期: 2007-4-25 11:27:27 ******/
------------------------------------
--用途：删除权限分类
--编写人：覃汝林 
--说明：默认情况屏蔽
--时间：2007-1-15 16:13
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_DeletePermissionCategory]
@CategoryID int
AS
	BEGIN TRANSACTION
                            --DELETE From Accounts_RolePermissions where PermissionID in (
                            --                   select PermissionID from Accounts_Permissions a,
                            --                                                            Accounts_PermissionCategories b
                            --                   where
                            --                            a.CategoryID=b.CategoryID and
                            --                            a.CategoryID=@CategoryID)
		--DELETE Accounts_Permissions WHERE CategoryID = @CategoryID
		--DELETE Accounts_PermissionCategories WHERE CategoryID = @CategoryID
	COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[Accounts_DeletePermission]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Accounts_DeletePermission    脚本日期: 2007-5-16 17:04:22 ******/

/****** 对象: 存储过程 dbo.Accounts_DeletePermission    脚本日期: 2007-4-25 11:27:27 ******/
------------------------------------
--用途：删除权限
--编写人：覃汝林 
--说明：默认情况屏蔽
--时间：2007-1-15 15:32
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_DeletePermission]
@PermissionID int
AS
	BEGIN TRANSACTION
		--DELETE Accounts_Permissions WHERE PermissionID = @PermissionID
		--DELETE Accounts_RolePermissions WHERE PermissionID = @PermissionID
	COMMIT TRANSACTION
GO
/****** Object:  Table [dbo].[Article_Class]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Article_Class](
	[ClassID] [int] NOT NULL,
	[ClassName] [varchar](50) NULL,
	[ParentID] [int] NOT NULL,
	[ClassPath] [varchar](1000) NULL,
	[ClassDepth] [int] NOT NULL,
	[ClassOrder] [int] NOT NULL,
	[ClassIntro] [varchar](1000) NULL,
	[DemoID] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Article_Class] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模版ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article_Class', @level2type=N'COLUMN',@level2name=N'DemoID'
GO
INSERT [dbo].[Article_Class] ([ClassID], [ClassName], [ParentID], [ClassPath], [ClassDepth], [ClassOrder], [ClassIntro], [DemoID], [status]) VALUES (1, N'最新推荐', 0, N'1', 1, 1, N'', 0, 0)
INSERT [dbo].[Article_Class] ([ClassID], [ClassName], [ParentID], [ClassPath], [ClassDepth], [ClassOrder], [ClassIntro], [DemoID], [status]) VALUES (2, N'当季热品', 0, N'2', 1, 2, N'', 0, 0)
INSERT [dbo].[Article_Class] ([ClassID], [ClassName], [ParentID], [ClassPath], [ClassDepth], [ClassOrder], [ClassIntro], [DemoID], [status]) VALUES (3, N'首页banner', 0, N'3', 1, 3, N'', 0, 0)
/****** Object:  StoredProcedure [dbo].[H_User_Reg]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.H_User_Reg    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.H_User_Reg    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2006-12-25 21:03:26
------------------------------------
CREATE PROCEDURE [dbo].[H_User_Reg]
@LoginId varchar(30) ,
@PassWord varchar(32) ,
@Sex varchar(5) ,
@Email varchar(50)
 AS 
	INSERT INTO H_User(
	[LoginId],[PassWord],[Sex],[Email]
	)VALUES(
	@LoginId,@PassWord,@Sex,@Email
	)
GO
/****** Object:  StoredProcedure [dbo].[H_User_Login]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.H_User_Login    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.H_User_Login    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：用户登陆 
--项目名称：
--说明：
--时间：2006-12-26 23:06:21
------------------------------------
CREATE PROCEDURE [dbo].[H_User_Login]
@LoginId varchar(30),
@Password varchar(32)
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM H_User WHERE [LoginId] = @LoginId And [Password] = @Password
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[H_User_Exists]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.H_User_Exists    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.H_User_Exists    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2006-12-25 21:03:26
------------------------------------
CREATE PROCEDURE [dbo].[H_User_Exists]
@LoginId varchar(30)
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM H_User WHERE [LoginId] = @LoginId
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[GetRecordPage]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.GetRecordByPage    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.GetRecordByPage    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：分页通用
--编写人：覃汝林
--说明：
--时间：2007-1-16 9:48
------------------------------------
CREATE PROCEDURE [dbo].[GetRecordPage]
 
 @tblName varchar(255),   -- 表名 
 @fldName varchar(500),   -- 显示字段名 
 @OrderfldName varchar(255),  -- 排序字段名 
 @PageSize int = 10,   -- 页尺寸 
 @PageIndex int = 1,   -- 页码 
 @IsReCount int output,   -- 返回记录总数 
 @OrderType int = 0,   -- 设置排序类型, 非 0 值则降序 
 @strWhere varchar(1000) = ''  -- 查询条件 (注意: 不要加 where) 
AS 
 declare @strSQL varchar(6000)  -- 主语句 
 declare @strTmp varchar(100)   -- 临时变量 
 declare @strOrder varchar(400)  -- 排序类型 
if @OrderType != 0 
 begin 
  set @strTmp = '<(select min' 
  set @strOrder = ' order by  [' + @OrderfldName +'] desc' 
 end 
else 
 begin 
  set @strTmp = '>(select max' 
  set @strOrder = '  order by   [' + @OrderfldName +'] asc' 
 end 
set @strSQL = 'select top ' + str(@PageSize) + ' ' + @fldName + ' from [' 
 + @tblName + '] where [' + @OrderfldName + ']' + @strTmp + '([' 
 + @OrderfldName + ']) from (select top ' + str((@PageIndex-1)*@PageSize) + ' [' 
 + @OrderfldName + '] from [' + @tblName + ']' + @strOrder + ') as tblTmp)' 
 + @strOrder 
if @strWhere != '' 
 set @strSQL = 'select top ' + str(@PageSize) + ' ' + @fldName + ' from [' 
 + @tblName + '] where [' + @OrderfldName + ']' + @strTmp + '([' 
 + @OrderfldName + ']) from (select top ' + str((@PageIndex-1)*@PageSize) + ' [' 
 + @OrderfldName + '] from [' + @tblName + '] where ' + @strWhere + ' ' 
 + @strOrder + ') as tblTmp) and ' + @strWhere + ' ' + @strOrder 
if @PageIndex = 1 
 begin 
  set @strTmp = '' 
  if @strWhere != '' 
  set @strTmp = ' where ' + @strWhere 
  set @strSQL = 'select top ' + str(@PageSize) + ' ' + @fldName +  ' from [' 
  + @tblName + ']' + @strTmp + ' ' + @strOrder 
 end 
if @strWhere != '' 
  begin
      set @strSQL = @strSQL+'  select  count(*) as Total  into  ##TempTable   from [' + @tblName + ']'+'  where  ' + @strWhere
 end
else
 begin
     set @strSQL = @strSQL+'  select  count(*) as Total   into  ##TempTable   from [' + @tblName + ']'
 end
exec (@strSQL)
Select @IsReCount=Total  from  ##TempTable
drop table  ##TempTable
GO
/****** Object:  StoredProcedure [dbo].[GetRecordByPage_Back]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.GetRecordByPage_Back    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.GetRecordByPage_Back    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：分页通用
--编写人：覃汝林
--说明：
--时间：2007-1-16 9:48
------------------------------------
CREATE PROCEDURE [dbo].[GetRecordByPage_Back]
 
 @tblName varchar(255),   -- 表名 
 @fldName varchar(500),   -- 显示字段名 
 @OrderfldName varchar(255),  -- 排序字段名 
 @PageSize int = 10,   -- 页尺寸 
 @PageIndex int = 1,   -- 页码 
 @IsReCount int output,   -- 返回记录总数 
 @OrderType int = 0,   -- 设置排序类型, 非 0 值则降序 
 @strWhere varchar(1000) = ''  -- 查询条件 (注意: 不要加 where) 
AS 
 declare @strSQL varchar(6000)  -- 主语句 
 declare @strTmp varchar(100)   -- 临时变量 
 declare @strOrder varchar(400)  -- 排序类型 
if @OrderType != 0 
 begin 
  set @strTmp = '<(select min' 
  set @strOrder = ' order by [' + @OrderfldName +'] desc' 
 end 
else 
 begin 
  set @strTmp = '>(select max' 
  set @strOrder = ' order by [' + @OrderfldName +'] asc' 
 end 
set @strSQL = 'select top ' + str(@PageSize) + ' ' + @fldName + ' from [' 
 + @tblName + '] where [' + @OrderfldName + ']' + @strTmp + '([' 
 + @OrderfldName + ']) from (select top ' + str((@PageIndex-1)*@PageSize) + ' [' 
 + @OrderfldName + '] from [' + @tblName + ']' + @strOrder + ') as tblTmp)' 
 + @strOrder 
if @strWhere != '' 
 set @strSQL = 'select top ' + str(@PageSize) + ' ' + @fldName + ' from [' 
 + @tblName + '] where [' + @OrderfldName + ']' + @strTmp + '([' 
 + @OrderfldName + ']) from (select top ' + str((@PageIndex-1)*@PageSize) + ' [' 
 + @OrderfldName + '] from [' + @tblName + '] where ' + @strWhere + ' ' 
 + @strOrder + ') as tblTmp) and ' + @strWhere + ' ' + @strOrder 
if @PageIndex = 1 
 begin 
  set @strTmp = '' 
  if @strWhere != '' 
  set @strTmp = ' where ' + @strWhere 
  set @strSQL = 'select top ' + str(@PageSize) + ' ' + @fldName +  ' from [' 
  + @tblName + ']' + @strTmp + ' ' + @strOrder 
 end 
if @strWhere != '' 
  begin
      set @strSQL = @strSQL+'  select  count(*) as Total  into  ##TempTable   from [' + @tblName + ']'+'  where  ' + @strWhere
 end
else
 begin
     set @strSQL = @strSQL+'  select  count(*) as Total   into  ##TempTable   from [' + @tblName + ']'
 end
exec (@strSQL)
Select @IsReCount=Total  from  ##TempTable
drop table  ##TempTable
GO
/****** Object:  StoredProcedure [dbo].[GetRecordByPage]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.GetRecordByPage    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.GetRecordByPage    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：分页通用
--编写人：覃汝林
--说明：
--时间：2007-1-16 9:48
------------------------------------
CREATE PROCEDURE [dbo].[GetRecordByPage]
 
 @tblName varchar(255),   -- 表名 
 @fldName varchar(500),   -- 显示字段名 
 @OrderfldName varchar(255),  -- 排序字段名 
 @PageSize int = 10,   -- 页尺寸 
 @PageIndex int = 1,   -- 页码 
 @IsReCount int output,   -- 返回记录总数 
 @OrderType int = 0,   -- 设置排序类型, 非 0 值则降序 
 @strWhere varchar(1000) = ''  -- 查询条件 (注意: 不要加 where) 
AS 
 declare @strSQL varchar(6000)  -- 主语句 
 declare @strTmp varchar(1000)   -- 临时变量 
 declare @strCountTmp nvarchar(1000)
 declare @strOrder varchar(400)  -- 排序类型 
if @OrderType != 0 
 begin 
  set @strTmp = '<(select min' 
  set @strOrder = ' order by [' + @OrderfldName +'] desc' 
 end 
else 
 begin 
  set @strTmp = '>(select max' 
  set @strOrder = ' order by [' + @OrderfldName +'] asc' 
 end 
if @PageIndex != 1
begin 
  if @strWhere != '' 
	begin	
 set @strSQL = 'select top ' + str(@PageSize) + ' ' + @fldName + ' from [' 
	 + @tblName + '] where [' + @OrderfldName + ']' + @strTmp + '([' 
	 + @OrderfldName + ']) from (select top ' + str((@PageIndex-1)*@PageSize) + ' [' 
	 + @OrderfldName + '] from [' + @tblName + '] where ' + @strWhere + ' ' 
	 + @strOrder + ') as tblTmp) and ' + @strWhere + ' ' + @strOrder 
	end
 else
	 begin
	 set @strSQL = 'select top ' + str(@PageSize) + ' ' + @fldName + ' from [' 
 + @tblName + '] where [' + @OrderfldName + ']' + @strTmp + '([' 
 + @OrderfldName + ']) from (select top ' + str((@PageIndex-1)*@PageSize) + ' [' 
 + @OrderfldName + '] from [' + @tblName + ']' + @strOrder + ') as tblTmp)' 
 + @strOrder  
	 end
end
else
 begin 
  if @strWhere != '' 
	begin
	set @strSQL = 'select top ' + str(@PageSize) + ' ' + @fldName +  ' from [' 
  + @tblName + '] where ' + @strWhere + @strOrder 
	end
 else
	 begin
	 set @strSQL = 'select top ' + str(@PageSize) + ' ' + @fldName +  ' from [' 
  + @tblName + ']' + @strTmp + ' ' + @strOrder 
	 end
 end  
if @strWhere != '' 
begin
 set @strCountTmp = 'select @IsReCount = count(*) from [' + @tblName + '] where ' + @strWhere
 exec sp_executesql @strCountTmp,N'@IsReCount int out',@IsReCount out --输出总记录数
 end
else
begin
set @strCountTmp = 'select @IsReCount = count(*) from [' + @tblName + '] '
exec sp_executesql @strCountTmp,N'@IsReCount int out',@IsReCount out --输出总记录数
end
 
exec (@strSQL)
GO
/****** Object:  Table [dbo].[dt_job]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dt_job](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](50) NULL,
	[JobName] [nvarchar](50) NULL,
	[TriggerName] [nvarchar](50) NULL,
	[Cron] [varchar](50) NULL,
	[TriggerState] [varchar](50) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[PreTime] [datetime] NULL,
	[NextTime] [datetime] NULL,
	[Description] [nvarchar](200) NULL,
	[requestUrl] [nvarchar](200) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_dt_job_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[dt_job] ON
INSERT [dbo].[dt_job] ([id], [GroupName], [JobName], [TriggerName], [Cron], [TriggerState], [StartTime], [EndTime], [PreTime], [NextTime], [Description], [requestUrl], [CreateTime]) VALUES (1, N'df', N'test', N'test', N'/30 * * ? * *', N'Paused', NULL, NULL, NULL, NULL, N'', N'http://192.168.2.150/api/count.ashx', CAST(0x0000ABE40110AD14 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_job] OFF
/****** Object:  Table [dbo].[Download_Info]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Download_Info](
	[DownInfoID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[FileID] [int] NOT NULL,
	[IP] [nvarchar](50) NULL,
	[AddTime] [datetime] NULL,
 CONSTRAINT [PK_Download_Info] PRIMARY KEY CLUSTERED 
(
	[DownInfoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Download_Class]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Download_Class](
	[ClassID] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](50) NULL,
	[ParentID] [int] NOT NULL,
	[ClassPath] [varchar](1000) NULL,
	[ClassDepth] [int] NOT NULL,
	[ClassOrder] [int] NOT NULL,
	[ClassIntro] [varchar](1000) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Download_Class] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Download]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Download](
	[DownloadID] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](200) NOT NULL,
	[FileUrl] [nvarchar](200) NULL,
	[Type] [int] NULL,
	[Content] [nvarchar](max) NULL,
	[Image] [nvarchar](200) NULL,
	[UserType] [int] NULL,
	[Hits] [int] NULL,
	[DownNum] [int] NULL,
	[State] [int] NULL,
	[AddTime] [datetime] NULL,
 CONSTRAINT [PK_Download] PRIMARY KEY CLUSTERED 
(
	[DownloadID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Do_Page]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
---------------------------------------------------------------------------------------------
--用途：存储分页
--编写人：邓德勇
--说明：
--时间：2007-08-21  17:48
-------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[Do_Page]
	@tbname     sysname,                             --要分页显示的表名
	@FieldKey   sysname,                             --用于定位记录的主键(惟一键)字段,只能是单个字段
	@PageCurrent int=1,                              --要显示的页码
	@PageSize   int=10,                               --每页的大小(记录数)
	@FieldShow  nvarchar(1000)='',             --以逗号分隔的要显示的字段列表,如果不指定,则显示所有字段
	@FieldOrder  nvarchar(1000)='',              --以逗号分隔的排序字段列表,可以指定在字段后面指定DESC/ASC用于指定排序顺序
	@Where     nvarchar(1000)='',                --查询条件
	@PageCount  int OUTPUT,                    --总页数
	@RecordCount int OUTPUT
AS
	DECLARE @sql nvarchar(4000)
	SET NOCOUNT ON
	--检查对象是否有效
	IF OBJECT_ID(@tbname) IS NULL
		BEGIN
			RAISERROR(N'对象"%s"不存在',1,16,@tbname)
			RETURN
		END
	IF OBJECTPROPERTY(OBJECT_ID(@tbname),N'IsTable')=0 AND OBJECTPROPERTY(OBJECT_ID(@tbname),N'IsView')=0 AND OBJECTPROPERTY(OBJECT_ID(@tbname),N'IsTableFunction')=0
		BEGIN
			RAISERROR(N'"%s"不是表、视图或者表值函数',1,16,@tbname)
			RETURN
		END
	--分页字段检查
	IF ISNULL(@FieldKey,N'')=''
		BEGIN
			RAISERROR(N'分页处理需要主键（或者惟一键）',1,16)
			RETURN
		END
	--其他参数检查及规范
	IF ISNULL(@PageCurrent,0)<1 
		SET @PageCurrent=1
	IF ISNULL(@PageSize,0)<1 
		SET @PageSize=10
	IF ISNULL(@FieldShow,N'')=N'' 
		SET @FieldShow=N'*'
	IF ISNULL(@FieldOrder,N'')=N''
		SET @FieldOrder=N''
	ELSE
		SET @FieldOrder=N'ORDER BY '+LTRIM(@FieldOrder)
	IF ISNULL(@Where,N'')=N''
		SET @Where=N''
	ELSE
		SET @Where=N'WHERE ('+@Where+N')'
	--如果@PageCount为NULL值,则计算总页数(这样设计可以只在第一次计算总页数,以后调用时,把总页数传回给存储过程,避免再次计算总页数,对于不想计算总页数的处理而言,可以给@PageCount赋值)
	IF @PageCount IS NULL
		BEGIN
			SET @sql=N'SELECT @PageCount=COUNT(*)'+N' FROM '+@tbname+N' '+@Where
			EXEC sp_executesql @sql,N'@PageCount int OUTPUT',@PageCount OUTPUT
			set @RecordCount=@PageCount
			SET @PageCount=(@PageCount+@PageSize-1)/@PageSize
		END
		--计算分页显示的TOPN值
		DECLARE @TopN varchar(20),@TopN1 varchar(20)
		SELECT @TopN=@PageSize,@TopN1=@PageCurrent*@PageSize
		--第一页直接显示
		IF @PageCurrent=1
			EXEC(N'SELECT TOP '+@TopN+N' '+@FieldShow+N' FROM '+@tbname+N' '+@Where+N' '+@FieldOrder)
		ELSE
			BEGIN
				SELECT @PageCurrent=@TopN1,@sql=N'SELECT @n=@n-1,@s=CASE WHEN @n<'+@TopN+N' THEN @s+N'',''+QUOTENAME(RTRIM(CAST('+@FieldKey+N' as varchar(8000))),N'''''''') ELSE N'''' END FROM '+@tbname+N' '+@Where+N' '+@FieldOrder
				SET ROWCOUNT @PageCurrent
				EXEC sp_executesql @sql,N'@n int,@s nvarchar(4000) OUTPUT',@PageCurrent,@sql OUTPUT
				SET ROWCOUNT 0
				IF @sql=N''
					EXEC(N'SELECT TOP 0'+N' '+@FieldShow+N' FROM '+@tbname)
				ELSE
					BEGIN
						SET @sql=STUFF(@sql,1,1,N'')
						--执行查询
						EXEC(N'SELECT TOP '+@TopN+N' '+@FieldShow+N' FROM '+@tbname+N' WHERE '+@FieldKey+N' IN('+@sql+N') '+@FieldOrder)
					END
			END
GO
/****** Object:  Table [dbo].[Contract_Temp]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract_Temp](
	[TempID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Contract_Temp] PRIMARY KEY CLUSTERED 
(
	[TempID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract_Info]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract_Info](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TempID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[content] [nvarchar](50) NULL,
	[location] [nvarchar](max) NULL,
	[size] [nvarchar](50) NULL,
	[sort] [nvarchar](50) NULL,
 CONSTRAINT [PK_Contract_Info] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Book_UpdateBookRe]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Book_UpdateBookRe    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Book_UpdateBookRe    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：修改回复的留言
--编写人：覃汝林
--说明：
--时间：2007-2-6 14:06
------------------------------------
CREATE PROCEDURE [dbo].[Book_UpdateBookRe]
@ReID int,
@UserID int,
@ReName varchar(50),
@BookID int,
@Content ntext,
@Ip varchar(50)
 AS 
	UPDATE Book_Re SET 
	[UserID] = @UserID,[ReName] = @ReName,[BookID] = @BookID,[Content] = @Content,[Ip] = @Ip
	WHERE [ReID] = @ReID
GO
/****** Object:  StoredProcedure [dbo].[Book_ReExists]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Book_ReExists    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Book_ReExists    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：是否已经存在
--编写人：覃汝林
--说明：
--时间：2007-3-7  14:27
------------------------------------
CREATE PROCEDURE [dbo].[Book_ReExists]
@BookID int
AS
	DECLARE @TempID int
	SELECT @TempID = ReID  FROM  Book_Re WHERE [BookID] = @BookID
	IF @TempID > 0
		RETURN @TempID
	ELSE
		RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[Book_UpdateBookInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Book_UpdateBookInfo    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Book_UpdateBookInfo    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：修改留言
--编写人：覃汝林
--说明：
--时间：2007-2-5 16:45
------------------------------------
CREATE PROCEDURE [dbo].[Book_UpdateBookInfo]
@BookID int,
@UserName varchar(38),
@Sex varchar(2),
@Telephone varchar(35),
@Mobile varchar(15),
@Email varchar(50),
@VTime datetime,
@Aud int,
@Title varchar(100),
@Content ntext,
@QQ varchar(25),
@Froms varchar(100)
 AS 
	UPDATE Book_Info SET 
	[UserName] = @UserName,[Sex] = @Sex,[Telephone] = @Telephone,[Mobile] = @Mobile,[Email] = @Email,[VTime] = @VTime,[Aud] = @Aud,[Title] = @Title,[Content] = @Content,[QQ]=@QQ,[Froms]=@Froms
	WHERE [BookID] = @BookID
GO
/****** Object:  StoredProcedure [dbo].[Book_GetBookReModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Book_GetBookReModel    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Book_GetBookReModel    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：得到回复的留言实体对象的详细信息
--编写人：覃汝林
--说明：
--时间：2007-2-6 14:12
------------------------------------
CREATE PROCEDURE [dbo].[Book_GetBookReModel]
@BookID  int
 AS 
	SELECT 
	[ReID],[UserID],[ReName],[BookID],[Content],[Ip],[AddTime]
	 FROM Book_Re
	 WHERE [BookID] = @BookID   ORDER BY ReID DESC
GO
/****** Object:  StoredProcedure [dbo].[Book_GetBookReList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Book_GetBookReList    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Book_GetBookReList    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：取得所有回复留言列表
--编写人：覃汝林
--说明：
--时间：2007-2-6 14:21
------------------------------------
CREATE PROCEDURE [dbo].[Book_GetBookReList]
@strWhere varchar(1000)
 AS 
	SELECT 
	[ReID],[UserID],[ReName],[BookID],[Content],[Ip],[AddTime]
	 FROM Book_Re Where Content like '%'+@strWhere+'%' 
              Order by ReID desc
GO
/****** Object:  StoredProcedure [dbo].[Book_GetBookList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Book_GetBookList    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Book_GetBookList    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：获取TOP留言列表
--编写人：覃汝林
--说明：
--时间：2007-3-7  17:16
------------------------------------
CREATE PROCEDURE [dbo].[Book_GetBookList]
@strClassID int = 0,
@strTop int,
@strOrder varchar(50),
@strWhere varchar(500)
 AS 
 declare @strSQL varchar(6000)
 if @strClassID=0 
     begin
        set @strSQL='SELECT Top '+str(@strTop)+'
	[BookID],[UserName],[Sex],[Telephone],[Mobile],[Email],[VTime],[AddTime],[Aud],[Title],[Content],[QQ],[Froms]
	FROM Book_Info  Where 1=1 '+@strWhere+'  Order by '+@strOrder+' desc'
    end
 else
    begin
        set @strSQL='SELECT Top '+str(@strTop)+'
	[BookID],[UserName],[Sex],[Telephone],[Mobile],[Email],[VTime],[AddTime],[Aud],[Title],[Content],[QQ],[Froms]
	FROM Book_Info where ClassID='+str(@strClassID)+'  '+@strWhere+'  Order by '+@strOrder+' desc'
    end
EXEC(@strSQL)
GO
/****** Object:  StoredProcedure [dbo].[Book_GetBookInfoModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Book_GetBookInfoModel    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Book_GetBookInfoModel    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：得到留言实体对象的详细信息
--编写人：覃汝林
--说明：
--时间：2007-2-5 16:45
------------------------------------
CREATE PROCEDURE [dbo].[Book_GetBookInfoModel]
@BookID int
 AS 
	SELECT 
	[BookID],[UserName],[Sex],[Telephone],[Mobile],[Email],[VTime],[AddTime],[Aud],[Title],[Content],[QQ],[Froms]
	 FROM Book_Info
	 WHERE [BookID] = @BookID
GO
/****** Object:  StoredProcedure [dbo].[Book_GetBookIDList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Book_GetBookIDList    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Book_GetBookIDList    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：取得所有留言ID列表
--编写人：覃汝林
--说明：
--时间：2007-2-5 16:55
------------------------------------
CREATE PROCEDURE [dbo].[Book_GetBookIDList]
@strWhere varchar(1000)
 AS 
	SELECT 
	[BookID]
	 FROM Book_Info Where Title like '%'+@strWhere+'%' 
              Order by BookID desc
GO
/****** Object:  StoredProcedure [dbo].[Book_DeleteBookRe]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Book_DeleteBookRe    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Book_DeleteBookRe    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：删除回复的留言
--编写人：覃汝林
--说明：
--时间：2007-2-6 14:09
------------------------------------
CREATE PROCEDURE [dbo].[Book_DeleteBookRe]
@ReID int
 AS 
	DELETE Book_Re
	 WHERE [ReID] = @ReID
GO
/****** Object:  StoredProcedure [dbo].[Book_DeleteBookInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Book_DeleteBookInfo    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Book_DeleteBookInfo    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：删除留言
--编写人：覃汝林
--说明：
--时间：2007-2-5 16:46
------------------------------------
CREATE PROCEDURE [dbo].[Book_DeleteBookInfo]
@BookID int
 AS 
	DELETE Book_Info
	 WHERE [BookID] = @BookID
GO
/****** Object:  StoredProcedure [dbo].[Book_AddBookRe]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Book_AddBookRe    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Book_AddBookRe    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：回复留言
--编写人：覃汝林
--说明：
--时间：2007-2-6 13:59
------------------------------------
CREATE PROCEDURE [dbo].[Book_AddBookRe]
@ReID int output,
@UserID int ,
@ReName varchar(50) ,
@BookID int ,
@Content ntext ,
@Ip varchar(50)
 AS 
	INSERT INTO Book_Re(
	[UserID],[ReName],[BookID],[Content],[Ip]
	)VALUES(
	@UserID,@ReName,@BookID,@Content,@Ip
	)
        SET @ReID = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Book_AddBookInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Book_AddBookInfo    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Book_AddBookInfo    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：添加留言
--编写人：覃汝林
--说明：
--时间：2007-2-5 16:42
------------------------------------
CREATE PROCEDURE [dbo].[Book_AddBookInfo]
@BookID int output,
@UserName varchar(38) ,
@Sex varchar(2) ,
@Telephone varchar(35) ,
@Mobile varchar(15) ,
@Email varchar(50) ,
@VTime datetime ,
@Title varchar(100) ,
@Content ntext,
@QQ varchar(25),
@Froms varchar(100) 
 AS 
	INSERT INTO Book_Info(
	[UserName],[Sex],[Telephone],[Mobile],[Email],[VTime],[Title],[Content],[QQ],[Froms]
	)VALUES(
	@UserName,@Sex,@Telephone,@Mobile,@Email,@VTime,@Title,@Content,@QQ,@Froms
	)
            SET @BookID = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[P_INSERT_ZKWZ]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[P_INSERT_ZKWZ]
@ID int output,
@name  nvarchar(50) ,
            @sex  nvarchar(50) ,
            @phone  nvarchar(50) ,
            @number  nvarchar(50) ,
            @grzl2  nvarchar(50) ,
            @grzl3  nvarchar(50) ,
            @grzl4  nvarchar(50) ,
            @grzl5  nvarchar(50) ,
            @grzl6  nvarchar(200) ,
            @dcwj1  nvarchar(50) ,
            @dcwj2  nvarchar(50) ,
            @dcwj3  nvarchar(50) ,
            @dcwj4  nvarchar(50) ,
            @dcwj5  nvarchar(50) ,
            @dcwj6_1  nvarchar(200) ,
            @dcwj6_2  nvarchar(200) ,
            @dcwj6_3  nvarchar(200) ,
            @dcwj7  nvarchar(50) ,
            @dcwj8  nvarchar(200) ,
            @dcwj9  nvarchar(50) ,
            @dcwj10  nvarchar(50) ,
            @dcwj11  nvarchar(500) ,
            @dcwj12  nvarchar(500) ,
            @dcwj13  nvarchar(50) ,
            @dcwj14  nvarchar(50) ,
            @dcwj15  nvarchar(50) ,
            @dcwj16  nvarchar(50) ,
            @dcwj17  nvarchar(500) ,
            @dcwj18  nvarchar(50) ,
            @dcwj19  nvarchar(50) ,
            @dcwj20  nvarchar(50) 
            
            as
INSERT INTO [F_Question_zkwz]
           ([name],
            [sex],
            [phone],
            [number],
            [grzl2],
            [grzl3],
            [grzl4],
            [grzl5],
            [grzl6],
            [dcwj1],
            [dcwj2],
            [dcwj3],
            [dcwj4],
            [dcwj5],
            [dcwj6_1],
            [dcwj6_2],
            [dcwj6_3],
            [dcwj7],
            [dcwj8],
            [dcwj9],
            [dcwj10],
            [dcwj11],
            [dcwj12],
            [dcwj13],
            [dcwj14],
            [dcwj15],
            [dcwj16],
            [dcwj17],
            [dcwj18],
            [dcwj19],
            [dcwj20])
     VALUES
           (@name,
           @sex, 
           @phone
           ,@number
           ,@grzl2
           ,@grzl3
           ,@grzl4
           ,@grzl5
           ,@grzl6
           ,@dcwj1
           ,@dcwj2
           ,@dcwj3
           ,@dcwj4
           ,@dcwj5
           ,@dcwj6_1
           ,@dcwj6_2
           ,@dcwj6_3
           ,@dcwj7
           ,@dcwj8
           ,@dcwj9
           ,@dcwj10
           ,@dcwj11
           ,@dcwj12
           ,@dcwj13
           ,@dcwj14
           ,@dcwj15
           ,@dcwj16
           ,@dcwj17
           ,@dcwj18
           ,@dcwj19
           ,@dcwj20)
GO
/****** Object:  StoredProcedure [dbo].[P_INSERT_WXZL]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[P_INSERT_WXZL]
@ID int output,
@name  nvarchar(50) ,
            @sex  nvarchar(50) ,
            @phone  nvarchar(50) ,
            @number  nvarchar(50) ,
            @grzl2  nvarchar(50) ,
            @grzl3  nvarchar(50) ,
            @grzl4  nvarchar(50) ,
            @grzl5  nvarchar(50) ,
            @grzl6  nvarchar(200) ,        
           @dcwj1 nvarchar(50),
           @dcwj2 nvarchar(50),
           @dcwj3 nvarchar(50),
           @dcwj4 nvarchar(50),
           @dcwj5 nvarchar(50),
           @dcwj6 nvarchar(50),
           @dcwj7 nvarchar(50),
           @dcwj8 nvarchar(50),
           @dcwj9 nvarchar(50),
           @dcwj10 nvarchar(50),
           @dcwj11 nvarchar(50),
           @dcwj12 nvarchar(50),
           @dcwj13 nvarchar(50),
           @dcwj14 nvarchar(50),
           @dcwj15 nvarchar(50),
           @dcwj16 nvarchar(50),
           @dcwj17 nvarchar(200),
           @dcwj18 nvarchar(200),
           @dcwj19 nvarchar(50),
           @dcwj20 nvarchar(50),
           @dcwj21 nvarchar(50),
           @dcwj22 nvarchar(200),
           @dcwj23 nvarchar(50),
           @dcwj24 nvarchar(50),
           @dcwj25 nvarchar(50),
           @dcwj26 nvarchar(50),
           @dcwj27_time nvarchar(50),
           @dcwj27_start nvarchar(50),
           @dcwj27_end nvarchar(50),
           @dcwj28 nvarchar(50),
           @dcwj29 nvarchar(50),
           @dcwj30 nvarchar(50),
           @dcwj31 nvarchar(50),
           @dcwj32 nvarchar(50),
           @dcwj33 nvarchar(50),
           @dcwj34 nvarchar(50),
           @dcwj35 nvarchar(50) 
            
            as
INSERT INTO [F_Question_wxzl]
           ([name]
           ,[sex]
           ,[phone]
           ,[number]
           ,[grzl2]
           ,[grzl3]
           ,[grzl4]
           ,[grzl5]
           ,[grzl6]
           ,[dcwj1]
           ,[dcwj2]
           ,[dcwj3]
           ,[dcwj4]
           ,[dcwj5]
           ,[dcwj6]
           ,[dcwj7]
           ,[dcwj8]
           ,[dcwj9]
           ,[dcwj10]
           ,[dcwj11]
           ,[dcwj12]
           ,[dcwj13]
           ,[dcwj14]
           ,[dcwj15]
           ,[dcwj16]
           ,[dcwj17]
           ,[dcwj18]
           ,[dcwj19]
           ,[dcwj20]
           ,[dcwj21]
           ,[dcwj22]
           ,[dcwj23]
           ,[dcwj24]
           ,[dcwj25]
           ,[dcwj26]
           ,[dcwj27_time]
           ,[dcwj27_start]
           ,[dcwj27_end]
           ,[dcwj28]
           ,[dcwj29]
           ,[dcwj30]
           ,[dcwj31]
           ,[dcwj32]
           ,[dcwj33]
           ,[dcwj34]
           ,[dcwj35])
     VALUES
           (@name, 
           @sex, 
           @phone, 
           @number, 
           @grzl2, 
           @grzl3, 
           @grzl4, 
           @grzl5, 
           @grzl6, 
           @dcwj1, 
           @dcwj2, 
           @dcwj3,
           @dcwj4,
           @dcwj5, 
           @dcwj6, 
           @dcwj7, 
           @dcwj8, 
           @dcwj9, 
           @dcwj10,
           @dcwj11, 
           @dcwj12, 
           @dcwj13, 
           @dcwj14, 
           @dcwj15,
           @dcwj16, 
           @dcwj17, 
           @dcwj18, 
           @dcwj19, 
           @dcwj20, 
           @dcwj21, 
           @dcwj22, 
           @dcwj23, 
           @dcwj24, 
           @dcwj25,
           @dcwj26, 
           @dcwj27_time, 
           @dcwj27_start, 
           @dcwj27_end, 
           @dcwj28, 
           @dcwj29, 
           @dcwj30, 
           @dcwj31, 
           @dcwj32, 
           @dcwj33, 
           @dcwj34, 
           @dcwj35)
GO
/****** Object:  Table [dbo].[Opinion]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opinion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](max) NULL,
	[teacher] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[addtime] [datetime] NOT NULL,
 CONSTRAINT [PK_Opinion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Opinion] ON
INSERT [dbo].[Opinion] ([id], [content], [teacher], [name], [phone], [addtime]) VALUES (1, N'123213', N'123', N'123', N'213', CAST(0x0000ABD100F59605 AS DateTime))
SET IDENTITY_INSERT [dbo].[Opinion] OFF
/****** Object:  Table [dbo].[Menu_Tree]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menu_Tree](
	[NodeID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Text] [varchar](100) NOT NULL,
	[ParentID] [int] NOT NULL,
	[ParentPath] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[OrderID] [int] NULL,
	[comment] [varchar](50) NULL,
	[Url] [varchar](100) NULL,
	[PermissionID] [int] NULL,
	[ImageUrl] [varchar](100) NULL,
	[ModuleID] [int] NULL,
	[KeShiDM] [int] NULL,
	[KeshiPublic] [varchar](10) NULL,
 CONSTRAINT [PK_S_Tree] PRIMARY KEY CLUSTERED 
(
	[NodeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Menu_Tree] ON
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (1, N'系统管理', 0, NULL, N'0.1000', 1000, N'icon-cog', NULL, 1, N'Images/MenuImg/Programs2.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (2, N'帐户管理', 1, NULL, N'1.2', 10, N'icon-user', NULL, 2, N'Images/MenuImg/person1.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (3, N'用户管理', 2, NULL, N'2.3', 10, N'icon-user', N'/Admin/Account/User_List.aspx', 3, N'Images/MenuImg/user1.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (4, N'角色管理', 2, NULL, N'2.4', 20, N'icon-key', N'/Admin/Account/Role_List.aspx', 4, N'Images/MenuImg/04.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (6, N'菜单管理', 1, NULL, N'1.6', 20, N'icon-sitemap', N'/Admin/Menu/menu_Treelist.aspx', 6, N'Images/MenuImg/11.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (8, N'个人信息', 0, NULL, N'0.8', 999, NULL, NULL, 8, N'Images/MenuImg/person2.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (9, N'查看详细', 8, NULL, N'8.9', 9, NULL, N'Accounts/userinfo.aspx', 9, N'Images/MenuImg/04.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (10, N'修改密码', 8, NULL, N'8.10', 10, NULL, N'/admin/Account/User_EditPass.aspx', 10, N'Images/MenuImg/key2.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (11, N'修改资料', 8, NULL, N'8.11', 11, NULL, N'/admin/Account/User_EditInfo.aspx', 11, N'Images/MenuImg/04.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (16, N'文章管理', 0, NULL, N'0.16', 1, N'icon-comments-alt', NULL, 16, N'Images/MenuImg/01.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (17, N'文章列表', 16, NULL, N'16.17', 10, N'icon-comments', N'Article_List.aspx', 17, N'Images/MenuImg/04.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (18, N'添加文章', 16, NULL, N'16.18', 20, N'icon-comment-alt', N'Article_Add.aspx', 18, N'Images/MenuImg/04.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (19, N'文章分类', 16, NULL, N'16.19', 30, N'icon-folder-close', N'Article_ClassList.aspx', 19, N'Images/MenuImg/04.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (21, N'模板管理', 0, NULL, N'0.998', 140, N'icon-columns', NULL, 21, N'Images/MenuImg/systeminfo.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (22, N'模板列表', 21, NULL, N'21.22', 21, N'icon-folder-close', N'Temp_List.aspx', 22, N'Images/MenuImg/04.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (23, N'添加模板', 21, NULL, N'22.23', 22, N'icon-folder-close', N'Temp_Add.aspx', 23, N'Images/MenuImg/04.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (32, N'网站统计', 0, NULL, N'0.995', 120, N'icon-bar-chart', NULL, 32, N'Images/MenuImg/edit4.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (33, N'总体统计', 32, NULL, N'32.27', 10, N'icon-bar-chart', N'Stat_Main.aspx', 33, N'Images/MenuImg/04.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (46, N'产品管理', 0, NULL, N'0.50', 50, N'icon-shopping-cart', NULL, 46, N'Images/MenuImg/04.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (47, N'产品分类', 46, NULL, N'46.72', 72, N'icon-shopping-cart', N'ProductClass_List.aspx', 47, N'Images/MenuImg/04.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (48, N'产品列表', 46, NULL, N'46.73', 73, N'icon-shopping-cart', N'Product_List.aspx', 48, N'Images/MenuImg/04.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (49, N'栏目统计', 32, NULL, N'32.28', 20, N'icon-tasks', N'Stat_Url.aspx', 49, N'Images/MenuImg/tool.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (50, N'详细统计', 32, NULL, N'32.29', 30, N'icon-reorder', N'Stat_All.aspx', 50, N'Images/MenuImg/moblie.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (51, N'自定义统计', 32, NULL, N'32.30', 40, N'icon-wrench', N'Stat_Search.aspx', 51, N'Images/MenuImg/moblie.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (59, N'添加专题报道', 83, NULL, N'16.99', 10, N'icon-book', N'Topic_List.aspx', 59, N'Images/MenuImg/08.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (64, N'添加新品', 46, NULL, N'46.75', 75, N'icon-beaker', N'Product_AddNew.aspx', 64, N'Images/MenuImg/08.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (66, N'发布首页banner', 83, NULL, N'16.100', 20, N'icon-picture', N'Banner_Add.aspx', 66, N'Images/MenuImg/08.gif', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (67, N'人员管理', 67, NULL, N'', 1, N'icon-user', N'', 0, N'', NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (68, N'人员列表', 0, NULL, NULL, 1, N'icon-user', N'/admin/Student/Student_List.aspx', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Menu_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (69, N'添加人员', 0, NULL, NULL, 2, N'icon-plus-sign', N'/admin/Student/Student_Add.aspx', 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Menu_Tree] OFF
/****** Object:  Table [dbo].[Login_Info]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login_Info](
	[LoginID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[IP] [nvarchar](50) NULL,
	[AddTime] [datetime] NULL,
	[OutTime] [datetime] NULL,
 CONSTRAINT [PK_Login_Info] PRIMARY KEY CLUSTERED 
(
	[LoginID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Link_UpdateLinkInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Link_UpdateLinkInfo    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Link_UpdateLinkInfo    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：修改链接
--编写人：覃汝林
--说明：
--时间：2007-1-23 9:46
------------------------------------
CREATE PROCEDURE [dbo].[Link_UpdateLinkInfo]
@LinkID int,
@ClassID int,
@UserID int,
@UserName varchar(25),
@Title varchar(200),
@Tag varchar(200),
@Remark varchar(4000),
@LinkPath varchar(100) ,
@LinkName varchar(100) ,
@CommFlag int,
@IsTop int,
@IsVouch int,
@IsDelete int,
@LinkUrl varchar(200),
@Importance int 
 AS 
	IF @ClassID=3 AND @Importance<6
		UPDATE Link_Info SET [IsIndex]=0  Where [ClassID]=@ClassID AND [Importance]=@Importance
	UPDATE Link_Info SET 
	[ClassID] = @ClassID,[UserID] = @UserID,[UserName]=@UserName,[Title] = @Title,[Tag] = @Tag,[Remark] = @Remark,[LinkPath] = @LinkPath,[LinkName] = @LinkName,[CommFlag] = @CommFlag,[IsTop] = @IsTop,[IsVouch] = @IsVouch,[IsDelete] = @IsDelete,[LinkUrl]=@LinkUrl,[Importance]=@Importance,[IsIndex]=1 
	WHERE [LinkID] = @LinkID
GO
/****** Object:  StoredProcedure [dbo].[Link_GetLinkList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Link_GetLinkList    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Link_GetLinkList    脚本日期: 2007-5-9 9:27:30 ******/
------------------------------------
--用途：获取TOP友情链接列表
--编写人：邓德勇
--说明：
--时间：2007-5-9  10:46
------------------------------------
CREATE PROCEDURE [dbo].[Link_GetLinkList]
@strClassID int = 0,
@strTop int,
@strOrder varchar(50),
@strWhere varchar(500)
 AS 
 declare @strSQL varchar(6000)
 if @strClassID=0 
     begin
        set @strSQL='SELECT Top '+str(@strTop)+'
	[LinkID],[ClassID],[UserID],[UserName],[Title],[Tag],[LinkPath],[LinkName],[CommFlag],[AddTime],[VisitCount],[IsTop],[IsVouch],[LinkUrl],[Remark],[Importance]
	FROM Link_Info  Where  Aud=1  '+@strWhere+'  Order by '+@strOrder+' desc'
    end
 else
    begin
        set @strSQL='SELECT Top '+str(@strTop)+'
	[LinkID],[ClassID],[UserID],[UserName],[Title],[Tag],[LinkPath],[LinkName],[CommFlag],[AddTime],[VisitCount],[IsTop],[IsVouch],[LinkUrl],[Remark],[Importance]
	FROM Link_Info where  Aud=1  And ClassID='+str(@strClassID)+'  '+@strWhere+'  Order by '+@strOrder+' desc'
    end
EXEC(@strSQL)
GO
/****** Object:  StoredProcedure [dbo].[Link_GetLinkIDList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Link_GetLinkIDList    脚本日期: 2007-5-16 17:04:25 ******/
/****** 对象: 存储过程 dbo.Link_GetLinkIDList    脚本日期: 2007-05-08 11:27:30 ******/
------------------------------------
--用途：取得所有友情链接ID列表
--编写人：邓德勇
--说明：
--时间：2007-05-08  11:10
------------------------------------
CREATE PROCEDURE [dbo].[Link_GetLinkIDList]
@strWhere varchar(1000)
 AS 
	SELECT 
	[LinkID] 
	 FROM Link_Info Where Title  like '%'+@strWhere+'%'
              Order by Importance desc,addtime desc
GO
/****** Object:  StoredProcedure [dbo].[Link_DeleteLinkInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Link_DeleteLinkInfo    脚本日期: 2007-5-16 17:04:25 ******/
/****** 对象: 存储过程 dbo.Link_DeleteLinkInfo    脚本日期: 2007-05-08 10:27:30 ******/
------------------------------------
--用途：删除友情链接
--编写人：邓德勇
--说明：
--时间：2007-1-23 9:55
------------------------------------
CREATE PROCEDURE [dbo].[Link_DeleteLinkInfo]
@LinkID int
 AS 
	DELETE Link_Info
	 WHERE [LinkID] = @LinkID
GO
/****** Object:  StoredProcedure [dbo].[Link_GetLinkInfoModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Link_GetLinkInfoModel    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Link_GetLinkInfoModel    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：得到友情链接对象实体
--编写人：邓德勇
--说明：
--时间：2007-5-09 9:57
------------------------------------
CREATE PROCEDURE [dbo].[Link_GetLinkInfoModel]
@LinkID int
 AS 
	SELECT 
	a.[LinkID],a.[ClassID],a.[UserID],a.[UserName],a.[Title],a.[Tag],a.[Remark],a.[LinkPath],a.[LinkName],a.[CommFlag],a.[AddTime],a.[VisitCount],a.[IsTop],a.[IsVouch],a.[IsDelete],a.[Aud],a.[LinkUrl],a.[Importance],b.[ClassName]
	 FROM Link_Info a, 
                         Link_Class b
	 WHERE a.[ClassID]=b.[ClassID]  AND  a.[LinkID] = @LinkID
GO
/****** Object:  StoredProcedure [dbo].[Link_GetLinkClassModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Link_GetLinkClassModel    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Link_GetLinkClassModel    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：得到友情链接分类对象实体
--编写人：邓德勇
--说明：
--时间：2007-4-27 13:54
------------------------------------
CREATE PROCEDURE [dbo].[Link_GetLinkClassModel]
@ClassID int
 AS 
	SELECT 
	[ClassID],[ClassName],[ParentID],[ClassPath],[ClassDepth],[ClassOrder],[ClassIntro]
	 FROM Link_Class
	 WHERE [ClassID] = @ClassID
GO
/****** Object:  StoredProcedure [dbo].[Link_GetLinkClassList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Link_GetLinkClassList    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Link_GetLinkClassList    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：取得所有友情链接分类列表
--编写人：邓德勇
--说明：
--时间：2007-4-27 13:56
------------------------------------
CREATE PROCEDURE [dbo].[Link_GetLinkClassList]
@strWhere varchar(1000)
 AS
SELECT ClassID, ClassName, ParentID, ClassPath, ClassDepth, 
      ClassOrder, ClassIntro
FROM Link_Class
ORDER BY ClassOrder
GO
/****** Object:  StoredProcedure [dbo].[Link_DeleteLinkClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Link_DeleteLinkClass    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Link_DeleteLinkClass    脚本日期: 2007-5-9 11:27:30 ******/
------------------------------------
--用途：删除链接分类
--编写人：邓德勇
--说明：
--时间：2007-5-9 12:06
------------------------------------
CREATE PROCEDURE [dbo].[Link_DeleteLinkClass]
(
@ClassID int
)
AS
-----默认情况屏蔽删除------
         set @ClassID=0
-----默认情况屏蔽删除------
Declare @Err As int
Set @Err = 0
Begin Tran
--首先查询该节点下是否有子节点
Select ClassID From Link_Class Where ParentID = @ClassID
IF @@RowCount<>0
    Begin
    Set @Err = 1
    Goto theEnd
    End
--获取该节点的ClassOrder,为了删除后整理其他记录的顺序
Declare @ClassOrder As int
Select @ClassOrder = ClassOrder From Link_Class Where ClassID = @ClassID
IF @ClassOrder Is NUll
    Begin
      Set @Err =2
      Goto theEnd
    End 
--更新其他记录的ClassOrder
Update Link_Class Set ClassOrder = ClassOrder -1 Where ClassOrder >@ClassOrder 
IF @@Error<>0
    Begin
      Set @Err =3
      Goto theEnd
    End 
--删除操作
Delete From Link_Class Where ClassID=@ClassID
IF @@Error<>0
    Begin
      Set @Err =4
      Goto theEnd
  End 
--更新其他记录的ClassID
--Update Pic_Class Set ClassID= ClassID - 1 Where ClassID >@ClassID 
--IF @@Error<>0
--    Begin
--      Set @Err =5
--      Goto theEnd
--    End 
theEnd:
IF @Err = 0 
    Begin
      Commit Tran
      Return 0 --删除成功
    End
Else
    Begin
      IF @Err=1
  Begin
      Rollback Tran
      Return 1 --有子节点
End
      Else
Begin
      Rollback Tran
      Return 2--未知错误
End
    End
GO
/****** Object:  StoredProcedure [dbo].[Link_CreateLinkClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Link_CreateLinkClass    脚本日期: 2007-5-16 17:04:25 ******/



/****** 对象: 存储过程 dbo.Link_CreateLinkClass    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：增加友情链接分类
--编写人：邓德勇
--说明：
--时间：2007-4-27 10:34
------------------------------------
CREATE   PROCEDURE [dbo].[Link_CreateLinkClass]
(
@ParentID int,
@ClassName nvarchar(50),
@ClassIntro nvarchar(1000)
)
AS
Declare @Err As int
Set @Err=0
Begin Tran
--通过现有记录获取栏目ID
Declare @ClassID As int
Declare @ClassDepth As int
Select @ClassID = Max(ClassID) From Link_Class
IF @ClassID Is Not Null
Set @ClassID = @ClassID+1
Else
Set @ClassID = 1
--判断是否是顶级栏目，设置其ClassPath和ClassOrder
Declare @ClassPath As nvarchar(1000)
Declare @ClassOrder As int
IF @ParentID = 0
Begin
Set @ClassPath =Ltrim(Str(@ClassID))
Select @ClassOrder = Max(ClassOrder) From Link_Class
IF @ClassOrder Is Not Null
Set @ClassOrder = @ClassOrder + 1
Else --如果没有查询到记录，说明这是第一条记录
Set @ClassOrder = 1
--深度
Set @ClassDepth = 1
End
Else
Begin
--获取父节点的路径和深度
Select @ClassPath = ClassPath ,@ClassDepth = ClassDepth From Link_Class Where ClassID=@ParentID
IF @ClassPath Is Null
Begin
Set @Err = 1
Goto theEnd
End
--获取同父节点下的最大序号
Select @ClassOrder = Max(ClassOrder) From Link_Class Where ClassPath like ''+@ClassPath+'|%'  Or ClassID = @ParentID
IF @ClassOrder Is Not Null --如果序号存在，那么将该序号后的所有序号都加1
Begin 
--更新当前要插入节点后所有节点的序号
Update Link_Class Set ClassOrder = ClassOrder +1 Where ClassOrder>@ClassOrder
--同父节点下的最大序号加上1，构成自己的序号
Set @ClassOrder = @ClassOrder + 1
End 
Else
Begin
Set @Err=1
Goto theEnd
End
--父节点的路径加上自己的ID号，构成自己的路径
Set @ClassPath = @ClassPath + '|' + Ltrim(Str(@ClassID))
--深度
Set @ClassDepth = @ClassDepth+1
End
Insert Into Link_Class(ClassID,ClassName,ParentID,ClassPath,ClassDepth,ClassOrder,ClassIntro)  
values(@ClassID,@ClassName,@ParentID,@ClassPath,@ClassDepth,@ClassOrder,@ClassIntro)
IF @@Error<>0 
Begin
Set @Err=1
Goto theEnd
End
--更新当前记录之后的记录的ORDER
--Update Pic_Class Set ClassOrder = ClassOrder+1 Where ClassOrder  > @ClassOrder 
theEnd:
IF @Err=0
Begin
Commit Tran
Return @ClassID
End
Else
Begin
    Rollback Tran
Return 0
End
GO
/****** Object:  StoredProcedure [dbo].[Link_AddLinkInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Link_AddLinkInfo    脚本日期: 2007-5-16 17:04:25 ******/
/****** 对象: 存储过程 dbo.Link_AddLinkInfo    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：添加友情链接
--编写人：DDY
--说明：
--时间：2007-4-27 15:41
------------------------------------
CREATE PROCEDURE [dbo].[Link_AddLinkInfo]
@LinkID int output,
@ClassID int ,
@UserID int ,
@UserName varchar(25),
@Title varchar(200) ,
@Tag varchar(200) ,
@Remark varchar(4000) ,
@LinkPath varchar(100) ,
@LinkName varchar(100) ,
@CommFlag int,
@Aud int,
@LinkUrl varchar(200),
@Importance int
 AS 
	IF @ClassID=3 AND @Importance<6
		UPDATE Link_Info SET [IsIndex]=0  Where [ClassID]=@ClassID AND [Importance]=@Importance
	INSERT INTO Link_Info(
	[ClassID],[UserID],[UserName],[Title],[Tag],[Remark],[LinkPath],[LinkName],[CommFlag],[Aud],[LinkUrl],[Importance],[IsIndex]
	)VALUES(
	@ClassID,@UserID,@UserName,@Title,@Tag,@Remark,@LinkPath,@LinkName,@CommFlag,@Aud,@LinkUrl,@Importance,1
	)
              
              SET @LinkID = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Job_UpdateJobResume]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Job_UpdateJobResume    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Job_UpdateJobResume    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：修改简历
--编写人：覃汝林
--说明：
--时间：2007-2-13 15:17
------------------------------------
CREATE PROCEDURE [dbo].[Job_UpdateJobResume]
@ResumeID int,
@JobID int,
@Positions varchar(50),
@TrueName varchar(8),
@Sex varchar(5),
@Birth datetime,
@Card varchar(20),
@Nation varchar(20),
@Visage varchar(8),
@Native varchar(50),
@Marry varchar(5),
@Tall varchar(8),
@Edu varchar(20),
@JobName varchar(50),
@JobGrade varchar(20),
@ProName varchar(50),
@ProGrade varchar(20),
@School varchar(50),
@Specia varchar(50),
@Langua1 varchar(20),
@Langua1Leve varchar(10),
@Langua2 varchar(20),
@Langua2Leve varchar(10),
@Mandarin varchar(10),
@Guangd varchar(10),
@Computer varchar(10),
@TelePhone varchar(25),
@Mobile varchar(15),
@Email varchar(50),
@Address varchar(50),
@Post varchar(10),
@RMB varchar(15),
@ComTime datetime,
@JobGo varchar(500),
@Skill varchar(2000),
@Opinion varchar(2000),
@Experience ntext
 AS 
	UPDATE Job_Resume SET 
	[JobID] = @JobID,[Positions] = @Positions,[TrueName] = @TrueName,[Sex] = @Sex,[Birth] = @Birth,[Card] = @Card,[Nation] = @Nation,[Visage] = @Visage,[Native] = @Native,[Marry] = @Marry,[Tall] = @Tall,[Edu] = @Edu,[JobName] = @JobName,[JobGrade] = @JobGrade,[ProName] = @ProName,[ProGrade] = @ProGrade,[School] = @School,[Specia] = @Specia,[Langua1] = @Langua1,[Langua1Leve] = @Langua1Leve,[Langua2] = @Langua2,[Langua2Leve] = @Langua2Leve,[Mandarin] = @Mandarin,[Guangd] = @Guangd,[Computer] = @Computer,[TelePhone] = @TelePhone,[Mobile] = @Mobile,[Email] = @Email,[Address] = @Address,[Post] = @Post,[RMB] = @RMB,[ComTime] = @ComTime,[JobGo] = @JobGo,[Skill] = @Skill,[Opinion] = @Opinion,[Experience] = @Experience
	WHERE [ResumeID] = @ResumeID
GO
/****** Object:  StoredProcedure [dbo].[Job_UpdateJobInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Job_UpdateJobInfo    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Job_UpdateJobInfo    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：修改招聘
--编写人：覃汝林
--说明：
--时间：2007-2-9 11:22
------------------------------------
CREATE PROCEDURE [dbo].[Job_UpdateJobInfo]
@JobID int,
@Positions varchar(50),
@Obj varchar(15),
@Number varchar(8),
@Sex varchar(5),
@Age varchar(20),
@Edu varchar(20),
@Specia varchar(50),
@Langua varchar(50),
@Experience varchar(12),
@Pay varchar(50),
@ValidTime varchar(50) ,
@Remark varchar(3000)
 AS 
	UPDATE Job_Info SET 
	[Positions] = @Positions,[Obj] = @Obj,[Number] = @Number,[Sex] = @Sex,[Age] = @Age,[Edu] = @Edu,[Specia] = @Specia,[Langua] = @Langua,[Experience] = @Experience,[Pay] = @Pay,[ValidTime] = @ValidTime,[Remark] = @Remark
	WHERE [JobID] = @JobID
GO
/****** Object:  StoredProcedure [dbo].[Job_GetJobResumeModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Job_GetJobResumeModel    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Job_GetJobResumeModel    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：得到简历实体对象的详细信息
--编写人：覃汝林
--说明：
--时间：2007-2-13 14:59
------------------------------------
CREATE PROCEDURE [dbo].[Job_GetJobResumeModel]
@ResumeID int
 AS 
	SELECT 
	[ResumeID],[JobID],[Positions],[TrueName],[Sex],[Birth],[Card],[Nation],[Visage],[Native],[Marry],[Tall],[Edu],[JobName],[JobGrade],[ProName],[ProGrade],[School],[Specia],[Langua1],[Langua1Leve],[Langua2],[Langua2Leve],[Mandarin],[Guangd],[Computer],[TelePhone],[Mobile],[Email],[Address],[Post],[RMB],[ComTime],[JobGo],[Skill],[Opinion],[Experience]
	 FROM Job_Resume
	 WHERE [ResumeID] = @ResumeID
GO
/****** Object:  StoredProcedure [dbo].[Job_GetJobInfoModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Job_GetJobInfoModel    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Job_GetJobInfoModel    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：取得招聘实体对象的详细信息
--编写人：覃汝林
--说明：
--时间：2007-2-9 11:29
------------------------------------
CREATE PROCEDURE [dbo].[Job_GetJobInfoModel]
@JobID int
 AS 
	SELECT 
	[JobID],[Positions],[Obj],[Number],[Sex],[Age],[Edu],[Specia],[Langua],[Experience],[Pay],[ValidTime],[Remark],[AddTime]
	 FROM Job_Info
	 WHERE [JobID] = @JobID
GO
/****** Object:  StoredProcedure [dbo].[Job_GetJobInfoList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Job_GetJobInfoList    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Job_GetJobInfoList    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：取得招聘信息列表
--编写人：覃汝林
--说明：
--时间：2007-2-9 11:35
------------------------------------
CREATE PROCEDURE [dbo].[Job_GetJobInfoList]
@strWhere varchar(1000)
 AS 
	SELECT 
	[JobID],[Positions],[Obj],[Number],[Sex],[Age],[Edu],[Specia],[Langua],[Experience],[Pay],[ValidTime],[Remark],[AddTime]
	 FROM Job_Info
GO
/****** Object:  StoredProcedure [dbo].[Job_GetJobIDList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Job_GetJobIDList    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Job_GetJobIDList    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：取得招聘信息ID列表
--编写人：覃汝林
--说明：
--时间：2007-2-9 11:35
------------------------------------
CREATE PROCEDURE [dbo].[Job_GetJobIDList]
@strWhere varchar(1000)
 AS 
	SELECT 
	[JobID]
	 FROM Job_Info  ORDER BY JobID DESC
GO
/****** Object:  StoredProcedure [dbo].[Job_DeleteJobResume]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Job_DeleteJobResume    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Job_DeleteJobResume    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：删除简历
--编写人：覃汝林
--说明：
--时间：2007-2-13  15:10
------------------------------------
CREATE PROCEDURE [dbo].[Job_DeleteJobResume]
@ResumeID int
 AS 
	DELETE Job_Resume
	 WHERE [ResumeID] = @ResumeID
GO
/****** Object:  StoredProcedure [dbo].[Job_DeleteJobInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Job_DeleteJobInfo    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Job_DeleteJobInfo    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：删除招聘
--编写人：覃汝林
--说明：
--时间：2007-2-9 11:25
------------------------------------
CREATE PROCEDURE [dbo].[Job_DeleteJobInfo]
@JobID int
 AS 
	DELETE Job_Info
	 WHERE [JobID] = @JobID
GO
/****** Object:  StoredProcedure [dbo].[Job_AddJobResume]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Job_AddJobResume    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Job_AddJobResume    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：添加简历
--编写人：覃汝林
--说明：
--时间：2007-2-13 15:22
------------------------------------
CREATE PROCEDURE [dbo].[Job_AddJobResume]
@ResumeID int output,
@JobID int ,
@Positions varchar(50) ,
@TrueName varchar(8) ,
@Sex varchar(5) ,
@Birth datetime ,
@Card varchar(20) ,
@Nation varchar(20) ,
@Visage varchar(8) ,
@Native varchar(50) ,
@Marry varchar(5) ,
@Tall varchar(8) ,
@Edu varchar(20) ,
@JobName varchar(50) ,
@JobGrade varchar(20) ,
@ProName varchar(50) ,
@ProGrade varchar(20) ,
@School varchar(50) ,
@Specia varchar(50) ,
@Langua1 varchar(20) ,
@Langua1Leve varchar(10) ,
@Langua2 varchar(20) ,
@Langua2Leve varchar(10) ,
@Mandarin varchar(10) ,
@Guangd varchar(10) ,
@Computer varchar(10) ,
@TelePhone varchar(25) ,
@Mobile varchar(15) ,
@Email varchar(50) ,
@Address varchar(50) ,
@Post varchar(10) ,
@RMB varchar(15) ,
@ComTime datetime ,
@JobGo varchar(500) ,
@Skill varchar(2000) ,
@Opinion varchar(2000) ,
@Experience ntext 
 AS 
	INSERT INTO Job_Resume(
	[JobID],[Positions],[TrueName],[Sex],[Birth],[Card],[Nation],[Visage],[Native],[Marry],[Tall],[Edu],[JobName],[JobGrade],[ProName],[ProGrade],[School],[Specia],[Langua1],[Langua1Leve],[Langua2],[Langua2Leve],[Mandarin],[Guangd],[Computer],[TelePhone],[Mobile],[Email],[Address],[Post],[RMB],[ComTime],[JobGo],[Skill],[Opinion],[Experience]
	)VALUES(
	@JobID,@Positions,@TrueName,@Sex,@Birth,@Card,@Nation,@Visage,@Native,@Marry,@Tall,@Edu,@JobName,@JobGrade,@ProName,@ProGrade,@School,@Specia,@Langua1,@Langua1Leve,@Langua2,@Langua2Leve,@Mandarin,@Guangd,@Computer,@TelePhone,@Mobile,@Email,@Address,@Post,@RMB,@ComTime,@JobGo,@Skill,@Opinion,@Experience
	)
              SET @ResumeID = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Job_AddJobInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Job_AddJobInfo    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Job_AddJobInfo    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：发布招聘
--编写人：覃汝林
--说明：
--时间：2007-2-9 11:18
------------------------------------
CREATE PROCEDURE [dbo].[Job_AddJobInfo]
@JobID int output ,
@Positions varchar(50) ,
@Obj varchar(15) ,
@Number varchar(8) ,
@Sex varchar(5) ,
@Age varchar(20) ,
@Edu varchar(20) ,
@Specia varchar(50) ,
@Langua varchar(50) ,
@Experience varchar(12) ,
@Pay varchar(50) ,
@ValidTime varchar(50) ,
@Remark varchar(3000)
 AS 
	INSERT INTO Job_Info(
	[Positions],[Obj],[Number],[Sex],[Age],[Edu],[Specia],[Langua],[Experience],[Pay],[ValidTime],[Remark]
	)VALUES(
	@Positions,@Obj,@Number,@Sex,@Age,@Edu,@Specia,@Langua,@Experience,@Pay,@ValidTime,@Remark
	)
             
              SET @JobID = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[IsExists]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.IsExists    脚本日期: 2007-5-16 17:04:24 ******/
/****** 对象: 存储过程 dbo.IsExists    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2006-12-25 21:03:26
------------------------------------
CREATE PROCEDURE [dbo].[IsExists]
@strID int = 0,
@strTop int,
@strTable varchar(50),
@strWhere varchar(500)
 AS 
 declare @strSQL varchar(6000)
	DECLARE @TempID int
	--SELECT @TempID = count(1) FROM @strTable WHERE [LoginId] = @LoginId
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[get_iplocation]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  Stored Procedure dbo.get_iplocation    Script Date: 2006-3-31 14:36:52 ******/


CREATE proc [dbo].[get_iplocation]  ---从IP库取得IP所在的位置
   @ipnow nvarchar(255),
   @addj   nvarchar(255)  OUTPUT,  --IP地址所在地
   @addf  nvarchar(255)  OUTPUT    --IP地址所在地的公司或单位
AS
    if exists(select addj,addf  from ip where (onip<=@ipnow and offip>=@ipnow))
         select @addj=addj,@addf=addf  from ip where (onip<=@ipnow and offip>=@ipnow)
    else
         select @addj='未知'
         select @addf=''
GO
/****** Object:  Table [dbo].[Prize]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prize](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[month] [nvarchar](50) NULL,
	[type] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[phone] [nvarchar](20) NULL,
	[number] [nvarchar](50) NULL,
	[prize] [nvarchar](50) NULL,
 CONSTRAINT [PK_Prize] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[pic_VisitpicInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.pic_VisitpicInfo    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.pic_VisitpicInfo    脚本日期: 2007-4-25 11:27:31 ******/
------------------------------------
--用途：图片点击数增加
--编写人：覃汝林
--说明：
--时间：2007-3-15 15:15
------------------------------------
CREATE PROCEDURE [dbo].[pic_VisitpicInfo]
@picID int,
@VisitCount int output
 AS 
	UPDATE pic_Info SET [VisitCount] = [VisitCount] + 1
	WHERE [picID] = @picID
             select  @VisitCount=VisitCount  from  pic_Info  WHERE [picID] = @picID
GO
/****** Object:  StoredProcedure [dbo].[Pic_UpdatePicInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Pic_UpdatePicInfo    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.Pic_UpdatePicInfo    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：修改图片
--编写人：覃汝林
--说明：
--时间：2007-1-23 9:46
------------------------------------
CREATE PROCEDURE [dbo].[Pic_UpdatePicInfo]
@PicID int,
@ClassID int,
@UserID int,
@UserName varchar(25),
@Title varchar(200),
@Tag varchar(200),
@Remark ntext,
@PicPath varchar(100) ,
@PicName varchar(100) ,
@CommFlag int,
@IsTop int,
@IsVouch int,
@IsDelete int,
@Manage varchar(200),
@Shoper varchar(50),
@CreateShop datetime,
@Address varchar(200)
 AS 
	UPDATE Pic_Info SET 
	[ClassID] = @ClassID,[UserID] = @UserID,[UserName]=@UserName,[Title] = @Title,[Tag] = @Tag,[Remark] = @Remark,[Manage]=@Manage,[PicPath] = @PicPath,[PicName] = @PicName,[CommFlag] = @CommFlag,[IsTop] = @IsTop,[IsVouch] = @IsVouch,[IsDelete] = @IsDelete,[Shoper]=@Shoper,[CreateShop]=@CreateShop,[Address]=@Address
	WHERE [PicID] = @PicID
GO
/****** Object:  StoredProcedure [dbo].[Pic_GetPicList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Pic_GetPicList    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.Pic_GetPicList    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：获取TOP图片列表
--编写人：覃汝林
--说明：
--时间：2007-2-27  10:46
------------------------------------
CREATE PROCEDURE [dbo].[Pic_GetPicList]
@strClassID int = 0,
@strTop int,
@strOrder varchar(50),
@strWhere varchar(500)
 AS 
 declare @strSQL varchar(6000)
 if @strClassID=0 
     begin
        set @strSQL='SELECT Top '+str(@strTop)+'
	[PicID],[ClassID],[UserID],[UserName],[Title],[Tag],[PicPath],[PicName],[CommFlag],[AddTime],[VisitCount],[IsTop],[IsVouch]
	FROM Pic_Info  Where  Aud=1  '+@strWhere+'  Order by '+@strOrder+' desc'
    end
 else
    begin
        set @strSQL='SELECT Top '+str(@strTop)+'
	[PicID],[ClassID],[UserID],[UserName],[Title],[Tag],[PicPath],[PicName],[CommFlag],[AddTime],[VisitCount],[IsTop],[IsVouch]
	FROM Pic_Info where  Aud=1  And ClassID='+str(@strClassID)+'  '+@strWhere+'  Order by '+@strOrder+' desc'
    end
EXEC(@strSQL)
GO
/****** Object:  StoredProcedure [dbo].[Pic_GetPicIDList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Pic_GetPicIDList    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Pic_GetPicIDList    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：取得所有图片ID列表
--编写人：覃汝林
--说明：
--时间：2007-1-23  9:59
------------------------------------
CREATE PROCEDURE [dbo].[Pic_GetPicIDList]
@strWhere varchar(1000)
 AS 
	SELECT 
	[PicID] 
	 FROM Pic_Info Where Title  like '%'+@strWhere+'%'
              Order by PicID desc
GO
/****** Object:  StoredProcedure [dbo].[Pic_DeletePicInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Pic_DeletePicInfo    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Pic_DeletePicInfo    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：删除图片
--编写人：覃汝林
--说明：
--时间：2007-1-23 9:55
------------------------------------
CREATE PROCEDURE [dbo].[Pic_DeletePicInfo]
@PicID int
 AS 
	DELETE Pic_Info
	 WHERE [PicID] = @PicID
GO
/****** Object:  StoredProcedure [dbo].[Pic_UpdatePicComm]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Pic_UpdatePicComm    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.Pic_UpdatePicComm    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：修改评论
--编写人：覃汝林
--说明：
--时间：2007-1-31  14:51
------------------------------------
CREATE PROCEDURE [dbo].[Pic_UpdatePicComm]
@CommID int,
@UserID int,
@UserName varchar(50),
@PicID int,
@Content ntext,
@Ip varchar(50),
@Fen int
 AS 
	UPDATE Pic_Comm SET 
	[UserID] = @UserID,[UserName]=@UserName,[PicID] = @PicID,[Content] = @Content,[Ip] = @Ip,[Fen]=@Fen
	WHERE [CommID] = @CommID
GO
/****** Object:  StoredProcedure [dbo].[Pic_GetPicCommModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Pic_GetPicCommModel    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Pic_GetPicCommModel    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：得到评论对象实体
--编写人：覃汝林
--说明：
--时间：2007-1-31  14:56
------------------------------------
CREATE PROCEDURE [dbo].[Pic_GetPicCommModel]
@CommID int
 AS 
	SELECT 
	[CommID],[UserID],[UserName],[PicID],[Content],[Ip],[AddTime],[Fen]
	 FROM Pic_Comm
	 WHERE [CommID] = @CommID
GO
/****** Object:  StoredProcedure [dbo].[Pic_GetPicCommList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Pic_GetPicCommList    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Pic_GetPicCommList    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：取得所有评论列表
--编写人：覃汝林
--说明：
--时间：2007-1-31  15:00
------------------------------------
CREATE PROCEDURE [dbo].[Pic_GetPicCommList]
@PicID int
 AS 
	SELECT 
	[CommID],[UserID],[UserName],[PicID],[Content],[Ip],[AddTime],[Fen],[PicTime]
	 FROM Pic_Comm  WHERE PicID=@PicID
              Order by CommID asc
GO
/****** Object:  StoredProcedure [dbo].[Pic_DeletePicComm]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Pic_DeletePicComm    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Pic_DeletePicComm    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：删除评论
--编写人：覃汝林
--说明：
--时间：2007-1-31  14:55
------------------------------------
CREATE PROCEDURE [dbo].[Pic_DeletePicComm]
@CommID int
 AS 
	DELETE Pic_Comm
	 WHERE [CommID] = @CommID
GO
/****** Object:  StoredProcedure [dbo].[Pic_UpdatePicClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Pic_UpdatePicClass    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.Pic_UpdatePicClass    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：更新图片分类
--编写人：覃汝林
--说明：
--时间：2007-1-17 20:06
------------------------------------
CREATE PROCEDURE [dbo].[Pic_UpdatePicClass]
(
@ClassID int,
@ParentID int,
@ClassName nvarchar(50),
@ClassIntro nvarchar(1000)
)
AS
Declare @Err As int
Set @Err=0
Begin Tran
--获取修改前的：ParentID,ClassDepth,ClassOrder
Declare @oParentID As int
Declare @oClassDepth As int
Declare @oClassOrder As int
Declare @oClassPath As nvarchar(1000)
Select @oParentID = ParentID, @oClassDepth = ClassDepth,@oClassOrder = ClassOrder, @oClassPath = ClassPath  From Pic_Class Where ClassID = @ClassID
IF @oParentID Is Null
    Begin
    Set @Err = 1
    Goto theEnd
    End
--如果父ID没有改变，则直接修改栏目名和栏目简介
IF @oParentID = @ParentID
    Begin
    Update Pic_Class Set ClassName = @ClassName,ClassIntro = @ClassIntro Where ClassID = @ClassID
    IF @@Error <> 0
    Set @Err = 2
    Goto theEnd
    End
Declare @nClassPath As nvarchar(1000)
Declare @nClassDepth As int
Declare @nClassOrder As int
--获取当前节点作为父节点所包含的节点数[包括自身] 注：如果返回 “1” 说明是单节点
Declare @theCount As int
Select @theCount = Count(ClassID) From Pic_Class Where ClassID=@ClassID Or ClassPath like ''+@oClassPath+'|%'
IF @theCount Is Null
Begin
    Set @Err = 3
    Goto theEnd
End 
IF @ParentID=0 --如果是设置为顶级节点，将节点设置为最后一个顶级节点
Begin
--Print '设置为顶级栏目'
Set @nClassPath = Ltrim(Str(@ClassID))
Set @nClassDepth =1
Select @nClassOrder = Max(ClassOrder) From Pic_Class
IF @nClassOrder Is NULL
                  Begin
     Set @Err = 4
     Goto theEnd
     End 
Set @nClassOrder = @nClassOrder - @theCount + 1
--更新三部分 1 节点本身 2 所有子节点 2 本树更改之前的后面记录的顺序
--Print '更新本栏目之前位置后面的所有栏目[不包括本栏目下的子栏目]的：ClassOrder'
Update Pic_Class Set ClassOrder = ClassOrder-@theCount Where (ClassOrder >@oClassOrder) And (ClassPath Not like ''+@oClassPath+'|%')
IF @@Error <> 0
    Begin
    Set @Err = 7
    Goto theEnd
    End
--Print '更新本栏目的：ParentID,ClassPath,ClassDepth,ClassOrder,ClassName,ClassIntro'
Print 'Order : '+Ltrim(Str(@nClassOrder))
Update Pic_Class Set ParentID=@ParentID,ClassPath = @nClassPath,ClassDepth = @nClassDepth,ClassOrder = @nClassOrder, ClassName = @ClassName,ClassIntro = @ClassIntro Where ClassID = @ClassID
IF @@Error <> 0
    Begin
    Set @Err = 5
    Goto theEnd
    End
--Print '更新本栏目下的所有子栏目的：ClassPath,ClassDepth,ClassOrder'
             Update Pic_Class Set ClassPath = Replace(ClassPath,@oClassPath,@nClassPath),ClassDepth = ClassDepth + (@nClassDepth-@oClassDepth),ClassOrder = ClassOrder+( @nClassOrder-@oClassOrder) Where ClassPath like ''+@oClassPath+'|%'
IF @@Error <> 0
    Begin
    Set @Err = 6
    Goto theEnd
    End
End 
Else
Begin
--获取未来父节点的相关信息,并设置本节点的相关值
Select @nClassDepth = ClassDepth,@nClassPath = ClassPath From Pic_Class Where ClassID = @ParentID
IF @nClassDepth Is  NULL Or @nClassPath Is Null
      Begin
      Set @Err = 8
      Goto theEnd
      End 
Set @nClassDepth = @nClassDepth +1
Select @nClassOrder =Max(ClassOrder) From Pic_Class Where ClassID = @ParentID Or  ClassPath like ''+@nClassPath+'|%'
IF @nClassOrder Is  NULL
      Begin
      Set @Err = 9
      Goto theEnd
      End 
Set @nClassPath = @nClassPath +'|'+ Ltrim(Str(@ClassID))
IF @nClassOrder = @oClassOrder+1 --如果新的父节点是原来位置上端最近一个兄弟,则所有节点的顺序都不改变
                    Begin
Update Pic_Class Set ParentID=@ParentID,ClassPath = @nClassPath,ClassDepth = @nClassDepth, ClassName = @ClassName,ClassIntro = @ClassIntro Where ClassID = @ClassID
IF @@Error <> 0
    Begin
    Set @Err = 10
    Goto theEnd
    End
       End
Set  @nClassOrder = @nClassOrder + 1 
--更新三部分 1 本树更改之前的后面（或前面）记录的顺序 1 节点本身  3 所有子节点
--分为向上移或象下移
--Print '更新本栏目之前位置后面的所有栏目[或者本栏目之后位置]  [不包括本栏目下的子栏目]的：ClassOrder'
IF @nClassOrder < @oClassOrder
Begin
Update Pic_Class Set ClassOrder = ClassOrder+@theCount Where ClassOrder<@oClassOrder  And ClassOrder >=@nClassOrder And (ClassPath Not like ''+@oClassPath+'|%') And ClassID<>@ClassID
IF @@Error <> 0
        Begin
        Set @Err = 12
        Goto theEnd
        End
End
Else
Begin
Update Pic_Class Set ClassOrder = ClassOrder-@theCount Where ClassOrder >@oClassOrder And ClassOrder<@nClassOrder  And (ClassPath Not like ''+@oClassPath+'|%') And ClassID<>@ClassID
IF @@Error <> 0
        Begin
        Set @Err = 13
        Goto theEnd
        End
End
--Print '更新本栏目的：ParentID,ClassPath,ClassDepth,ClassOrder,ClassName,ClassIntro'
Print 'Order : '+Ltrim(Str(@nClassOrder))
IF @nClassOrder > @oClassOrder
Set @nClassOrder = @nClassOrder - @theCount
Update Pic_Class Set ParentID=@ParentID,ClassPath = @nClassPath,ClassDepth = @nClassDepth,ClassOrder = @nClassOrder, ClassName = @ClassName,ClassIntro = @ClassIntro Where ClassID = @ClassID
IF @@Error <> 0
    Begin
    Set @Err = 10
    Goto theEnd
    End
--Print '更新本栏目下的所有子栏目的：ClassPaht,ClassDepth,ClassOrder'
             Update Pic_Class Set ClassPath = Replace(ClassPath,@oClassPath,@nClassPath),ClassDepth = ClassDepth + (@nClassDepth-@oClassDepth),ClassOrder = ClassOrder+(@nClassOrder-@oClassOrder) Where ClassPath like ''+@oClassPath+'|%'
IF @@Error <> 0
    Begin
    Set @Err = 11
    Goto theEnd
    End
End
theEnd:
IF @Err<>0 --如果有错误则返回错误号
   Begin
   Rollback Tran
   Return @Err
   End
Else     --如果没有错误就返回0
   Begin
   Commit Tran
   Return 0
   End
GO
/****** Object:  StoredProcedure [dbo].[Pic_GetPicInfoModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Pic_GetPicInfoModel    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.Pic_GetPicInfoModel    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：得到图片对象实体
--编写人：覃汝林
--说明：
--时间：2007-1-23 9:57
------------------------------------
CREATE PROCEDURE [dbo].[Pic_GetPicInfoModel]
@PicID int
 AS 
	SELECT 
	a.[PicID],a.[ClassID],a.[UserID],a.[UserName],a.[Title],a.[Tag],a.[Remark],a.[Manage],a.[PicPath],a.[PicName],a.[CommFlag],a.[AddTime],a.[VisitCount],a.[IsTop],a.[IsVouch],a.[IsDelete],a.[Aud],a.[Shoper],a.[CreateShop],a.[Address],b.[ClassName]
	 FROM Pic_Info a, 
                         Pic_Class b
	 WHERE a.[ClassID]=b.[ClassID]  AND  a.[PicID] = @PicID
GO
/****** Object:  StoredProcedure [dbo].[Pic_GetPicClassModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Pic_GetPicClassModel    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Pic_GetPicClassModel    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：得到图片分类对象实体
--编写人：覃汝林
--说明：
--时间：2007-1-18 9:48
------------------------------------
CREATE PROCEDURE [dbo].[Pic_GetPicClassModel]
@ClassID int
 AS 
	SELECT 
	[ClassID],[ClassName],[ParentID],[ClassPath],[ClassDepth],[ClassOrder],[ClassIntro]
	 FROM Pic_Class
	 WHERE [ClassID] = @ClassID
GO
/****** Object:  StoredProcedure [dbo].[Pic_GetPicClassList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Pic_GetPicClassList    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Pic_GetPicClassList    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：取得所有图片分类列表
--编写人：覃汝林
--说明：
--时间：2007-1-17 20:06
------------------------------------
CREATE PROCEDURE [dbo].[Pic_GetPicClassList]
@strWhere varchar(1000)
 AS
SELECT ClassID, ClassName, ParentID, ClassPath, ClassDepth, 
      ClassOrder, ClassIntro
FROM Pic_Class
ORDER BY ClassOrder
GO
/****** Object:  StoredProcedure [dbo].[Pic_DeletePicClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Pic_DeletePicClass    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Pic_DeletePicClass    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：删除图片分类
--编写人：覃汝林
--说明：
--时间：2007-1-17 20:06
------------------------------------
CREATE PROCEDURE [dbo].[Pic_DeletePicClass]
(
@ClassID int
)
AS
-----默认情况屏蔽删除------
         set @ClassID=0
-----默认情况屏蔽删除------
Declare @Err As int
Set @Err = 0
Begin Tran
--首先查询该节点下是否有子节点
Select ClassID From Pic_Class Where ParentID = @ClassID
IF @@RowCount<>0
    Begin
    Set @Err = 1
    Goto theEnd
    End
--获取该节点的ClassOrder,为了删除后整理其他记录的顺序
Declare @ClassOrder As int
Select @ClassOrder = ClassOrder From Pic_Class Where ClassID = @ClassID
IF @ClassOrder Is NUll
    Begin
      Set @Err =2
      Goto theEnd
    End 
--更新其他记录的ClassOrder
Update Pic_Class Set ClassOrder = ClassOrder -1 Where ClassOrder >@ClassOrder 
IF @@Error<>0
    Begin
      Set @Err =3
      Goto theEnd
    End 
--删除操作
Delete From Pic_Class Where ClassID=@ClassID
IF @@Error<>0
    Begin
      Set @Err =4
      Goto theEnd
  End 
--更新其他记录的ClassID
--Update Pic_Class Set ClassID= ClassID - 1 Where ClassID >@ClassID 
--IF @@Error<>0
--    Begin
--      Set @Err =5
--      Goto theEnd
--    End 
theEnd:
IF @Err = 0 
    Begin
      Commit Tran
      Return 0 --删除成功
    End
Else
    Begin
      IF @Err=1
  Begin
      Rollback Tran
      Return 1 --有子节点
End
      Else
Begin
      Rollback Tran
      Return 2--未知错误
End
    End
GO
/****** Object:  StoredProcedure [dbo].[Pic_CreatePicClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Pic_CreatePicClass    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Pic_CreatePicClass    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：增加图片分类
--编写人：覃汝林
--说明：
--时间：2007-1-17 20:06
------------------------------------
CREATE PROCEDURE [dbo].[Pic_CreatePicClass]
(
@ParentID int,
@ClassName nvarchar(50),
@ClassIntro nvarchar(1000)
)
AS
Declare @Err As int
Set @Err=0
Begin Tran
--通过现有记录获取栏目ID
Declare @ClassID As int
Declare @ClassDepth As int
Select @ClassID = Max(ClassID) From Pic_Class
IF @ClassID Is Not Null
Set @ClassID = @ClassID+1
Else
Set @ClassID = 1
--判断是否是顶级栏目，设置其ClassPath和ClassOrder
Declare @ClassPath As nvarchar(1000)
Declare @ClassOrder As int
IF @ParentID = 0
Begin
Set @ClassPath =Ltrim(Str(@ClassID))
Select @ClassOrder = Max(ClassOrder) From Pic_Class
IF @ClassOrder Is Not Null
Set @ClassOrder = @ClassOrder + 1
Else --如果没有查询到记录，说明这是第一条记录
Set @ClassOrder = 1
--深度
Set @ClassDepth = 1
End
Else
Begin
--获取父节点的路径和深度
Select @ClassPath = ClassPath ,@ClassDepth = ClassDepth From Pic_Class Where ClassID=@ParentID
IF @ClassPath Is Null
Begin
Set @Err = 1
Goto theEnd
End
--获取同父节点下的最大序号
Select @ClassOrder = Max(ClassOrder) From Pic_Class Where ClassPath like ''+@ClassPath+'|%'  Or ClassID = @ParentID
IF @ClassOrder Is Not Null --如果序号存在，那么将该序号后的所有序号都加1
Begin 
--更新当前要插入节点后所有节点的序号
Update Pic_Class Set ClassOrder = ClassOrder +1 Where ClassOrder>@ClassOrder
--同父节点下的最大序号加上1，构成自己的序号
Set @ClassOrder = @ClassOrder + 1
End 
Else
Begin
Set @Err=1
Goto theEnd
End
--父节点的路径加上自己的ID号，构成自己的路径
Set @ClassPath = @ClassPath + '|' + Ltrim(Str(@ClassID))
--深度
Set @ClassDepth = @ClassDepth+1
End
Insert Into Pic_Class(ClassID,ClassName,ParentID,ClassPath,ClassDepth,ClassOrder,ClassIntro)  
values(@ClassID,@ClassName,@ParentID,@ClassPath,@ClassDepth,@ClassOrder,@ClassIntro)
IF @@Error<>0 
Begin
Set @Err=1
Goto theEnd
End
--更新当前记录之后的记录的ORDER
--Update Pic_Class Set ClassOrder = ClassOrder+1 Where ClassOrder  > @ClassOrder 
theEnd:
IF @Err=0
Begin
Commit Tran
Return @ClassID
End
Else
Begin
    Rollback Tran
Return 0
End
GO
/****** Object:  StoredProcedure [dbo].[Link_UpdateLinkClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Link_UpdateLinkClass    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Link_UpdateLinkClass    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：更新图片分类
--编写人：覃汝林
--说明：
--时间：2007-1-17 20:06
------------------------------------
CREATE PROCEDURE [dbo].[Link_UpdateLinkClass]
(
@ClassID int,
@ParentID int,
@ClassName nvarchar(50),
@ClassIntro nvarchar(1000)
)
AS
Declare @Err As int
Set @Err=0
Begin Tran
--获取修改前的：ParentID,ClassDepth,ClassOrder
Declare @oParentID As int
Declare @oClassDepth As int
Declare @oClassOrder As int
Declare @oClassPath As nvarchar(1000)
Select @oParentID = ParentID, @oClassDepth = ClassDepth,@oClassOrder = ClassOrder, @oClassPath = ClassPath  From Link_Class Where ClassID = @ClassID
IF @oParentID Is Null
    Begin
    Set @Err = 1
    Goto theEnd
    End
--如果父ID没有改变，则直接修改栏目名和栏目简介
IF @oParentID = @ParentID
    Begin
    Update Link_Class Set ClassName = @ClassName,ClassIntro = @ClassIntro Where ClassID = @ClassID
    IF @@Error <> 0
    Set @Err = 2
    Goto theEnd
    End
Declare @nClassPath As nvarchar(1000)
Declare @nClassDepth As int
Declare @nClassOrder As int
--获取当前节点作为父节点所包含的节点数[包括自身] 注：如果返回 “1” 说明是单节点
Declare @theCount As int
Select @theCount = Count(ClassID) From Link_Class Where ClassID=@ClassID Or ClassPath like ''+@oClassPath+'|%'
IF @theCount Is Null
Begin
    Set @Err = 3
    Goto theEnd
End 
IF @ParentID=0 --如果是设置为顶级节点，将节点设置为最后一个顶级节点
Begin
--Print '设置为顶级栏目'
Set @nClassPath = Ltrim(Str(@ClassID))
Set @nClassDepth =1
Select @nClassOrder = Max(ClassOrder) From Pic_Class
IF @nClassOrder Is NULL
                  Begin
     Set @Err = 4
     Goto theEnd
     End 
Set @nClassOrder = @nClassOrder - @theCount + 1
--更新三部分 1 节点本身 2 所有子节点 2 本树更改之前的后面记录的顺序
--Print '更新本栏目之前位置后面的所有栏目[不包括本栏目下的子栏目]的：ClassOrder'
Update Link_Class Set ClassOrder = ClassOrder-@theCount Where (ClassOrder >@oClassOrder) And (ClassPath Not like ''+@oClassPath+'|%')
IF @@Error <> 0
    Begin
    Set @Err = 7
    Goto theEnd
    End
--Print '更新本栏目的：ParentID,ClassPath,ClassDepth,ClassOrder,ClassName,ClassIntro'
Print 'Order : '+Ltrim(Str(@nClassOrder))
Update Link_Class Set ParentID=@ParentID,ClassPath = @nClassPath,ClassDepth = @nClassDepth,ClassOrder = @nClassOrder, ClassName = @ClassName,ClassIntro = @ClassIntro Where ClassID = @ClassID
IF @@Error <> 0
    Begin
    Set @Err = 5
    Goto theEnd
    End
--Print '更新本栏目下的所有子栏目的：ClassPath,ClassDepth,ClassOrder'
             Update Link_Class Set ClassPath = Replace(ClassPath,@oClassPath,@nClassPath),ClassDepth = ClassDepth + (@nClassDepth-@oClassDepth),ClassOrder = ClassOrder+( @nClassOrder-@oClassOrder) Where ClassPath like ''+@oClassPath+'|%'
IF @@Error <> 0
    Begin
    Set @Err = 6
    Goto theEnd
    End
End 
Else
Begin
--获取未来父节点的相关信息,并设置本节点的相关值
Select @nClassDepth = ClassDepth,@nClassPath = ClassPath From Link_Class Where ClassID = @ParentID
IF @nClassDepth Is  NULL Or @nClassPath Is Null
      Begin
      Set @Err = 8
      Goto theEnd
      End 
Set @nClassDepth = @nClassDepth +1
Select @nClassOrder =Max(ClassOrder) From Pic_Class Where ClassID = @ParentID Or  ClassPath like ''+@nClassPath+'|%'
IF @nClassOrder Is  NULL
      Begin
      Set @Err = 9
      Goto theEnd
      End 
Set @nClassPath = @nClassPath +'|'+ Ltrim(Str(@ClassID))
IF @nClassOrder = @oClassOrder+1 --如果新的父节点是原来位置上端最近一个兄弟,则所有节点的顺序都不改变
                    Begin
Update Link_Class Set ParentID=@ParentID,ClassPath = @nClassPath,ClassDepth = @nClassDepth, ClassName = @ClassName,ClassIntro = @ClassIntro Where ClassID = @ClassID
IF @@Error <> 0
    Begin
    Set @Err = 10
    Goto theEnd
    End
       End
Set  @nClassOrder = @nClassOrder + 1 
--更新三部分 1 本树更改之前的后面（或前面）记录的顺序 1 节点本身  3 所有子节点
--分为向上移或象下移
--Print '更新本栏目之前位置后面的所有栏目[或者本栏目之后位置]  [不包括本栏目下的子栏目]的：ClassOrder'
IF @nClassOrder < @oClassOrder
Begin
Update Link_Class Set ClassOrder = ClassOrder+@theCount Where ClassOrder<@oClassOrder  And ClassOrder >=@nClassOrder And (ClassPath Not like ''+@oClassPath+'|%') And ClassID<>@ClassID
IF @@Error <> 0
        Begin
        Set @Err = 12
        Goto theEnd
        End
End
Else
Begin
Update Link_Class Set ClassOrder = ClassOrder-@theCount Where ClassOrder >@oClassOrder And ClassOrder<@nClassOrder  And (ClassPath Not like ''+@oClassPath+'|%') And ClassID<>@ClassID
IF @@Error <> 0
        Begin
        Set @Err = 13
        Goto theEnd
        End
End
--Print '更新本栏目的：ParentID,ClassPath,ClassDepth,ClassOrder,ClassName,ClassIntro'
Print 'Order : '+Ltrim(Str(@nClassOrder))
IF @nClassOrder > @oClassOrder
Set @nClassOrder = @nClassOrder - @theCount
Update Link_Class Set ParentID=@ParentID,ClassPath = @nClassPath,ClassDepth = @nClassDepth,ClassOrder = @nClassOrder, ClassName = @ClassName,ClassIntro = @ClassIntro Where ClassID = @ClassID
IF @@Error <> 0
    Begin
    Set @Err = 10
    Goto theEnd
    End
--Print '更新本栏目下的所有子栏目的：ClassPaht,ClassDepth,ClassOrder'
             Update Link_Class Set ClassPath = Replace(ClassPath,@oClassPath,@nClassPath),ClassDepth = ClassDepth + (@nClassDepth-@oClassDepth),ClassOrder = ClassOrder+(@nClassOrder-@oClassOrder) Where ClassPath like ''+@oClassPath+'|%'
IF @@Error <> 0
    Begin
    Set @Err = 11
    Goto theEnd
    End
End
theEnd:
IF @Err<>0 --如果有错误则返回错误号
   Begin
   Rollback Tran
   Return @Err
   End
Else     --如果没有错误就返回0
   Begin
   Commit Tran
   Return 0
   End
GO
/****** Object:  StoredProcedure [dbo].[Pic_AddPicInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Pic_AddPicInfo    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Pic_AddPicInfo    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：添加图片
--编写人：覃汝林
--说明：
--时间：2007-1-23 9:35
------------------------------------
CREATE PROCEDURE [dbo].[Pic_AddPicInfo]
@PicID int output,
@ClassID int ,
@UserID int ,
@UserName varchar(25),
@Title varchar(200) ,
@Tag varchar(200) ,
@Remark ntext ,
@Manage varchar(500),
@PicPath varchar(100) ,
@PicName varchar(100) ,
@CommFlag int,
@Aud int,
@Shoper varchar(50),
@CreateShop Datetime,
@Address varchar(200)
 AS 
	INSERT INTO Pic_Info(
	[ClassID],[UserID],[UserName],[Title],[Tag],[Manage],[Remark],[PicPath],[PicName],[CommFlag],[Aud],[Shoper],[CreateShop],[Address]
	)VALUES(
	@ClassID,@UserID,@UserName,@Title,@Tag,@Manage,@Remark,@PicPath,@PicName,@CommFlag,@Aud,@Shoper,@CreateShop,@Address
	)
              
              SET @PicID = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Pic_AddPicComm]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Pic_AddPicComm    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Pic_AddPicComm    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：发表评论
--编写人：覃汝林
--说明：
--时间：2007-1-31  14:47
------------------------------------
CREATE PROCEDURE [dbo].[Pic_AddPicComm]
@CommID int output,
@UserID int ,
@UserName varchar(50),
@PicID int ,
@Content ntext ,
@Ip varchar(50) ,
@Fen int,
@PicTime varchar(50)
 AS 
	INSERT INTO Pic_Comm(
	[UserID],[UserName],[PicID],[Content],[Ip],[Fen],[PicTime]
	)VALUES(
	@UserID,@UserName,@PicID,@Content,@Ip,@Fen,@PicTime
	)
   SET @CommID = @@IDENTITY
GO
/****** Object:  Table [dbo].[Accounts_Department]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts_Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ParentID] [int] NOT NULL,
	[Depth] [int] NOT NULL,
	[AddTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Accounts_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Accounts_DelTreeNode]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Accounts_DelTreeNode    脚本日期: 2007-5-16 17:04:22 ******/

/****** 对象: 存储过程 dbo.Accounts_DelTreeNode    脚本日期: 2007-4-25 11:27:27 ******/
------------------------------------
--用途：删除左菜单
--编写人：覃汝林 
--说明：默认情况屏蔽
--时间：2007-1-31 9:53
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_DelTreeNode]
@nodeid  int
AS
	BEGIN TRANSACTION
		--DELETE Menu_Tree WHERE NodeID = @nodeid
	COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[Article_AddArticleComm]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Article_AddArticleComm    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Article_AddArticleComm    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：发表评论
--编写人：覃汝林
--说明：
--时间：2007-1-31  14:47
------------------------------------
CREATE PROCEDURE [dbo].[Article_AddArticleComm]
@CommID int output,
@UserID int ,
@UserName varchar(50),
@ArticleID int ,
@Content ntext ,
@Ip varchar(50) ,
@Fen int ,
@ArticleTime varchar(50)
 AS 
	INSERT INTO Article_Comm(
	[UserID],[UserName],[ArticleID],[Content],[Ip],[Fen],[ArticleTime]
	)VALUES(
	@UserID,@UserName,@ArticleID,@Content,@Ip,@Fen,@ArticleTime
	)
   SET @CommID = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Article_DeleteArticleComm]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Article_DeleteArticleComm    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Article_DeleteArticleComm    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：删除评论
--编写人：覃汝林
--说明：
--时间：2007-1-31  14:55
------------------------------------
CREATE PROCEDURE [dbo].[Article_DeleteArticleComm]
@CommID int
 AS 
	DELETE Article_Comm
	 WHERE [CommID] = @CommID
GO
/****** Object:  Table [dbo].[Article_Info]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Article_Info](
	[ArticleID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClassID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[PicID] [int] NOT NULL,
	[PicUrl] [varchar](100) NOT NULL,
	[Title] [varchar](200) NOT NULL,
	[SubTitle] [varchar](200) NULL,
	[Tag] [varchar](200) NOT NULL,
	[Content] [ntext] NOT NULL,
	[keyword] [nvarchar](500) NULL,
	[CommFlag] [int] NOT NULL,
	[AddTime] [datetime] NOT NULL,
	[VisitCount] [int] NOT NULL,
	[IsTop] [int] NOT NULL,
	[TopTime] [datetime] NULL,
	[IsVouch] [int] NOT NULL,
	[VouchTime] [datetime] NULL,
	[IsDelete] [int] NOT NULL,
	[Importance] [int] NULL,
	[GoUrl] [varchar](200) NULL,
	[flashUrl] [varchar](200) NULL,
 CONSTRAINT [PK_Article_Info] PRIMARY KEY CLUSTERED 
(
	[ArticleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Article_GetArticleCommModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Article_GetArticleCommModel    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Article_GetArticleCommModel    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：得到评论对象实体
--编写人：覃汝林
--说明：
--时间：2007-1-31  14:56
------------------------------------
CREATE PROCEDURE [dbo].[Article_GetArticleCommModel]
@CommID int
 AS 
	SELECT 
	[CommID],[UserID],[UserName],[ArticleID],[Content],[Ip],[AddTime],[Fen]
	 FROM Article_Comm
	 WHERE [CommID] = @CommID
GO
/****** Object:  StoredProcedure [dbo].[Article_GetArticleCommList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Article_GetArticleCommList    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Article_GetArticleCommList    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：取得所有评论列表
--编写人：覃汝林
--说明：
--时间：2007-1-31  15:00
------------------------------------
CREATE PROCEDURE [dbo].[Article_GetArticleCommList]
@ArticleID int
 AS 
	SELECT 
	[CommID],[UserID],[UserName],[ArticleID],[Content],[Ip],[AddTime],[Fen],[ArticleTime]
	 FROM Article_Comm   where ArticleID = @ArticleID
              Order by CommID asc
GO
/****** Object:  StoredProcedure [dbo].[Article_GetArticleList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Article_GetArticleList    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Article_GetArticleList    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：获取TOP文章列表
--编写人：覃汝林
--说明：
--时间：2007-2-27  10:46
------------------------------------
CREATE PROCEDURE [dbo].[Article_GetArticleList]
@strClassID int = 0,
@strTop int,
@strOrder varchar(50),
@strWhere varchar(500)
 AS 
 declare @strSQL varchar(6000)
 if @strClassID=0 
     begin
        set @strSQL='SELECT Top '+str(@strTop)+'
	*
	FROM Article_Info  Where 1=1 '+@strWhere+'  Order by '+@strOrder+' desc'
    end
 else
    begin
        set @strSQL='SELECT Top '+str(@strTop)+'
	*
	FROM Article_Info where ClassID='+str(@strClassID)+'  '+@strWhere+'  Order by '+@strOrder+' desc'
    end
EXEC(@strSQL)
GO
/****** Object:  StoredProcedure [dbo].[Article_UpdateArticleComm]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Article_UpdateArticleComm    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Article_UpdateArticleComm    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：修改评论
--编写人：覃汝林
--说明：
--时间：2007-1-31  14:51
------------------------------------
CREATE PROCEDURE [dbo].[Article_UpdateArticleComm]
@CommID int,
@UserID int,
@UserName varchar(50),
@ArticleID int,
@Content ntext,
@Ip varchar(50),
@Fen int
 AS 
	UPDATE Article_Comm SET 
	[UserID] = @UserID,[UserName]=@UserName,[ArticleID] = @ArticleID,[Content] = @Content,[Ip] = @Ip,[Fen]=@Fen
	WHERE [CommID] = @CommID
GO
/****** Object:  Table [dbo].[Pro_Class]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pro_Class](
	[ClassID] [int] NOT NULL,
	[ClassName] [varchar](50) NULL,
	[ParentID] [int] NULL,
	[ClassPath] [varchar](1000) NULL,
	[ClassDepth] [int] NULL,
	[ClassOrder] [int] NULL,
	[ClassIntro] [varchar](1000) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pro_Info]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pro_Info](
	[ProID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClassID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[UserName] [varchar](25) NULL,
	[Title] [varchar](200) NOT NULL,
	[Content] [varchar](200) NULL,
	[Remark] [ntext] NULL,
	[Method] [nvarchar](max) NULL,
	[PicPath] [varchar](100) NOT NULL,
	[PicName] [varchar](100) NOT NULL,
	[CommFlag] [int] NOT NULL,
	[AddTime] [datetime] NOT NULL,
	[VisitCount] [int] NOT NULL,
	[IsTop] [int] NOT NULL,
	[TopTime] [datetime] NULL,
	[IsVouch] [int] NOT NULL,
	[VouchTime] [datetime] NULL,
	[IsDelete] [int] NOT NULL,
	[Aud] [int] NOT NULL,
	[Price] [varchar](50) NULL,
	[Element] [varchar](200) NULL,
	[SpecialUrl] [varchar](200) NULL,
	[G0Url] [varchar](200) NULL,
 CONSTRAINT [PK_Pro_Info] PRIMARY KEY CLUSTERED 
(
	[ProID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Pro_GetProList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Pro_GetProList    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.Pro_GetProList    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：获取TOP图片列表
--编写人：邓德勇
--说明：
--时间：2007-2-27  10:46
------------------------------------
CREATE PROCEDURE [dbo].[Pro_GetProList]
@strClassID int = 0,
@strTop int,
@strOrder varchar(50),
@strWhere varchar(500)
 AS 
 declare @strSQL varchar(6000)
 if @strClassID=0 
     begin
        set @strSQL='SELECT Top '+str(@strTop)+'
	[ProID],[ClassID],[UserID],[UserName],[Title],[Content],[PicPath],[PicName],[CommFlag],[AddTime],[VisitCount],[IsTop],[IsVouch],[element],[Price],[SpecialUrl]
	FROM Pro_Info  Where  Aud=1 and isdelete=0 '+@strWhere+'  Order by '+@strOrder+' desc'
    end
 else
    begin
        set @strSQL='SELECT Top '+str(@strTop)+'
	[ProID],[ClassID],[UserID],[UserName],[Title],[Content],[PicPath],[PicName],[CommFlag],[AddTime],[VisitCount],[IsTop],[IsVouch],[Element],[Price],[SpecialUrl]
	FROM Pro_Info where  Aud=1 and isdelete=0 And ClassID='+str(@strClassID)+'  '+@strWhere+'  Order by '+@strOrder+' desc'
    end
EXEC(@strSQL)
GO
/****** Object:  Table [dbo].[Search]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Search](
	[SearchID] [int] IDENTITY(1,1) NOT NULL,
	[keyword] [nvarchar](max) NULL,
	[ip] [nvarchar](50) NULL,
	[datetime] [datetime] NULL,
 CONSTRAINT [PK_Search] PRIMARY KEY CLUSTERED 
(
	[SearchID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scene_user]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scene_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[phone] [nvarchar](50) NULL,
	[ip] [nvarchar](50) NULL,
	[addtime] [datetime] NOT NULL,
	[isdelete] [int] NOT NULL,
 CONSTRAINT [PK_scene_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scene_upfile]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scene_upfile](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NOT NULL,
	[filetype] [int] NOT NULL,
	[fileurl] [nvarchar](100) NULL,
	[addtime] [datetime] NOT NULL,
	[sizekb] [float] NULL,
	[filethumburl] [nvarchar](100) NULL,
	[extension] [nvarchar](10) NULL,
	[filename] [nvarchar](100) NULL,
	[isdelete] [int] NOT NULL,
 CONSTRAINT [PK_sence_upfile] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scene_page]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scene_page](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sceneid] [int] NOT NULL,
	[pagecurrentnum] [int] NOT NULL,
	[addtime] [datetime] NOT NULL,
	[content] [nvarchar](max) NULL,
	[properties] [nvarchar](max) NULL,
	[title] [nvarchar](50) NULL,
	[userid] [int] NOT NULL,
	[ip] [nvarchar](50) NULL,
	[thumburl] [nvarchar](100) NULL,
	[isdelete] [int] NOT NULL,
	[ismodel] [int] NOT NULL,
 CONSTRAINT [PK_scene_page] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[scene_page] ON
INSERT [dbo].[scene_page] ([id], [sceneid], [pagecurrentnum], [addtime], [content], [properties], [title], [userid], [ip], [thumburl], [isdelete], [ismodel]) VALUES (1, 1, 1, CAST(0x0000ABA600E1B67B AS DateTime), N'', NULL, N'第1页', 0, N'::1', NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[scene_page] OFF
/****** Object:  Table [dbo].[scene_data]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scene_data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sceneid] [int] NOT NULL,
	[userid] [int] NOT NULL,
	[data] [nvarchar](max) NULL,
	[ip] [nvarchar](50) NULL,
	[addtime] [datetime] NOT NULL,
	[isdelete] [int] NOT NULL,
 CONSTRAINT [PK_scene_data] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scene]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scene](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[scenetype] [int] NOT NULL,
	[userid] [int] NOT NULL,
	[hitcount] [int] NOT NULL,
	[title] [nvarchar](100) NULL,
	[description] [nvarchar](200) NULL,
	[ip] [nvarchar](50) NULL,
	[thumburl] [nvarchar](100) NULL,
	[musicurl] [nvarchar](100) NULL,
	[addtime] [datetime] NOT NULL,
	[isdelete] [int] NOT NULL,
	[ispublish] [int] NOT NULL,
	[publishtime] [datetime] NULL,
	[pagetype] [int] NOT NULL,
	[qcode] [nvarchar](100) NULL,
 CONSTRAINT [PK_scene] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'场景类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'scene', @level2type=N'COLUMN',@level2name=N'scenetype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'scene', @level2type=N'COLUMN',@level2name=N'userid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'scene', @level2type=N'COLUMN',@level2name=N'hitcount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'scene', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'scene', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分享缩略图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'scene', @level2type=N'COLUMN',@level2name=N'thumburl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'背景音乐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'scene', @level2type=N'COLUMN',@level2name=N'musicurl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'scene', @level2type=N'COLUMN',@level2name=N'addtime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除：0正常，-1删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'scene', @level2type=N'COLUMN',@level2name=N'isdelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否发布：0不发布，1发布' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'scene', @level2type=N'COLUMN',@level2name=N'ispublish'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'翻页类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'scene', @level2type=N'COLUMN',@level2name=N'pagetype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'二维码路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'scene', @level2type=N'COLUMN',@level2name=N'qcode'
GO
SET IDENTITY_INSERT [dbo].[scene] ON
INSERT [dbo].[scene] ([id], [scenetype], [userid], [hitcount], [title], [description], [ip], [thumburl], [musicurl], [addtime], [isdelete], [ispublish], [publishtime], [pagetype], [qcode]) VALUES (1, 0, 0, 0, N'ce', N'', N'::1', NULL, NULL, CAST(0x0000ABA600E1B67B AS DateTime), 0, 0, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[scene] OFF
/****** Object:  UserDefinedFunction [dbo].[REGEXP_SUBSTR]    Script Date: 07/09/2020 21:30:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  function [dbo].[REGEXP_SUBSTR]

(

@source ntext, --原字符串

@regexp varchar(1000), --正则表达式

@replace varchar(1000), --替换值

@globalReplace bit = 1, --是否是全局替换

@ignoreCase bit = 0 --是否忽略大小写

)

returnS varchar(1000) AS

begin

declare @hr integer

declare @objRegExp integer

declare @result varchar(5000)

exec @hr = sp_OACreate 'VBScript.RegExp', @objRegExp OUTPUT

IF @hr <> 0 begin

exec @hr = sp_OADestroy @objRegExp

return null

end

exec @hr = sp_OASetProperty @objRegExp, 'Pattern', @regexp

IF @hr <> 0 begin

exec @hr = sp_OADestroy @objRegExp

return null

end

exec @hr = sp_OASetProperty @objRegExp, 'Global', @globalReplace

IF @hr <> 0 begin

exec @hr = sp_OADestroy @objRegExp

return null

end

exec @hr = sp_OASetProperty @objRegExp, 'IgnoreCase', @ignoreCase

IF @hr <> 0 begin

exec @hr = sp_OADestroy @objRegExp

return null

end

exec @hr = sp_OAMethod @objRegExp, 'Replace', @result OUTPUT, @source, @replace

IF @hr <> 0 begin

exec @hr = sp_OADestroy @objRegExp

return null

end

exec @hr = sp_OADestroy @objRegExp

IF @hr <> 0 begin

return null

end

return @result

end
GO
/****** Object:  Table [dbo].[tb_urlStat]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_urlStat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url] [nvarchar](500) NULL,
	[sumNum] [int] NULL,
	[date] [datetime] NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_urlStat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_hourStat]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_hourStat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[years] [int] NULL,
	[months] [int] NULL,
	[days] [int] NULL,
	[sumNum] [int] NULL,
	[hour0] [int] NULL,
	[hour1] [int] NULL,
	[hour2] [int] NULL,
	[hour3] [int] NULL,
	[hour4] [int] NULL,
	[hour5] [int] NULL,
	[hour6] [int] NULL,
	[hour7] [int] NULL,
	[hour8] [int] NULL,
	[hour9] [int] NULL,
	[hour10] [int] NULL,
	[hour11] [int] NULL,
	[hour12] [int] NULL,
	[hour13] [int] NULL,
	[hour14] [int] NULL,
	[hour15] [int] NULL,
	[hour16] [int] NULL,
	[hour17] [int] NULL,
	[hour18] [int] NULL,
	[hour19] [int] NULL,
	[hour20] [int] NULL,
	[hour21] [int] NULL,
	[hour22] [int] NULL,
	[hour23] [int] NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_tb_hourStat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_dayStat]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_dayStat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ip] [varchar](30) NULL,
	[vcome] [varchar](500) NULL,
	[vpage] [varchar](500) NULL,
	[year] [int] NULL,
	[months] [int] NULL,
	[days] [int] NULL,
	[system] [varchar](50) NULL,
	[browser] [varchar](50) NULL,
	[source] [varchar](50) NULL,
	[resolution] [varchar](50) NULL,
	[date] [datetime] NULL,
	[sumNum] [int] NULL,
 CONSTRAINT [PK_tb_dayStat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[surveyInfo]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[surveyInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[classid] [int] NULL,
	[userinfo] [nvarchar](max) NULL,
	[options] [nvarchar](max) NULL,
	[other] [nvarchar](max) NULL,
	[hits] [int] NULL,
	[Addtime] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Info]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Info](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Sex] [nvarchar](50) NULL,
	[Birthday] [nvarchar](50) NULL,
	[Education] [nvarchar](50) NULL,
	[EduType] [nvarchar](50) NULL,
	[Major] [nvarchar](50) NULL,
	[GraduationTime] [nvarchar](50) NULL,
	[Address] [nvarchar](200) NULL,
	[Zipcode] [nvarchar](10) NULL,
	[IDCard] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[QQ] [nvarchar](50) NULL,
	[TelPhone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[LinkName] [nvarchar](50) NULL,
	[LinkPhone] [nvarchar](50) NULL,
	[ClassName] [nvarchar](50) NULL,
	[Money] [decimal](18, 2) NULL,
	[PayMethod] [nvarchar](10) NULL,
	[Addtime] [datetime] NOT NULL,
	[State] [int] NOT NULL,
 CONSTRAINT [PK_Student_Info] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Student_Info] ON
INSERT [dbo].[Student_Info] ([StudentID], [UserID], [Name], [Sex], [Birthday], [Education], [EduType], [Major], [GraduationTime], [Address], [Zipcode], [IDCard], [Phone], [QQ], [TelPhone], [Email], [LinkName], [LinkPhone], [ClassName], [Money], [PayMethod], [Addtime], [State]) VALUES (1, 1, N'测试', N'男', N'1974-06-25', N'', N'', N'', N'', N'', NULL, N'14022519740625431X', N'13520000000', N'', NULL, N'', N'', N'', NULL, NULL, NULL, CAST(0x0000ABF301601FB4 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Student_Info] OFF
/****** Object:  Table [dbo].[Student_Contract]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Contract](
	[ContractID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[Type] [nvarchar](50) NULL,
	[FilePath] [nvarchar](200) NULL,
	[Addtime] [datetime] NOT NULL,
	[Url] [nvarchar](200) NULL,
	[ContractFile] [nvarchar](200) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Student_Contract] PRIMARY KEY CLUSTERED 
(
	[ContractID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Student_Contract] ON
INSERT [dbo].[Student_Contract] ([ContractID], [StudentID], [Type], [FilePath], [Addtime], [Url], [ContractFile], [CreateTime]) VALUES (1, 1, N'测试合同模版', N'/contracts/13520000000/20200709212210/测试合同模版.pdf', CAST(0x0000ABF301602858 AS DateTime), N'/v.aspx?u=ikxo', N'/contracts/13520000000/20200709212210/13520000000.pdf', CAST(0x0000ABF301618D47 AS DateTime))
SET IDENTITY_INSERT [dbo].[Student_Contract] OFF
/****** Object:  Table [dbo].[Student_Class]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Class](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [nvarchar](50) NULL,
	[ParentID] [int] NOT NULL,
	[Addtime] [datetime] NOT NULL,
 CONSTRAINT [PK_Student_Class] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Stat_GetVjianList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Stat_GetVjianList    脚本日期: 2009-7-5 15:04:26 ******/

/****** 对象: 存储过程 dbo.Stat_GetVjianList    脚本日期: 2009-7-5 15:27:30 ******/
------------------------------------
--用途：获取vjian列表
--编写人：白海晓
--说明：
--时间：2009-7-5  14:46
------------------------------------
CREATE PROCEDURE [dbo].[Stat_GetVjianList]
@strTop varchar(50),
@strOrder varchar(50),
@strWhere varchar(500)
 AS 
 declare @strSQL varchar(6000)
     begin
        set @strSQL='SELECT  '+@strTop+'
	from (select top 1 (select count(*)  from [tempview]) as today, (select scount from rpt_daycount where vtime =convert(varchar(10),DATEADD(day, -1, getdate()),120))  as yesterday,GETDATE() as vdate, (select sum(scount) from rpt_daycount) as vtop,(select top 1 [starttime] from vjian) as starttime from rpt_daycount) as vjian Where  '+@strWhere+'   '+@strOrder+' '
    end
 --	FROM vjian  Where  '+@strWhere+'   '+@strOrder+' '	
EXEC(@strSQL)
GO
/****** Object:  StoredProcedure [dbo].[Stat_GetViewList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Stat_GetViewList    脚本日期: 2009-7-5 15:04:26 ******/

/****** 对象: 存储过程 dbo.Stat_GetViewList    脚本日期: 2009-7-5 15:27:30 ******/
------------------------------------
--用途：获取tempview列表
--编写人：白海晓
--说明：
--时间：2009-7-5  14:46
------------------------------------
CREATE PROCEDURE [dbo].[Stat_GetViewList]
@strTop varchar(50),
@strOrder varchar(50),
@strWhere varchar(500)
 AS 
 declare @strSQL varchar(6000)
     begin
        set @strSQL='SELECT  '+@strTop+'
	FROM [view ]  Where  '+@strWhere+'   '+@strOrder+' '
    end
 
EXEC(@strSQL)
GO
/****** Object:  StoredProcedure [dbo].[Stat_GetTempViewList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Stat_GetTempViewList    脚本日期: 2009-7-5 15:04:26 ******/

/****** 对象: 存储过程 dbo.Stat_GetTempViewList    脚本日期: 2009-7-5 15:27:30 ******/
------------------------------------
--用途：获取tempview列表
--编写人：白海晓
--说明：
--时间：2009-7-5  14:46
------------------------------------
CREATE PROCEDURE [dbo].[Stat_GetTempViewList]
@strTop varchar(50),
@strOrder varchar(50),
@strWhere varchar(500)
 AS 
 declare @strSQL varchar(6000)
     begin
        set @strSQL='SELECT  '+@strTop+'
	FROM TempView  Where  '+@strWhere+'   '+@strOrder+' '
    end
 
EXEC(@strSQL)
GO
/****** Object:  StoredProcedure [dbo].[Stat_GetRptDaycountList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Stat_GetRptDaycountList    脚本日期: 2009-7-5 15:04:26 ******/

/****** 对象: 存储过程 dbo.Stat_GetRptDaycountList    脚本日期: 2009-7-5 15:27:30 ******/
------------------------------------
--用途：获取RptDaycount列表
--编写人：白海晓
--说明：
--时间：2009-7-5  14:46
------------------------------------
CREATE PROCEDURE [dbo].[Stat_GetRptDaycountList]
@strTop varchar(50),
@strOrder varchar(50),
@strWhere varchar(500)
 AS 
 declare @strSQL varchar(6000)
     begin
        set @strSQL='SELECT  '+@strTop+'
	FROM rpt_daycount  Where  '+@strWhere+'   '+@strOrder+' '
    end
 
EXEC(@strSQL)
GO
/****** Object:  StoredProcedure [dbo].[WebHtml_UpdateWebHtmlInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.WebHtml_UpdateWebHtmlInfo    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.WebHtml_UpdateWebHtmlInfo    脚本日期: 2007-4-25 11:27:31 ******/
------------------------------------
--用途：修改WebHtml
--编写人：覃汝林
--说明：
--时间：2007-3-13 11:05
------------------------------------
CREATE PROCEDURE [dbo].[WebHtml_UpdateWebHtmlInfo]
@WebHtmlID int,
@TempID int,
@Title varchar(200),
@Content ntext,
@FilePath varchar(100),
@FileName varchar(50)
 AS 
	UPDATE WebHtml_Info SET 
	[TempID]=@TempID,[Title] = @Title,[Content] = @Content,[FilePath] = @FilePath,[FileName] = @FileName
	WHERE [WebHtmlID] = @WebHtmlID
GO
/****** Object:  StoredProcedure [dbo].[WebHtml_GetWebHtmlInfoModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.WebHtml_GetWebHtmlInfoModel    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.WebHtml_GetWebHtmlInfoModel    脚本日期: 2007-4-25 11:27:31 ******/
------------------------------------
--用途：得到WebHtml对象实体
--编写人：覃汝林
--说明：
--时间：2007-3-13 11:15
------------------------------------
CREATE PROCEDURE [dbo].[WebHtml_GetWebHtmlInfoModel]
@WebHtmlID int
 AS 
	SELECT 
	[WebHtmlID],[TempID],[Title],[Content],[AddTime],[FilePath],[FileName]
	 FROM WebHtml_Info
	 WHERE [WebHtmlID] = @WebHtmlID
GO
/****** Object:  StoredProcedure [dbo].[WebHtml_DeleteWebHtmlInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.WebHtml_DeleteWebHtmlInfo    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.WebHtml_DeleteWebHtmlInfo    脚本日期: 2007-4-25 11:27:31 ******/
------------------------------------
--用途：删除WebHtml
--编写人：覃汝林
--说明：
--时间：2007-3-13 11:05
------------------------------------
CREATE PROCEDURE [dbo].[WebHtml_DeleteWebHtmlInfo]
@WebHtmlID int
 AS 
	DELETE WebHtml_Info
	 WHERE [WebHtmlID] = @WebHtmlID
GO
/****** Object:  StoredProcedure [dbo].[WebHtml_AddWebHtmlInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.WebHtml_AddWebHtmlInfo    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.WebHtml_AddWebHtmlInfo    脚本日期: 2007-4-25 11:27:31 ******/
------------------------------------
--用途：添加WebHtml
--编写人：覃汝林
--说明：
--时间：2007-3-13 11:05
------------------------------------
CREATE PROCEDURE [dbo].[WebHtml_AddWebHtmlInfo]
@WebHtmlID int output,
@TempID int,
@Title varchar(200) ,
@Content ntext ,
@FilePath varchar(100) ,
@FileName varchar(50) 
 AS 
	INSERT INTO WebHtml_Info(
	[TempID],[Title],[Content],[FilePath],[FileName]
	)VALUES(
	@TempID,@Title,@Content,@FilePath,@FileName
	)
	SET @WebHtmlID = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Votes_AddVoteUser]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Votes_AddVoteUser    脚本日期: 2009-8-16 17:39:47 ******/


/****** 对象: 存储过程 dbo.Votes_AddVoteUser    脚本日期: 2009-8-16 16:28:25 ******/

------------------------------------
--用途：添加投票用户信息
--编写人：白海晓
--说明：
--时间：2009-8-16 16:28
------------------------------------
CREATE PROCEDURE [dbo].[Votes_AddVoteUser]
@userID int output,
@usernum varchar(50),
@sex varchar(50),
@job varchar(50),
@name varchar(50),
@age varchar(50),
@phone varchar(50),
@addr varchar(200),
@question varchar(1000),
@advise varchar(1000),
@vipnum varchar(50),
@statement varchar(2000),
@email varchar(50),
@status varchar(20),
@degree varchar(20),
@area varchar(100),
@zydh varchar(100),
@subjectid int
 AS 
	INSERT INTO votes_user(
	[usernum],[sex],[job],[name],[age],[phone],[addr],[question],[advise],[vipnum],[statement],[email],[status],[degree],[area],[zydh],[subjectid]
	)VALUES(
	@usernum,@sex,@job,@name,@age,@phone,@addr,@question,@advise,@vipnum,@statement,@email,@status,@degree,@area,@zydh,@subjectid
	)
              
              SET @userID = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Votes_AddVoteTitle]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Votes_AddVoteTitle    脚本日期: 2009-7-26 17:39:47 ******/


/****** 对象: 存储过程 dbo.Votes_AddVoteTitle    脚本日期: 2009-7-26 16:28:25 ******/

------------------------------------
--用途：添加投票问题信息
--编写人：白海晓
--说明：
--时间：2009-7-26 16:28
------------------------------------
CREATE PROCEDURE [dbo].[Votes_AddVoteTitle]
@ID int output,
@Title varchar(200) ,
@sid int,
@ms int,
@vcount int
 AS 
	INSERT INTO votes_Title(
	[Title],[sid],[ms],[vcount]
	)VALUES(
	@Title,@sid,@ms,@vcount
	)
              
              SET @ID = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Votes_AddVoteSubject]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Votes_AddVoteSubject    脚本日期: 2009-8-13 17:39:47 ******/


/****** 对象: 存储过程 dbo.Votes_AddVoteSubject    脚本日期: 2009-8-13 16:28:25 ******/

------------------------------------
--用途：添加投票主题信息
--编写人：白海晓
--说明：
--时间：2009-8-13 16:28
------------------------------------
CREATE PROCEDURE [dbo].[Votes_AddVoteSubject]
@ID int output,
@subject varchar(500),
@qx datetime,
@isuser int,
@isname int,
@isphone int,
@iszydh int,
@isarea int,
@isvipnum int,
@isemail int,
@isaddr int,
@issex int,
@isstatus int,
@isage int,
@isdegree int,
@wzzl varchar(2000),
@issue int
 AS 
	INSERT INTO votes_subject(
	[subject],[qx],[isuser],[isname],[isphone],[iszydh],[isarea],[isvipnum],[isemail],[isaddr],[issex],[isstatus],[isage],[isdegree],[wzzl],[issue]
	)VALUES(
	@subject,@qx,@isuser,@isname,@isphone,@iszydh,@isarea,@isvipnum,@isemail,@isaddr,@issex,@isstatus,@isage,@isdegree,@wzzl,@issue
	)
              
              SET @ID = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Vote_VisitVoteInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Vote_VisitVoteInfo    脚本日期: 2007-6-18 17:39:48 ******/


/****** 对象: 存储过程 dbo.Vote_VisitVoteInfo    脚本日期: 2007-6-16 16:41:26 ******/

------------------------------------
--用途：投票点击数增加
--编写人：邓德勇
--说明：
--时间：2007-6-16 16:41
------------------------------------
CREATE PROCEDURE [dbo].[Vote_VisitVoteInfo]
@VoteID int,
@VisitCount int output
 AS 
	UPDATE Vote_Info SET [VisitCount] = [VisitCount] + 1
	WHERE [VoteID] = @VoteID
             select  @VisitCount=VisitCount  from  Vote_Info  WHERE [VoteID] = @VoteID
GO
/****** Object:  StoredProcedure [dbo].[Vote_UpdateVoteInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Vote_UpdateVoteInfo    脚本日期: 2007-6-18 17:39:48 ******/


/****** 对象: 存储过程 dbo.Vote_UpdateVoteInfo    脚本日期: 2007-6-16 16:44:26 ******/

------------------------------------
--用途：修改投票信息
--编写人：邓德勇
--说明：
--时间：2007-6-16 16:44
------------------------------------
CREATE PROCEDURE [dbo].[Vote_UpdateVoteInfo]
@VoteID int,
@ClassID int,
@UserID int,
@UserName varchar(25),
@Title varchar(200),
@Tag varchar(200),
@Remark ntext,
@PicPath varchar(100) ,
@PicName varchar(100) ,
@CommFlag int,
@IsTop int,
@IsVouch int,
@IsDelete int
 AS 
	UPDATE Vote_Info SET 
	[ClassID] = @ClassID,[UserID] = @UserID,[UserName]=@UserName,[Title] = @Title,[Tag] = @Tag,[Remark] = @Remark,[PicPath] = @PicPath,[PicName] = @PicName,[CommFlag] = @CommFlag,[IsTop] = @IsTop,[IsVouch] = @IsVouch,[IsDelete] = @IsDelete
	WHERE [VoteID] = @VoteID
GO
/****** Object:  StoredProcedure [dbo].[Vote_GetVoteList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Vote_GetVoteList    脚本日期: 2007-6-18 17:39:47 ******/



/****** 对象: 存储过程 dbo.Vote_GetVoteList    脚本日期: 2007-6-16 16:38:26 ******/

------------------------------------
--用途：获取TOP投票列表
--编写人：邓德勇
--说明：
--时间：2007-6-16 16:38
------------------------------------
CREATE PROCEDURE [dbo].[Vote_GetVoteList]
@strClassID int = 0,
@strTop int,
@strOrder varchar(50),
@strWhere varchar(500)
 AS 
 declare @strSQL varchar(6000)
 if @strClassID=0 
     begin
        set @strSQL='SELECT Top '+str(@strTop)+'
	[VoteID],[ClassID],[UserID],[UserName],[Title],[Content],[PicPath],[PicName],[CommFlag],[AddTime],[VisitCount],[IsTop],[IsVouch],[VoteNum]
	FROM Vote_Info  Where  Aud=1  '+@strWhere+'  Order by '+@strOrder+' desc'
    end
 else
    begin
        set @strSQL='SELECT Top '+str(@strTop)+'
	[VoteID],[ClassID],[UserID],[UserName],[Title],[Content],[PicPath],[PicName],[CommFlag],[AddTime],[VisitCount],[IsTop],[IsVouch],[VoteNum]
	FROM Vote_Info where  Aud=1  And ClassID='+str(@strClassID)+'  '+@strWhere+'  Order by '+@strOrder+' desc'
    end
EXEC(@strSQL)
GO
/****** Object:  StoredProcedure [dbo].[Vote_GetVoteIDList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Vote_GetVoteIDList    脚本日期: 2007-6-18 17:39:47 ******/



/****** 对象: 存储过程 dbo.Vote_GetVoteIDList    脚本日期: 2007-6-16 16:36:25 ******/

------------------------------------
--用途：取得所有投票ID列表
--编写人：邓德勇
--说明：
--时间：2007-6-16 16:36
------------------------------------
CREATE PROCEDURE [dbo].[Vote_GetVoteIDList]
@strWhere varchar(1000)
 AS 
	SELECT 
	[VoteID] 
	 FROM Vote_Info Where Title  like '%'+@strWhere+'%'
              Order by VoteID desc
GO
/****** Object:  StoredProcedure [dbo].[Vote_ExistsIP]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Vote_ExistsIP    脚本日期: 2007-6-18 17:39:47 ******/
/****** 对象: 存储过程 dbo.Vote_ExistsIP    脚本日期: 2007-6-17 17:04:23 ******/

------------------------------------
--用途：IP是否已经参与
--编写人：邓德勇
--说明：
--时间：2007-6-17 17:10:52
------------------------------------
CREATE PROCEDURE [dbo].[Vote_ExistsIP]
@VoteID int,
@IP varchar(50)
AS
	DECLARE @TempID int
	IF @VoteID = 0
		Begin
			SELECT @TempID = count(1) FROM Vote_Options WHERE [IP] = @IP
		End 
	ELSE
		SELECT @TempID = count(1) FROM Vote_Options WHERE [IP] = @IP AND [VoteID]=@VoteID
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[Vote_DoVote]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Vote_DoVote    脚本日期: 2007-6-18 17:39:47 ******/
------------------------------------
--用途：投票
--编写人：邓德勇
--说明：
--时间：2007-6-17 17:10
------------------------------------
CREATE PROCEDURE [dbo].[Vote_DoVote]
@VoteID int,
@Ip varchar(20) 
 AS 
	UPDATE Vote_Info SET [VoteNum] = [VoteNum]+1 WHERE [VoteID] = @VoteID
	Insert into Vote_Options (VoteID,IP) Values (@VoteID,@IP)
GO
/****** Object:  StoredProcedure [dbo].[Vote_DeleteVoteInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Vote_DeleteVoteInfo    脚本日期: 2007-6-18 17:39:47 ******/

/****** 对象: 存储过程 dbo.Vote_DeleteVoteInfo    脚本日期: 2007-6-16 16:20:25 ******/

------------------------------------
--用途：删除投票信息
--编写人：邓德勇
--说明：
--时间：2007-6-16 16:20
------------------------------------
CREATE PROCEDURE [dbo].[Vote_DeleteVoteInfo]
@VoteID int
 AS 
	DELETE Vote_Info  WHERE [VoteID] = @VoteID
	DELETE Vote_Options Where [VoteID] = @VoteID
GO
/****** Object:  StoredProcedure [dbo].[Vote_UpdateVoteClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Vote_UpdateVoteClass    脚本日期: 2007-6-18 17:39:48 ******/



/****** 对象: 存储过程 dbo.Pro_UpdateProClass    脚本日期: 2007-6-16 14:06:26 ******/

------------------------------------
--用途：更新投票分类
--编写人：邓德勇
--说明：
--时间：2007-6-16 14:06
------------------------------------
CREATE PROCEDURE [dbo].[Vote_UpdateVoteClass]
(
	@ClassID int,
	@ParentID int,
	@ClassName nvarchar(50),
	@ClassIntro nvarchar(1000)
)
AS
	Declare @Err As int
	Set @Err=0
	Begin Tran
	--获取修改前的：ParentID,ClassDepth,ClassOrder
	Declare @oParentID As int
	Declare @oClassDepth As int
	Declare @oClassOrder As int
	Declare @oClassPath As nvarchar(1000)
	Select @oParentID = ParentID, @oClassDepth = ClassDepth,@oClassOrder = ClassOrder, @oClassPath = ClassPath  From Vote_Class Where ClassID = @ClassID
	IF @oParentID Is Null
    		Begin
    			Set @Err = 1
    			Goto theEnd
    		End
		--如果父ID没有改变，则直接修改栏目名和栏目简介
		IF @oParentID = @ParentID
    			Begin
    				Update Vote_Class Set ClassName = @ClassName,ClassIntro = @ClassIntro Where ClassID = @ClassID
    				IF @@Error <> 0
    					Set @Err = 2
    					Goto theEnd
    				End
				Declare @nClassPath As nvarchar(1000)
				Declare @nClassDepth As int
				Declare @nClassOrder As int
				--获取当前节点作为父节点所包含的节点数[包括自身] 注：如果返回 “1” 说明是单节点
				Declare @theCount As int
				Select @theCount = Count(ClassID) From Vote_Class Where ClassID=@ClassID Or ClassPath like ''+@oClassPath+'|%'
				IF @theCount Is Null
					Begin
    						Set @Err = 3
    						Goto theEnd
					End 
				IF @ParentID=0 --如果是设置为顶级节点，将节点设置为最后一个顶级节点
					Begin
						--Print '设置为顶级栏目'
						Set @nClassPath = Ltrim(Str(@ClassID))
						Set @nClassDepth =1
						Select @nClassOrder = Max(ClassOrder) From Vote_Class
						IF @nClassOrder Is NULL
                  					Begin
     								Set @Err = 4
     								Goto theEnd
     							End 
						Set @nClassOrder = @nClassOrder - @theCount + 1
						--更新三部分 1 节点本身 2 所有子节点 2 本树更改之前的后面记录的顺序
						--Print '更新本栏目之前位置后面的所有栏目[不包括本栏目下的子栏目]的：ClassOrder'
						Update Vote_Class Set ClassOrder = ClassOrder-@theCount Where (ClassOrder >@oClassOrder) And (ClassPath Not like ''+@oClassPath+'|%')
						IF @@Error <> 0
    							Begin
    								Set @Err = 7
    								Goto theEnd
    							End
						--Print '更新本栏目的：							ParentID,ClassPath,ClassDepth,ClassOrder,ClassName,ClassIntro'
						Print 'Order : '+Ltrim(Str(@nClassOrder))
						Update Vote_Class Set ParentID=@ParentID,ClassPath = @nClassPath,ClassDepth = @nClassDepth,ClassOrder = @nClassOrder, ClassName = @ClassName,ClassIntro = @ClassIntro Where ClassID = @ClassID
						IF @@Error <> 0
    							Begin
    								Set @Err = 5
    								Goto theEnd
    							End
						--Print '更新本栏目下的所有子栏目的：ClassPath,ClassDepth,ClassOrder'
             					Update Vote_Class Set ClassPath = Replace(ClassPath,@oClassPath,@nClassPath),ClassDepth = ClassDepth + (@nClassDepth-@oClassDepth),ClassOrder = ClassOrder+( @nClassOrder-@oClassOrder) Where ClassPath like ''+@oClassPath+'|%'
						IF @@Error <> 0
    							Begin
    								Set @Err = 6
    								Goto theEnd
    							End
					End 
				Else
					Begin
						--获取未来父节点的相关信息,并设置本节点的相关值
						Select @nClassDepth = ClassDepth,@nClassPath = ClassPath From Vote_Class Where ClassID = @ParentID
						IF @nClassDepth Is  NULL Or @nClassPath Is Null
      							Begin
      								Set @Err = 8
      								Goto theEnd
      							End 
						Set @nClassDepth = @nClassDepth +1
						Select @nClassOrder =Max(ClassOrder) From Vote_Class Where ClassID = @ParentID Or  ClassPath like ''+@nClassPath+'|%'
						IF @nClassOrder Is  NULL
      							Begin
      								Set @Err = 9
      								Goto theEnd
      							End 
						Set @nClassPath = @nClassPath +'|'+ Ltrim(Str(@ClassID))
						IF @nClassOrder = @oClassOrder+1 --如果新的父节点是原来位置上端最近一个兄弟,则所有节点的顺序都不改变
                    					Begin
								Update Vote_Class Set ParentID=@ParentID,ClassPath = @nClassPath,ClassDepth = @nClassDepth, ClassName = @ClassName,ClassIntro = @ClassIntro Where ClassID = @ClassID
								IF @@Error <> 0
    									Begin
    										Set @Err = 10
    										Goto theEnd
    									End
       							End
						Set  @nClassOrder = @nClassOrder + 1 
						--更新三部分 1 本树更改之前的后面（或前面）记录的顺序 1 节点本身  3 所有子节点
						--分为向上移或象下移
						--Print '更新本栏目之前位置后面的所有栏目[或者本栏目之后位置]  [不包括本栏目下的子栏目]的：ClassOrder'
						IF @nClassOrder < @oClassOrder
							Begin
								Update Vote_Class Set ClassOrder = ClassOrder+@theCount Where ClassOrder<@oClassOrder  And ClassOrder >=@nClassOrder And (ClassPath Not like ''+@oClassPath+'|%') And ClassID<>@ClassID
								IF @@Error <> 0
        								Begin
        									Set @Err = 12
        									Goto theEnd
        								End
							End
						Else
							Begin
								Update Vote_Class Set ClassOrder = ClassOrder-@theCount Where ClassOrder >@oClassOrder And ClassOrder<@nClassOrder  And (ClassPath Not like ''+@oClassPath+'|%') And ClassID<>@ClassID
								IF @@Error <> 0
        								Begin
        									Set @Err = 13
        									Goto theEnd
        								End
							End
						--Print '更新本栏目的：						ParentID,ClassPath,ClassDepth,ClassOrder,ClassName,ClassIntro'
						Print 'Order : '+Ltrim(Str(@nClassOrder))
						IF @nClassOrder > @oClassOrder
						Set @nClassOrder = @nClassOrder - @theCount
						Update Vote_Class Set ParentID=@ParentID,ClassPath = @nClassPath,ClassDepth = @nClassDepth,ClassOrder = @nClassOrder, ClassName = @ClassName,ClassIntro = @ClassIntro Where ClassID = @ClassID
						IF @@Error <> 0
    							Begin
    								Set @Err = 10
    								Goto theEnd
    							End
						--Print '更新本栏目下的所有子栏目的：ClassPaht,ClassDepth,ClassOrder'
             					Update Vote_Class Set ClassPath = Replace(ClassPath,@oClassPath,@nClassPath),ClassDepth = ClassDepth + (@nClassDepth-@oClassDepth),ClassOrder = ClassOrder+(@nClassOrder-@oClassOrder) Where ClassPath like ''+@oClassPath+'|%'
						IF @@Error <> 0
    							Begin
    								Set @Err = 11
    								Goto theEnd
    							End
					End
					theEnd:
					IF @Err<>0 --如果有错误则返回错误号
   						Begin
   							Rollback Tran
   							Return @Err
   						End
					Else     --如果没有错误就返回0
   						Begin
   							Commit Tran
   							Return 0
   					End
GO
/****** Object:  StoredProcedure [dbo].[Vote_GetVoteInfoModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Vote_GetVoteInfoModel    脚本日期: 2007-6-18 17:39:47 ******/



/****** 对象: 存储过程 dbo.Vote_GetVoteInfoModel    脚本日期: 2007-6-16 16:23:26 ******/

------------------------------------
--用途：得到投票信息对象实体
--编写人：邓德勇
--说明：
--时间：2007-6-16 16:23
------------------------------------
CREATE PROCEDURE [dbo].[Vote_GetVoteInfoModel]
@VoteID int
 AS 
	SELECT 
	a.[VoteID],a.[ClassID],a.[UserID],a.[Tag],a.[UserName],a.[Title],a.[Remark],a.[PicPath],a.[PicName],a.[CommFlag],a.[AddTime],a.[VisitCount],a.[IsTop],a.[IsVouch],a.[IsDelete],a.[Aud],b.[ClassName],a.[VoteNum]
	 FROM Vote_Info a, 
                         Vote_Class b
	 WHERE a.[ClassID]=b.[ClassID]  AND  a.[VoteID] = @VoteID
GO
/****** Object:  StoredProcedure [dbo].[Vote_GetVoteClassModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Vote_GetVoteClassModel    脚本日期: 2007-6-18 17:39:47 ******/



/****** 对象: 存储过程 dbo.Vote_GetVoteClassModel    脚本日期: 2007-6-16 14:04:25 ******/

------------------------------------
--用途：得到投票分类对象实体
--编写人：邓德勇
--说明：
--时间：2007-6-16 14:04
------------------------------------
CREATE PROCEDURE [dbo].[Vote_GetVoteClassModel]
	@ClassID int
 AS 
	SELECT [ClassID],[ClassName],[ParentID],[ClassPath],[ClassDepth],[ClassOrder],[ClassIntro] FROM Vote_Class WHERE [ClassID] = @ClassID
GO
/****** Object:  StoredProcedure [dbo].[Vote_GetVoteClassList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Vote_GetVoteClassList    脚本日期: 2007-6-18 17:39:47 ******/



/****** 对象: 存储过程 dbo.Vote_GetVoteClassList    脚本日期: 2007-6-16 14:02:25 ******/

/****** 对象: 存储过程 dbo.Pro_GetProClassList    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：取得所有投票分类列表
--编写人：邓德勇
--说明：
--时间：2007-6-16 14:03
------------------------------------
CREATE PROCEDURE [dbo].[Vote_GetVoteClassList]
	@strWhere varchar(1000)
 	AS
		SELECT ClassID, ClassName, ParentID, ClassPath, ClassDepth, ClassOrder,ClassIntro FROM Vote_Class ORDER BY ClassOrder
GO
/****** Object:  StoredProcedure [dbo].[Vote_DeleteVoteClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Vote_DeleteVoteClass    脚本日期: 2007-6-18 17:39:47 ******/




/****** 对象: 存储过程 dbo.Vote_DeleteVoteClass    脚本日期: 2007-6-16 13:59:25 ******/

------------------------------------
--用途：删除投票分类
--编写人：邓德勇
--说明：
--时间：2007-6-16 13:59
------------------------------------
CREATE  PROCEDURE [dbo].[Vote_DeleteVoteClass]
(
	@ClassID int
)
AS
	-----默认情况屏蔽删除------
         --set @ClassID=0
	-----默认情况屏蔽删除------
	Declare @Err As int
	Set @Err = 0
	Begin Tran
	--首先查询该节点下是否有子节点
	Select ClassID From Vote_Class Where ParentID = @ClassID
	IF @@RowCount<>0
    		Begin
    			Set @Err = 1
    			Goto theEnd
    		End
	--获取该节点的ClassOrder,为了删除后整理其他记录的顺序
	Declare @ClassOrder As int
	Select @ClassOrder = ClassOrder From Vote_Class Where ClassID = @ClassID
	IF @ClassOrder Is NUll
    		Begin
      			Set @Err =2
      			Goto theEnd
    		End 
	--更新其他记录的ClassOrder
	Update Vote_Class Set ClassOrder = ClassOrder -1 Where ClassOrder >@ClassOrder 
	IF @@Error<>0
    		Begin
      			Set @Err =3
      			Goto theEnd
    		End 
	--删除操作
	Delete From Vote_Class Where ClassID=@ClassID
	IF @@Error<>0
    		Begin
      			Set @Err =4
      			Goto theEnd
  		End 
	--更新其他记录的ClassID
	--Update Pro_Class Set ClassID= ClassID - 1 Where ClassID >@ClassID 
	--IF @@Error<>0
	--    Begin
	--      Set @Err =5
	--      Goto theEnd
	--    End 
	theEnd:
	IF @Err = 0 
    		Begin
      			Commit Tran
      			Return 0 --删除成功
    		End
	Else
    		Begin
      			IF @Err=1
  				Begin
      					Rollback Tran
      					Return 1 --有子节点
				End
      			Else
				Begin
      					Rollback Tran
      					Return 2--未知错误
				End
    		End
GO
/****** Object:  StoredProcedure [dbo].[Vote_CreateVoteClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Vote_CreateVoteClass    脚本日期: 2007-6-18 17:39:47 ******/



/****** 对象: 存储过程 dbo.Vote_CreateVoteClass    脚本日期: 2007-6-16 13:54:25 ******/

------------------------------------
--用途：增加投票分类
--编写人：邓德勇
--说明：
--时间：2007-6-16 13:54
------------------------------------
CREATE PROCEDURE [dbo].[Vote_CreateVoteClass]
(
	@ParentID int,
	@ClassName nvarchar(50),
	@ClassIntro nvarchar(1000)
)
AS
	Declare @Err As int
	Set @Err=0
	Begin Tran
	--通过现有记录获取栏目ID
	Declare @ClassID As int
	Declare @ClassDepth As int
	Select @ClassID = Max(ClassID) From Vote_Class
	IF @ClassID Is Not Null
		Set @ClassID = @ClassID+1
	Else
		Set @ClassID = 1
	--判断是否是顶级栏目，设置其ClassPath和ClassOrder
	Declare @ClassPath As nvarchar(1000)
	Declare @ClassOrder As int
	IF @ParentID = 0
		Begin
			Set @ClassPath =Ltrim(Str(@ClassID))
			Select @ClassOrder = Max(ClassOrder) From Vote_Class
			IF @ClassOrder Is Not Null
				Set @ClassOrder = @ClassOrder + 1
			Else --如果没有查询到记录，说明这是第一条记录
				Set @ClassOrder = 1
			--深度
			Set @ClassDepth = 1
		End
	Else
		Begin
			--获取父节点的路径和深度
			Select @ClassPath = ClassPath ,@ClassDepth = ClassDepth From Vote_Class Where ClassID=@ParentID
			IF @ClassPath Is Null
				Begin
					Set @Err = 1
					Goto theEnd
				End
			--获取同父节点下的最大序号
			Select @ClassOrder = Max(ClassOrder) From Vote_Class Where ClassPath like ''+@ClassPath+'|%'  Or ClassID = @ParentID
			IF @ClassOrder Is Not Null --如果序号存在，那么将该序号后的所有序号都加1
				Begin 
					--更新当前要插入节点后所有节点的序号
					Update Vote_Class Set ClassOrder = ClassOrder +1 Where ClassOrder>@ClassOrder
					--同父节点下的最大序号加上1，构成自己的序号
					Set @ClassOrder = @ClassOrder + 1
				End 
			Else
				Begin
					Set @Err=1
					Goto theEnd
				End
			--父节点的路径加上自己的ID号，构成自己的路径
			Set @ClassPath = @ClassPath + '|' + Ltrim(Str(@ClassID))
			--深度
			Set @ClassDepth = @ClassDepth+1
		End
		Insert Into Vote_Class(ClassID,ClassName,ParentID,ClassPath,ClassDepth,ClassOrder,ClassIntro)  
			values(@ClassID,@ClassName,@ParentID,@ClassPath,@ClassDepth,@ClassOrder,@ClassIntro)
		IF @@Error<>0 
			Begin
				Set @Err=1
				Goto theEnd
			End
		--更新当前记录之后的记录的ORDER
		--Update Pro_Class Set ClassOrder = ClassOrder+1 Where ClassOrder  > @ClassOrder 
		theEnd:
		IF @Err=0
			Begin
				Commit Tran
				Return @ClassID
			End
		Else
			Begin
    				Rollback Tran
				Return 0
			End
GO
/****** Object:  StoredProcedure [dbo].[Vote_AddVoteInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Vote_AddVoteInfo    脚本日期: 2007-6-18 17:39:47 ******/


/****** 对象: 存储过程 dbo.Vote_AddVoteInfo    脚本日期: 2007-6-16 16:28:25 ******/

------------------------------------
--用途：添加投票信息
--编写人：邓德勇
--说明：
--时间：2007-6-16 16:28
------------------------------------
CREATE PROCEDURE [dbo].[Vote_AddVoteInfo]
@VoteID int output,
@ClassID int ,
@UserID int ,
@UserName varchar(25),
@Title varchar(200) ,
@Tag varchar(200) ,
@Remark ntext ,
@PicPath varchar(100) ,
@PicName varchar(100) ,
@CommFlag int,
@Aud int,
@VoteNum int
 AS 
	INSERT INTO Vote_Info(
	[ClassID],[UserID],[UserName],[Title],[Tag],[Remark],[PicPath],[PicName],[CommFlag],[Aud],[VoteNum]
	)VALUES(
	@ClassID,@UserID,@UserName,@Title,@Tag,@Remark,@PicPath,@PicName,@CommFlag,@Aud,@VoteNum
	)
              
              SET @VoteID = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Stat_UpdateVjian]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Stat_UpdateVjian    脚本日期: 2009-7-8 21:04:26 ******/

/****** 对象: 存储过程 dbo.Stat_UpdateVjian    脚本日期: 2009-7-8 21:27:30 ******/
------------------------------------
--用途：修改简数据库表
--编写人：白海晓
--说明：
--时间：2009-7-8 21:04
------------------------------------
CREATE PROCEDURE [dbo].[Stat_UpdateVjian]
@today int,
@yesterday int,
@vdate datetime,
@vtop int,
@starttime datetime
 AS 
	UPDATE vjian SET 
	[today] = @today,[yesterday] = @yesterday,[vdate]=@vdate,[vtop] = @vtop,[starttime] = @starttime
GO
/****** Object:  Table [dbo].[Video_Info]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video_Info](
	[VideoID] [int] IDENTITY(1,1) NOT NULL,
	[ClassID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Title] [nvarchar](200) NULL,
	[PicUrl] [nvarchar](200) NULL,
	[GoUrl] [nvarchar](200) NULL,
	[Remark] [nvarchar](max) NULL,
	[VideoPath] [nvarchar](200) NULL,
	[VideoName] [nvarchar](100) NULL,
	[Keyword] [nvarchar](100) NULL,
	[CommFlag] [int] NOT NULL,
	[Aud] [int] NOT NULL,
	[AddTime] [datetime] NOT NULL,
	[IsDelete] [int] NOT NULL,
	[IsTop] [int] NOT NULL,
	[IsVouch] [int] NOT NULL,
	[TopTime] [datetime] NOT NULL,
	[VisitCount] [int] NOT NULL,
	[VouchTime] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Video_GetVideoList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Video_GetVideoList    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.Video_GetVideoList    脚本日期: 2007-4-25 11:27:31 ******/
------------------------------------
--用途：获取TOP视频列表
--编写人：覃汝林
--说明：
--时间：2007-2-27  10:46
------------------------------------
CREATE PROCEDURE [dbo].[Video_GetVideoList]
@strClassID int = 0,
@strTop int,
@strOrder varchar(50),
@strWhere varchar(500)
 AS 
 declare @strSQL varchar(6000)
 if @strClassID=0 
     begin
        set @strSQL='SELECT Top '+str(@strTop)+'
	[VideoID],[ClassID],[UserID],[UserName],[Title],[Tag],[VideoPath],[VideoName],[CommFlag],[AddTime],[VisitCount],[IsTop],[IsVouch]
	FROM Video_Info  Where  Aud=1  '+@strWhere+'  Order by '+@strOrder+' desc'
    end
 else
    begin
        set @strSQL='SELECT Top '+str(@strTop)+'
	[VideoID],[ClassID],[UserID],[UserName],[Title],[Tag],[VideoPath],[VideoName],[CommFlag],[AddTime],[VisitCount],[IsTop],[IsVouch]
	FROM Video_Info where  Aud=1  And ClassID='+str(@strClassID)+'  '+@strWhere+'  Order by '+@strOrder+' desc'
    end
EXEC(@strSQL)
GO
/****** Object:  Table [dbo].[Temp_Info]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Temp_Info](
	[TempID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Sort] [int] NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[Content] [ntext] NOT NULL,
 CONSTRAINT [PK_Temp_Info] PRIMARY KEY CLUSTERED 
(
	[TempID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Video_Class]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video_Class](
	[ClassID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClassName] [nvarchar](50) NULL,
	[ParentID] [int] NOT NULL,
	[ClassPath] [nvarchar](1000) NULL,
	[ClassDepth] [int] NOT NULL,
	[ClassOrder] [int] NOT NULL,
	[ClassIntro] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Video_Class_1] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Video_AddVideoComm]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Video_AddVideoComm    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.Video_AddVideoComm    脚本日期: 2007-4-25 11:27:31 ******/
------------------------------------
--用途：发表评论
--编写人：覃汝林
--说明：
--时间：2007-1-31  14:47
------------------------------------
CREATE PROCEDURE [dbo].[Video_AddVideoComm]
@CommID int output,
@UserID int ,
@UserName varchar(50),
@VideoID int ,
@Content ntext ,
@Ip varchar(50) ,
@Fen int,
@VideoTime varchar(50)
 AS 
	INSERT INTO Video_Comm(
	[UserID],[UserName],[VideoID],[Content],[Ip],[Fen],[VideoTime]
	)VALUES(
	@UserID,@UserName,@VideoID,@Content,@Ip,@Fen,@VideoTime
	)
   SET @CommID = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[ins_tempview]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  Stored Procedure dbo.ins_tempview    Script Date: 2006-3-31 14:36:52 ******/



CREATE proc [dbo].[ins_tempview]  ---插入到临时的统计表
 @vyear	int,
 @vmonth	int,
 @vday		int,
 @vhour	int,
 @vtime		datetime,
 @vweek	int,
 @vip		nvarchar(255),
 @vwhere	nvarchar(255),
 @vwheref	nvarchar(255),
 @vcome	nvarchar(255),
 @vpage	nvarchar(255),
 @vsoft		nvarchar(255),
 @vos		nvarchar(255),
 @vwidth	int
AS
       insert into tempview(vyear,vmonth,vday,vhour,vtime,vweek,vip,vwhere,vwheref,vcome,vpage,vsoft,vos,vwidth) values (@vyear,@vmonth,@vday,@vhour,@vtime,@vweek,@vip,@vwhere,@vwheref,@vcome,@vpage,@vsoft,@vos,@vwidth)
GO
/****** Object:  StoredProcedure [dbo].[auto_temptoview]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  Stored Procedure dbo.auto_temptoview    Script Date: 2006-3-31 14:36:52 ******/




--作业，从当天的临时表tempview中导入数据到view中
CREATE   PROCEDURE  [dbo].[auto_temptoview] 

AS
   DECLARE @VISIT_NO  INT --访问人数
   DECLARE @sISIT_NO  INT --访问人数
   DECLARE @random  INT --随机数
   DECLARE @month  INT --月
   DECLARE @day  INT --日
   DECLARE @day1  INT --日

   INSERT  INTO [view] (vyear,vmonth,vday,vhour,vtime,vweek,vip,vwhere,vwheref,vcome,vpage,vsoft,vos,vwidth,bakdays,bakstats,bakpage)
   select vyear,vmonth,vday,vhour,vtime,vweek,vip,vwhere,vwheref,vcome,vpage,vsoft,vos,vwidth,bakdays,bakstats,bakpage from tempview
   truncate table tempview  --清空临时表
   
 
   --插入昨天的统计结果到rpt_daycount表中  
   insert into rpt_daycount select year(a.vtime) as vyear,month(a.vtime) as vmonth,day(a.vtime) as vday,vtime,scount,0 from (select convert(varchar(10),vtime,120) as vtime,count(*) as scount from [view] where  convert(varchar(10),vtime,120)=convert(varchar(10),DATEADD(day, -1, getdate()),120)  group by convert(varchar(10),vtime,120)) as a

   select @VISIT_NO=count(*)  from (select vday,count(id) as theval from [view]  where  convert(varchar(10),vtime,120)=convert(varchar(10),DATEADD(day, -1, getdate()),120) group by vday ,vip ) as b group by vday order by vday 
   
   update  rpt_daycount set vcount=@VISIT_NO where vtime=convert(varchar(10),DATEADD(day, -1, getdate()),120)

	SELECT @sISIT_NO=scount FROM rpt_daycount where vtime=convert(varchar(10),DATEADD(day, -1, getdate()),120)

	update  rpt_daycount set scount=@sISIT_NO*10 where vtime=convert(varchar(10),DATEADD(day, -1, getdate()),120)
	
	
	
	--判断月份
	select @month = Month(getdate())
	select @day = Day(getdate())	
	select @day1 = Day(DATEADD(day, +1, getdate()))
	
	if @day =1
	BEGIN
		SELECT @random = scount FROM rpt_daycount where vtime=convert(varchar(10),DATEADD(day, -1, getdate()),120)
		WHILE @random < 31000
		BEGIN
	   update  rpt_daycount set scount=scount+2000 where vtime=convert(varchar(10),DATEADD(day, -1, getdate()),120)
	   
	   IF (SELECT scount FROM rpt_daycount where vtime=convert(varchar(10),DATEADD(day, -1, getdate()),120)) > 31000
		  BREAK
	   ELSE
		  CONTINUE
		END
	end
	else 
	BEGIN
		if @day1 = 1
		BEGIN
			SELECT @random = sum(scount) FROM rpt_daycount where vyear = Year(getdate()) AND vmonth = Month(getdate())
			--执行循环添加数据超过3万
		   WHILE @random < 850000
			BEGIN
		   update  rpt_daycount set scount=scount+2000  where vyear = Year(getdate()) AND vmonth = Month(getdate())
		   
		   IF (SELECT sum(scount) FROM rpt_daycount where vyear = Year(getdate()) AND vmonth = Month(getdate())) > 850000
			  BREAK
		   ELSE
			  CONTINUE
			END
		END
	end	
	
	  
   --插入昨天的统计结果到rpt_daycount_temp表中
   insert into rpt_daycount_temp select year(a.vtime) as vyear,month(a.vtime) as vmonth,day(a.vtime) as vday,vtime,scount,0 from (select convert(varchar(10),vtime,120) as vtime,count(*) as scount from [view] where  convert(varchar(10),vtime,120)=convert(varchar(10),DATEADD(day, -1, getdate()),120)  group by convert(varchar(10),vtime,120)) as a
   update  rpt_daycount_temp set vcount=@VISIT_NO where vtime=convert(varchar(10),DATEADD(day, -1, getdate()),120)
GO
/****** Object:  StoredProcedure [dbo].[WenXuan_GetWenXuanList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.WenXuan_GetWenXuanList    脚本日期: 2009-6-27 15:04:24 ******/

/****** 对象: 存储过程 dbo.WenXuan_GetWenXuanList    脚本日期: 2009-6-27 15:27:29 ******/
------------------------------------
--用途：获取TOP文宣资料列表
--编写人：白海晓
--说明：
--时间：2009-6-27  15:46
------------------------------------
CREATE PROCEDURE [dbo].[WenXuan_GetWenXuanList]
@strClassID int = 0,
@strTop int,
@strOrder varchar(50),
@strWhere varchar(500)
 AS 
 declare @strSQL varchar(6000)
 if @strClassID=0 
     begin
        set @strSQL='SELECT Top '+str(@strTop)+'
	[ArticleID],[ClassID],[PicID],[PicUrl],[Title],[Content],[Tag],[AddTime],[VisitCount],[IsTop],[IsVouch],[GoUrl],[shoujia],[danwei]
	FROM wenxuan  Where 1=1 '+@strWhere+'  Order by '+@strOrder+' desc'
    end
 else
    begin
        set @strSQL='SELECT Top '+str(@strTop)+'
	[ArticleID],[ClassID],[PicID],[PicUrl],[Title],[Content],[Tag],[AddTime],[VisitCount],[IsTop],[IsVouch],[GoUrl],[shoujia],[danwei]
	FROM wenxuan where ClassID='+str(@strClassID)+'  '+@strWhere+'  Order by '+@strOrder+' desc'
    end
EXEC(@strSQL)
GO
/****** Object:  Table [dbo].[Artilce_Comment]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artilce_Comment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ArticleID] [int] NOT NULL,
	[ParentID] [int] NOT NULL,
	[Openid] [nvarchar](50) NULL,
	[UserName] [nvarchar](100) NULL,
	[UserIP] [nvarchar](255) NULL,
	[Content] [ntext] NULL,
	[IsLock] [int] NOT NULL,
	[AddTime] [datetime] NOT NULL,
	[Support] [int] NOT NULL,
	[NoSupport] [int] NOT NULL,
 CONSTRAINT [PK_Artilce_Comment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Artilce_Comment', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Artilce_Comment', @level2type=N'COLUMN',@level2name=N'ArticleID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父评论ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Artilce_Comment', @level2type=N'COLUMN',@level2name=N'ParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Artilce_Comment', @level2type=N'COLUMN',@level2name=N'Openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Artilce_Comment', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Artilce_Comment', @level2type=N'COLUMN',@level2name=N'UserIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Artilce_Comment', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Artilce_Comment', @level2type=N'COLUMN',@level2name=N'IsLock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发表时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Artilce_Comment', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
/****** Object:  StoredProcedure [dbo].[Temp_DeleteTempInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Temp_DeleteTempInfo    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.Temp_DeleteTempInfo    脚本日期: 2007-4-25 11:27:31 ******/
------------------------------------
--用途：删除模板
--编写人：覃汝林
--说明：默情况屏蔽删除
--时间：2007-1-24  16:57
------------------------------------
CREATE PROCEDURE [dbo].[Temp_DeleteTempInfo]
@TempID int
 AS 
	--DELETE Temp_Info
	--WHERE [TempID] = @TempID
GO
/****** Object:  StoredProcedure [dbo].[WenXuan_UpdateWenXuanInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
--说明：
--时间：2009-6-27 8:54
------------------------------------
CREATE PROCEDURE [dbo].[WenXuan_UpdateWenXuanInfo]
@ArticleID int,
@ClassID int,
@UserID int,
@PicID int,
@PicUrl varchar(100),
@Title varchar(200),
@Tag varchar(200),
@Content ntext,
@CommFlag int,
@VisitCount int,
@IsTop int,
@IsVouch int,
@IsDelete int,
@SubTitle varchar(200),
@AddTime datetime,
@Importance int,
@GoUrl varchar(200),
@shoujia varchar(100),
@danwei varchar(100),
@bianhao varchar(100)
 AS 
	UPDATE wenxuan SET 
	[ClassID] = @ClassID,[UserID] = @UserID,[PicID] = @PicID,[PicUrl] = @PicUrl,[Title] = @Title,[Tag] = @Tag,[Content] = @Content,[CommFlag] = @CommFlag,[VisitCount] = @VisitCount,[IsTop] = @IsTop,[IsVouch] = @IsVouch,[IsDelete] = @IsDelete,[SubTitle]=@SubTitle,[AddTime]=@AddTime,[Importance]=@Importance,[GoUrl]=@GoUrl,[shoujia]=@shoujia,[danwei]=@danwei,[bianhao]=@bianhao
	WHERE [ArticleID] = @ArticleID
GO
/****** Object:  StoredProcedure [dbo].[WenXuan_UpdateWenXuanClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.WenXuan_UpdateWenXuanClass    脚本日期: 2009-6-27 11:04:24 ******/

/****** 对象: 存储过程 dbo.WenXuan_UpdateWenXuanClass    脚本日期: 2009-6-27 11:27:29 ******/
------------------------------------
--用途：更新文宣资料分类
--编写人：白海晓
--说明：
--时间：2009-6-27 11:06
------------------------------------
CREATE PROCEDURE [dbo].[WenXuan_UpdateWenXuanClass]
(
@ClassID int,
@ParentID int,
@ClassName nvarchar(50),
@ClassIntro nvarchar(1000),
@DemoID int
)
AS
Declare @Err As int
Set @Err=0
Begin Tran
--获取修改前的：ParentID,ClassDepth,ClassOrder
Declare @oParentID As int
Declare @oClassDepth As int
Declare @oClassOrder As int
Declare @oClassPath As nvarchar(1000)
Select @oParentID = ParentID, @oClassDepth = ClassDepth,@oClassOrder = ClassOrder, @oClassPath = ClassPath  From wenxuan_Class Where ClassID = @ClassID
IF @oParentID Is Null
    Begin
    Set @Err = 1
    Goto theEnd
    End
--如果父ID没有改变，则直接修改栏目名和栏目简介
IF @oParentID = @ParentID
    Begin
    Update wenxuan_Class Set ClassName = @ClassName,ClassIntro = @ClassIntro,DemoID=@DemoID Where ClassID = @ClassID
    IF @@Error <> 0
    Set @Err = 2
    Goto theEnd
    End
Declare @nClassPath As nvarchar(1000)
Declare @nClassDepth As int
Declare @nClassOrder As int
--获取当前节点作为父节点所包含的节点数[包括自身] 注：如果返回 “1” 说明是单节点
Declare @theCount As int
Select @theCount = Count(ClassID) From wenxuan_Class Where ClassID=@ClassID Or ClassPath like ''+@oClassPath+'|%'
IF @theCount Is Null
Begin
    Set @Err = 3
    Goto theEnd
End 
IF @ParentID=0 --如果是设置为顶级节点，将节点设置为最后一个顶级节点
Begin
--Print '设置为顶级栏目'
Set @nClassPath = Ltrim(Str(@ClassID))
Set @nClassDepth =1
Select @nClassOrder = Max(ClassOrder) From wenxuan_Class
IF @nClassOrder Is NULL
                  Begin
     Set @Err = 4
     Goto theEnd
     End 
Set @nClassOrder = @nClassOrder - @theCount + 1
--更新三部分 1 节点本身 2 所有子节点 2 本树更改之前的后面记录的顺序
--Print '更新本栏目之前位置后面的所有栏目[不包括本栏目下的子栏目]的：ClassOrder'
Update wenxuan_Class Set ClassOrder = ClassOrder-@theCount Where (ClassOrder >@oClassOrder) And (ClassPath Not like ''+@oClassPath+'|%')
IF @@Error <> 0
    Begin
    Set @Err = 7
    Goto theEnd
    End
--Print '更新本栏目的：ParentID,ClassPath,ClassDepth,ClassOrder,ClassName,ClassIntro,DemoID'
Print 'Order : '+Ltrim(Str(@nClassOrder))
Update wenxuan_Class Set ParentID=@ParentID,ClassPath = @nClassPath,ClassDepth = @nClassDepth,ClassOrder = @nClassOrder, ClassName = @ClassName,ClassIntro = @ClassIntro,DemoID=@DemoID Where ClassID = @ClassID
IF @@Error <> 0
    Begin
    Set @Err = 5
    Goto theEnd
    End
--Print '更新本栏目下的所有子栏目的：ClassPath,ClassDepth,ClassOrder'
             Update wenxuan_Class Set ClassPath = Replace(ClassPath,@oClassPath,@nClassPath),ClassDepth = ClassDepth + (@nClassDepth-@oClassDepth),ClassOrder = ClassOrder+( @nClassOrder-@oClassOrder) Where ClassPath like ''+@oClassPath+'|%'
IF @@Error <> 0
    Begin
    Set @Err = 6
    Goto theEnd
    End
End 
Else
Begin
--获取未来父节点的相关信息,并设置本节点的相关值
Select @nClassDepth = ClassDepth,@nClassPath = ClassPath From wenxuan_Class Where ClassID = @ParentID
IF @nClassDepth Is  NULL Or @nClassPath Is Null
      Begin
      Set @Err = 8
      Goto theEnd
      End 
Set @nClassDepth = @nClassDepth +1
Select @nClassOrder =Max(ClassOrder) From wenxuan_Class Where ClassID = @ParentID Or  ClassPath like ''+@nClassPath+'|%'
IF @nClassOrder Is  NULL
      Begin
      Set @Err = 9
      Goto theEnd
      End 
Set @nClassPath = @nClassPath +'|'+ Ltrim(Str(@ClassID))
IF @nClassOrder = @oClassOrder+1 --如果新的父节点是原来位置上端最近一个兄弟,则所有节点的顺序都不改变
                    Begin
Update wenxuan_Class Set ParentID=@ParentID,ClassPath = @nClassPath,ClassDepth = @nClassDepth, ClassName = @ClassName,ClassIntro = @ClassIntro Where ClassID = @ClassID
IF @@Error <> 0
    Begin
    Set @Err = 10
    Goto theEnd
    End
       End
Set  @nClassOrder = @nClassOrder + 1 
--更新三部分 1 本树更改之前的后面（或前面）记录的顺序 1 节点本身  3 所有子节点
--分为向上移或象下移
--Print '更新本栏目之前位置后面的所有栏目[或者本栏目之后位置]  [不包括本栏目下的子栏目]的：ClassOrder'
IF @nClassOrder < @oClassOrder
Begin
Update wenxuan_Class Set ClassOrder = ClassOrder+@theCount Where ClassOrder<@oClassOrder  And ClassOrder >=@nClassOrder And (ClassPath Not like ''+@oClassPath+'|%') And ClassID<>@ClassID
IF @@Error <> 0
        Begin
        Set @Err = 12
        Goto theEnd
        End
End
Else
Begin
Update wenxuan_Class Set ClassOrder = ClassOrder-@theCount Where ClassOrder >@oClassOrder And ClassOrder<@nClassOrder  And (ClassPath Not like ''+@oClassPath+'|%') And ClassID<>@ClassID
IF @@Error <> 0
        Begin
        Set @Err = 13
        Goto theEnd
        End
End
--Print '更新本栏目的：ParentID,ClassPath,ClassDepth,ClassOrder,ClassName,ClassIntro'
Print 'Order : '+Ltrim(Str(@nClassOrder))
IF @nClassOrder > @oClassOrder
Set @nClassOrder = @nClassOrder - @theCount
Update wenxuan_Class Set ParentID=@ParentID,ClassPath = @nClassPath,ClassDepth = @nClassDepth,ClassOrder = @nClassOrder, ClassName = @ClassName,ClassIntro = @ClassIntro,DemoID=@DemoID Where ClassID = @ClassID
IF @@Error <> 0
    Begin
    Set @Err = 10
    Goto theEnd
    End
--Print '更新本栏目下的所有子栏目的：ClassPaht,ClassDepth,ClassOrder'
             Update wenxuan_Class Set ClassPath = Replace(ClassPath,@oClassPath,@nClassPath),ClassDepth = ClassDepth + (@nClassDepth-@oClassDepth),ClassOrder = ClassOrder+(@nClassOrder-@oClassOrder) Where ClassPath like ''+@oClassPath+'|%'
IF @@Error <> 0
    Begin
    Set @Err = 11
    Goto theEnd
    End
End
theEnd:
IF @Err<>0 --如果有错误则返回错误号
   Begin
   Rollback Tran
   Return @Err
   End
Else     --如果没有错误就返回0
   Begin
   Commit Tran
   Return 0
   End
GO
/****** Object:  StoredProcedure [dbo].[WenXuan_InfoExists]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.WenXuan_InfoExists    脚本日期: 2009-6-27 11:04:24 ******/
/****** 对象: 存储过程 dbo.WenXuan_InfoExists    脚本日期: 2009-6-27 11:27:30 ******/
------------------------------------
--用途：文宣分类是否已经存在 
--项目名称：白海晓
--说明：
--时间：2009-11-27 11:03:26
------------------------------------
CREATE PROCEDURE [dbo].[WenXuan_InfoExists]
@ArticleID int
 AS 
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM wenxuan WHERE [ArticleID] = @ArticleID
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[Temp_AddTempInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Temp_AddTempInfo    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.Temp_AddTempInfo    脚本日期: 2007-4-25 11:27:31 ******/
------------------------------------
--用途：添加一个模板
--编写人：覃汝林
--说明：
--时间：2007-1-24  16:21
------------------------------------
CREATE PROCEDURE [dbo].[Temp_AddTempInfo]
@TempID int output,
@Sort int ,
@Title varchar(100) ,
@Content ntext 
 AS 
	INSERT INTO Temp_Info(
	[Sort],[Title],[Content]
	)VALUES(
	@Sort,@Title,@Content
	)
       set @TempID = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Article_VisitArticleInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Article_VisitArticleInfo    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Article_VisitArticleInfo    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：文章点击数增加
--编写人：覃汝林
--说明：
--时间：2007-3-15 15:15
------------------------------------
CREATE PROCEDURE [dbo].[Article_VisitArticleInfo]
@ArticleID int,
@VisitCount int output
 AS 
	UPDATE Article_Info SET [VisitCount] = [VisitCount] + 1
	WHERE [ArticleID] = @ArticleID
             select  @VisitCount=VisitCount  from  Article_Info  WHERE [ArticleID] = @ArticleID
GO
/****** Object:  StoredProcedure [dbo].[Article_UpdateArticleInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Article_UpdateArticleInfo    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Article_UpdateArticleInfo    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：修改文章
--编写人：覃汝林
--说明：
--时间：2007-1-23 8:54
------------------------------------
CREATE PROCEDURE [dbo].[Article_UpdateArticleInfo]
@ArticleID int,
@ClassID int,
@UserID int,
@PicID int,
@PicUrl varchar(100),
@Title varchar(200),
@Tag varchar(200),
@Content ntext,
@CommFlag int,
@VisitCount int,
@IsTop int,
@IsVouch int,
@IsDelete int,
@SubTitle varchar(200),
@AddTime datetime,
@Importance int,
@GoUrl varchar(200),
@FlashUrl varchar(200),
@Keyword varchar(500)
 AS 
 if (@Importance >1)
	UPDATE Article_Info SET 	
	[Importance]=[Importance]-1
	where [Importance]<=@Importance and [Importance]>0  and [ClassID] = @ClassID
	else
	UPDATE Article_Info SET 	
	[Importance]=0
	where [Importance]=@Importance and [ClassID] = @ClassID
	UPDATE Article_Info SET 
	[ClassID] = @ClassID,[UserID] = @UserID,[PicID] = @PicID,[PicUrl] = @PicUrl,[Title] = @Title,[Tag] = @Tag,[Content] = @Content,[CommFlag] = @CommFlag,[VisitCount] = @VisitCount,[IsTop] = @IsTop,[IsVouch] = @IsVouch,[IsDelete] = @IsDelete,[SubTitle]=@SubTitle,[AddTime]=@AddTime,[Importance]=@Importance,[GoUrl]=@GoUrl,[FlashUrl]=@FlashUrl,[keyword]=@Keyword
	WHERE [ArticleID] = @ArticleID
GO
/****** Object:  StoredProcedure [dbo].[WenXuan_GetWenXuanInfoModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.WenXuan_GetWenXuanInfoModel    脚本日期: 2009-6-27 15:04:24 ******/

/****** 对象: 存储过程 dbo.WenXuan_GetWenXuanInfoModel    脚本日期: 2009-6-27 15:27:29 ******/
------------------------------------
--用途：得到文宣对象实体
--编写人：白海晓
--说明：
--时间：2009-6-27 15:51
------------------------------------
CREATE PROCEDURE [dbo].[WenXuan_GetWenXuanInfoModel]
@ArticleID int
 AS 
	SELECT 
	a.[ArticleID],a.[ClassID],a.[UserID],a.[PicID],a.[PicUrl],a.[Title],a.[Tag],a.[Content],a.[CommFlag],a.[AddTime],a.[Importance],a.[SubTitle],a.[VisitCount],a.[IsTop],a.[IsVouch],a.[IsDelete],b.[ClassName],b.[DemoID],a.[GoUrl],a.[shoujia],a.[danwei],a.[bianhao]
	 FROM wenxuan a,wenxuan_Class b
	 WHERE a.[ClassID]=b.[ClassID]  AND  a.[ArticleID] = @ArticleID
GO
/****** Object:  StoredProcedure [dbo].[WenXuan_GetWenXuanIDList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.WenXuan_GetWenXuanIDList    脚本日期: 2009-6-27 15:04:24 ******/

/****** 对象: 存储过程 dbo.WenXuan_GetWenXuanIDList    脚本日期: 2009-6-27 15:27:29 ******/
------------------------------------
--用途：取得所有文章ID列表
--编写人：白海晓
--说明：
--时间：2009-6-27  15:35
------------------------------------
CREATE PROCEDURE [dbo].[WenXuan_GetWenXuanIDList]
@strWhere varchar(1000)
 AS 
	SELECT 
	[ArticleID]
	 FROM wenxuan Where Title like '%'+@strWhere+'%' 
              Order by ArticleID desc
GO
/****** Object:  StoredProcedure [dbo].[WenXuan_GetWenXuanClassModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.WenXuan_GetWenXuanClassModel    脚本日期: 2009-6-27 11:04:24 ******/

/****** 对象: 存储过程 dbo.WenXuan_GetWenXuanClassModel    脚本日期: 2009-6-27 11:27:29 ******/
------------------------------------
--用途：得到文宣分类对象实体
--编写人：白海晓
--说明：
--时间：2009-6-27 11:48
------------------------------------
CREATE PROCEDURE [dbo].[WenXuan_GetWenXuanClassModel]
@ClassID int
 AS 
	SELECT 
	[ClassID],[ClassName],[ParentID],[ClassPath],[ClassDepth],[ClassOrder],[ClassIntro],[DemoId]
	 FROM wenxuan_Class
	 WHERE [ClassID] = @ClassID
GO
/****** Object:  StoredProcedure [dbo].[WenXuan_GetWenXuanClassList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.WenXuan_GetWenXuanClassList    脚本日期: 2009-6-27 11:04:24 ******/

/****** 对象: 存储过程 dbo.WenXuan_GetWenXuanClassList    脚本日期: 2009-6-27 11:27:29 ******/
------------------------------------
--用途：取得所有文宣分类列表
--编写人：白海晓
--说明：
--时间：2009-6-27 11:06
------------------------------------
CREATE PROCEDURE [dbo].[WenXuan_GetWenXuanClassList]
@strWhere varchar(1000)
 AS
SELECT ClassID, ClassName, ParentID, ClassPath, ClassDepth, 
      ClassOrder, ClassIntro
FROM wenxuan_Class
ORDER BY ClassOrder
GO
/****** Object:  StoredProcedure [dbo].[WenXuan_DeleteWenXuanInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.WenXuan_DeleteWenXuanInfo    脚本日期: 2009-6-27 12:04:24 ******/

/****** 对象: 存储过程 dbo.WenXuan_DeleteWenXuanInfo    脚本日期: 2009-6-27 12:27:29 ******/
------------------------------------
--用途：删除一篇文宣资料
--编写人：白海晓
--说明：
--时间：2009-6-27  12:55
------------------------------------
CREATE PROCEDURE [dbo].[WenXuan_DeleteWenXuanInfo]
@ArticleID int
 AS 
           BEGIN TRANSACTION
	DELETE wenxuan
	 WHERE [ArticleID]  = @ArticleID
          COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[WenXuan_DeleteWenXuanClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.WenXuan_DeleteWenXuanClass    脚本日期: 2009-6-27 11:04:23 ******/

/****** 对象: 存储过程 dbo.WenXuan_DeleteWenXuanClass    脚本日期: 2009-6-27 11:27:28 ******/
------------------------------------
--用途：删除文宣分类
--编写人：白海晓
--说明：
--时间：2009-11-27 11:06
------------------------------------
CREATE PROCEDURE [dbo].[WenXuan_DeleteWenXuanClass]
(
@ClassID int
)
AS
-----默认情况屏蔽删除------
         set @ClassID=0
-----默认情况屏蔽删除------
Declare @Err As int
Set @Err = 0
Begin Tran
--首先查询该节点下是否有子节点
Select ClassID From wenxuan_Class Where ParentID = @ClassID
IF @@RowCount<>0
    Begin
    Set @Err = 1
    Goto theEnd
    End
--获取该节点的ClassOrder,为了删除后整理其他记录的顺序
Declare @ClassOrder As int
Select @ClassOrder = ClassOrder From wenxuan_Class Where ClassID = @ClassID
IF @ClassOrder Is NUll
    Begin
      Set @Err =2
      Goto theEnd
    End 
--更新其他记录的ClassOrder
Update wenxuan_Class Set ClassOrder = ClassOrder -1 Where ClassOrder >@ClassOrder 
IF @@Error<>0
    Begin
      Set @Err =3
      Goto theEnd
    End 
--删除操作
Delete From wenxuan_Class Where ClassID=@ClassID
IF @@Error<>0
    Begin
      Set @Err =4
      Goto theEnd
  End 
--更新其他记录的ClassID
--Update wenxuan_Class Set ClassID= ClassID - 1 Where ClassID >@ClassID 
--IF @@Error<>0
--    Begin
--      Set @Err =5
--      Goto theEnd
--    End 
theEnd:
IF @Err = 0 
    Begin
      Commit Tran
      Return 0 --删除成功
    End
Else
    Begin
      IF @Err=1
  Begin
      Rollback Tran
      Return 1 --有子节点
End
      Else
Begin
      Rollback Tran
      Return 2--未知错误
End
    End
GO
/****** Object:  StoredProcedure [dbo].[WenXuan_CreateWenXuanClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.WenXuan_CreateWenXuanClass    脚本日期: 2009-6-27 11:04:23 ******/

/****** 对象: 存储过程 dbo.WenXuan_CreateWenXuanClass    脚本日期: 2009-6-27 11:27:28 ******/
------------------------------------
--用途：增加文宣分类
--编写人：白海晓
--说明：
--时间：2009-6-27 11:00
------------------------------------
CREATE PROCEDURE [dbo].[WenXuan_CreateWenXuanClass]
(
@ParentID int,
@ClassName nvarchar(50),
@ClassIntro nvarchar(1000),
@DemoID int
)
AS
Declare @Err As int
Set @Err=0
Begin Tran
--通过现有记录获取栏目ID
Declare @ClassID As int
Declare @ClassDepth As int
Select @ClassID = Max(ClassID) From wenxuan_Class
IF @ClassID Is Not Null
Set @ClassID = @ClassID+1
Else
Set @ClassID = 1
--判断是否是顶级栏目，设置其ClassPath和ClassOrder
Declare @ClassPath As nvarchar(1000)
Declare @ClassOrder As int
IF @ParentID = 0
Begin
Set @ClassPath =Ltrim(Str(@ClassID))
Select @ClassOrder = Max(ClassOrder) From wenxuan_Class
IF @ClassOrder Is Not Null
Set @ClassOrder = @ClassOrder + 1
Else --如果没有查询到记录，说明这是第一条记录
Set @ClassOrder = 1
--深度
Set @ClassDepth = 1
End
Else
Begin
--获取父节点的路径和深度
Select @ClassPath = ClassPath ,@ClassDepth = ClassDepth From wenxuan_Class Where ClassID=@ParentID
IF @ClassPath Is Null
Begin
Set @Err = 1
Goto theEnd
End
--获取同父节点下的最大序号
Select @ClassOrder = Max(ClassOrder) From wenxuan_Class Where ClassPath like ''+@ClassPath+'|%'  Or ClassID = @ParentID
IF @ClassOrder Is Not Null --如果序号存在，那么将该序号后的所有序号都加1
Begin 
--更新当前要插入节点后所有节点的序号
Update wenxuan_Class Set ClassOrder = ClassOrder +1 Where ClassOrder>@ClassOrder
--同父节点下的最大序号加上1，构成自己的序号
Set @ClassOrder = @ClassOrder + 1
End 
Else
Begin
Set @Err=1
Goto theEnd
End
--父节点的路径加上自己的ID号，构成自己的路径
Set @ClassPath = @ClassPath + '|' + Ltrim(Str(@ClassID))
--深度
Set @ClassDepth = @ClassDepth+1
End
Insert Into wenxuan_Class(ClassID,ClassName,ParentID,ClassPath,ClassDepth,ClassOrder,ClassIntro,demoid)  
values(@ClassID,@ClassName,@ParentID,@ClassPath,@ClassDepth,@ClassOrder,@ClassIntro,@DemoID)
IF @@Error<>0 
Begin
Set @Err=1
Goto theEnd
End
--更新当前记录之后的记录的ORDER
--Update wenxuan_Class Set ClassOrder = ClassOrder+1 Where ClassOrder  > @ClassOrder 
theEnd:
IF @Err=0
Begin
Commit Tran
Return @ClassID
End
Else
Begin
    Rollback Tran
Return 0
End
GO
/****** Object:  StoredProcedure [dbo].[WenXuan_ClassExists]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.WenXuan_ClassExists    脚本日期: 2009-6-27 11:04:24 ******/
/****** 对象: 存储过程 dbo.WenXuan_ClassExists    脚本日期: 2009-6-27 11:27:30 ******/
------------------------------------
--用途：文宣分类是否已经存在 
--项目名称：白海晓
--说明：
--时间：2009-11-27 11:03:26
------------------------------------
CREATE PROCEDURE [dbo].[WenXuan_ClassExists]
@ClassID int
 AS 
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM wenxuan_class WHERE [ClassID] = @ClassID
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[WenXuan_AddWenXuanInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.WenXuan_AddWenXuanInfo    脚本日期: 2009-6-27 11:04:23 ******/

/****** 对象: 存储过程 dbo.WenXuan_AddWenXuanInfo    脚本日期: 2009-6-27 11:27:28 ******/
------------------------------------
--用途：添加文宣资料
--编写人：白海晓
--说明：
--时间：2009-6-27 11:05
------------------------------------
CREATE PROCEDURE [dbo].[WenXuan_AddWenXuanInfo]
@ArticleID int output,
@ClassID int ,
@UserID int ,
@PicID int ,
@PicUrl varchar(100) ,
@Title varchar(200) ,
@Tag varchar(200) ,
@Content ntext ,
@CommFlag int,
@SubTitle varchar(200),
@AddTime datetime,
@Importance int,
@GoUrl varchar(200),
@shoujia varchar(100),
@danwei varchar(100),
@bianhao varchar(100)
 AS 
	INSERT INTO wenxuan(
	[ClassID],[UserID],[PicID],[PicUrl],[Title],[Tag],[Content],[CommFlag],[SubTitle],[AddTime],[Importance],[GoUrl],[shoujia],[danwei],[bianhao]
	)VALUES(
	@ClassID,@UserID,@PicID,@PicUrl,@Title,@Tag,@Content,@CommFlag,@SubTitle,@AddTime,@Importance,@GoUrl,@shoujia,@danwei,@bianhao
	)
             
              SET @ArticleID = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Temp_UpdateTempInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Temp_UpdateTempInfo    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.Temp_UpdateTempInfo    脚本日期: 2007-4-25 11:27:31 ******/
------------------------------------
--用途：修改模板
--编写人：覃汝林
--说明：
--时间：2007-1-24  16:55
------------------------------------
CREATE PROCEDURE [dbo].[Temp_UpdateTempInfo]
@TempID int,
@Sort int,
@Title varchar(100),
@Content ntext
 AS 
	UPDATE Temp_Info SET 
	[Sort] = @Sort,[Title] = @Title,[Content] = @Content
	WHERE [TempID] = @TempID
GO
/****** Object:  StoredProcedure [dbo].[Temp_GetTempInfoModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Temp_GetTempInfoModel    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.Temp_GetTempInfoModel    脚本日期: 2007-4-25 11:27:31 ******/
------------------------------------
--用途：取得模板实体对象的详细信息
--编写人：覃汝林
--说明：
--时间：2007-1-24  17:00
------------------------------------
CREATE PROCEDURE [dbo].[Temp_GetTempInfoModel]
@TempID int
 AS 
	SELECT 
	[TempID],[Sort],[Title],[Content]
	 FROM Temp_Info
	 WHERE [TempID] = @TempID
GO
/****** Object:  StoredProcedure [dbo].[Temp_GetTempInfoList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Temp_GetTempInfoList    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.Temp_GetTempInfoList    脚本日期: 2007-4-25 11:27:31 ******/
------------------------------------
--用途：取得所有模板列表
--编写人：覃汝林
--说明：
--时间：2007-1-24  16:13
------------------------------------
CREATE PROCEDURE [dbo].[Temp_GetTempInfoList]
@strWhere varchar(1000)
 AS 
	SELECT 
	[TempID],[Sort],[Title],[Content]
	 FROM Temp_Info  Where Title like '%'+@strWhere+'%' 
              Order by TempID desc
GO
/****** Object:  StoredProcedure [dbo].[Video_DeleteVideoClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Video_DeleteVideoClass    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.Video_DeleteVideoClass    脚本日期: 2007-4-25 11:27:31 ******/
------------------------------------
--用途：删除视频分类
--编写人：覃汝林
--说明：
--时间：2007-1-17 20:06
------------------------------------
CREATE PROCEDURE [dbo].[Video_DeleteVideoClass]
(
@ClassID int
)
AS
-----默认情况屏蔽删除------
         set @ClassID=0
-----默认情况屏蔽删除------
Declare @Err As int
Set @Err = 0
Begin Tran
--首先查询该节点下是否有子节点
Select ClassID From Video_Class Where ParentID = @ClassID
IF @@RowCount<>0
    Begin
    Set @Err = 1
    Goto theEnd
    End
--获取该节点的ClassOrder,为了删除后整理其他记录的顺序
Declare @ClassOrder As int
Select @ClassOrder = ClassOrder From Video_Class Where ClassID = @ClassID
IF @ClassOrder Is NUll
    Begin
      Set @Err =2
      Goto theEnd
    End 
--更新其他记录的ClassOrder
Update Video_Class Set ClassOrder = ClassOrder -1 Where ClassOrder >@ClassOrder 
IF @@Error<>0
    Begin
      Set @Err =3
      Goto theEnd
    End 
--删除操作
Delete From Video_Class Where ClassID=@ClassID
IF @@Error<>0
    Begin
      Set @Err =4
      Goto theEnd
  End 
--更新其他记录的ClassID
--Update Video_Class Set ClassID= ClassID - 1 Where ClassID >@ClassID 
--IF @@Error<>0
--    Begin
--      Set @Err =5
--      Goto theEnd
--    End 
theEnd:
IF @Err = 0 
    Begin
      Commit Tran
      Return 0 --删除成功
    End
Else
    Begin
      IF @Err=1
  Begin
      Rollback Tran
      Return 1 --有子节点
End
      Else
Begin
      Rollback Tran
      Return 2--未知错误
End
    End
GO
/****** Object:  StoredProcedure [dbo].[Video_CreateVideoClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Video_CreateVideoClass    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.Video_CreateVideoClass    脚本日期: 2007-4-25 11:27:31 ******/
------------------------------------
--用途：增加视频分类
--编写人：覃汝林
--说明：
--时间：2007-1-17 20:06
------------------------------------
CREATE PROCEDURE [dbo].[Video_CreateVideoClass]
(
@ParentID int,
@ClassName nvarchar(50),
@ClassIntro nvarchar(1000)
)
AS
Declare @Err As int
Set @Err=0
Begin Tran
--通过现有记录获取栏目ID
Declare @ClassID As int
Declare @ClassDepth As int
Select @ClassID = Max(ClassID) From Video_Class
IF @ClassID Is Not Null
Set @ClassID = @ClassID+1
Else
Set @ClassID = 1
--判断是否是顶级栏目，设置其ClassPath和ClassOrder
Declare @ClassPath As nvarchar(1000)
Declare @ClassOrder As int
IF @ParentID = 0
Begin
Set @ClassPath =Ltrim(Str(@ClassID))
Select @ClassOrder = Max(ClassOrder) From Video_Class
IF @ClassOrder Is Not Null
Set @ClassOrder = @ClassOrder + 1
Else --如果没有查询到记录，说明这是第一条记录
Set @ClassOrder = 1
--深度
Set @ClassDepth = 1
End
Else
Begin
--获取父节点的路径和深度
Select @ClassPath = ClassPath ,@ClassDepth = ClassDepth From Video_Class Where ClassID=@ParentID
IF @ClassPath Is Null
Begin
Set @Err = 1
Goto theEnd
End
--获取同父节点下的最大序号
Select @ClassOrder = Max(ClassOrder) From Video_Class Where ClassPath like ''+@ClassPath+'|%'  Or ClassID = @ParentID
IF @ClassOrder Is Not Null --如果序号存在，那么将该序号后的所有序号都加1
Begin 
--更新当前要插入节点后所有节点的序号
Update Video_Class Set ClassOrder = ClassOrder +1 Where ClassOrder>@ClassOrder
--同父节点下的最大序号加上1，构成自己的序号
Set @ClassOrder = @ClassOrder + 1
End 
Else
Begin
Set @Err=1
Goto theEnd
End
--父节点的路径加上自己的ID号，构成自己的路径
Set @ClassPath = @ClassPath + '|' + Ltrim(Str(@ClassID))
--深度
Set @ClassDepth = @ClassDepth+1
End
Insert Into Video_Class(ClassID,ClassName,ParentID,ClassPath,ClassDepth,ClassOrder,ClassIntro)  
values(@ClassID,@ClassName,@ParentID,@ClassPath,@ClassDepth,@ClassOrder,@ClassIntro)
IF @@Error<>0 
Begin
Set @Err=1
Goto theEnd
End
--更新当前记录之后的记录的ORDER
--Update Video_Class Set ClassOrder = ClassOrder+1 Where ClassOrder  > @ClassOrder 
theEnd:
IF @Err=0
Begin
Commit Tran
Return @ClassID
End
Else
Begin
    Rollback Tran
Return 0
End
GO
/****** Object:  StoredProcedure [dbo].[Serv_GetCusOpinModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Serv_GetCusOpinModel    脚本日期: 2009-7-16 11:04:26 ******/

/****** 对象: 存储过程 dbo.Serv_GetCusOpinModel    脚本日期: 2009-7-16 11:27:30 ******/
------------------------------------
--用途：得到客户意见对象实体
--编写人：白海晓
--说明：
--时间：2009-7-16 10:57
------------------------------------
CREATE PROCEDURE [dbo].[Serv_GetCusOpinModel]
@ID int
 AS 
	SELECT 
	*
	 FROM Customer_Opinion a                        
	 WHERE  a.[id] = @ID
GO
/****** Object:  StoredProcedure [dbo].[Serv_GetCusHealthModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Serv_GetCusHealthModel    脚本日期: 2009-7-16 11:04:26 ******/

/****** 对象: 存储过程 dbo.Serv_GetCusHealthModel    脚本日期: 2009-7-16 11:27:30 ******/
------------------------------------
--用途：得到客户健康档案对象实体
--编写人：白海晓
--说明：
--时间：2009-7-16 10:57
------------------------------------
CREATE PROCEDURE [dbo].[Serv_GetCusHealthModel]
@ID int
 AS 
	SELECT 
	a.[id],a.[name],a.[sex],a.[age],a.[link],a.[vocation],a.[post],a.[address],a.[beforesituation],a.[beforedescribe],a.[useprobj],a.[useproyy],a.[usesituation],a.[usedescribe],a.[remarks],a.[addtime]
	 FROM Customer_Health a                        
	 WHERE  a.[id] = @ID
GO
/****** Object:  StoredProcedure [dbo].[Serv_AddCusOpinion]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Serv_AddCusOpinion    脚本日期: 2009-7-17 11:04:25 ******/

/****** 对象: 存储过程 dbo.Serv_AddCusOpinion    脚本日期: 2009-7-17 11:27:30 ******/
------------------------------------
--用途：添加客户意见
--编写人：白海晓
--说明：
--时间：2009-7-17 9:35
------------------------------------
CREATE PROCEDURE [dbo].[Serv_AddCusOpinion]
@id int output,
@name varchar(25),
@city varchar(50) ,
@phone varchar(50) ,
@email varchar(100) ,
@opinion varchar(2000),
@addtime Datetime,
@cp_bjsp NVarChar(4000),
@cp_yysp NVarChar(4000),
@cp_hzp NVarChar(4000),
@cp_rhcp NVarChar(4000),
@cp_scyw NVarChar(4000),
@cp_gsyj NVarChar(4000),
@cp_jyxc NVarChar(4000),
@cp_wl NVarChar(4000),
@jy_cp VarChar(4000),
@jy_yw NVarChar(4000)

 AS 
	INSERT INTO Customer_Opinion(
	[name],[city],[phone],[email],[opinion],[addtime],[CP_BJSP],[CP_YYSP],
	[CP_HZP],[CP_RHCP],[CP_SCYW],[CP_GSYJ],[CP_JYXC],[CP_WL],[JY_CP],[JY_YW])
	VALUES(
	@name,@city,@phone,@email,@opinion,@addtime,@cp_bjsp,@cp_yysp,@cp_hzp,
	@cp_rhcp,@cp_scyw,@cp_gsyj,@cp_jyxc,@cp_wl,@jy_cp,@jy_yw)
              
              SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Serv_AddCusHealth]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Serv_AddCusHealth   脚本日期: 2009-7-17 11:04:25 ******/

/****** 对象: 存储过程 dbo.Serv_AddCusHealth    脚本日期: 2009-7-17 11:27:30 ******/
------------------------------------
--用途：添加客户健康档案
--编写人：白海晓
--说明：
--时间：2009-7-17 9:35
------------------------------------
CREATE PROCEDURE [dbo].[Serv_AddCusHealth]
@id int output,
@name varchar(25),
@sex varchar(50) ,
@age varchar(50) ,
@link varchar(50) ,
@vocation varchar(50) ,
@post varchar(50) ,
@address varchar(500) ,
@beforesituation varchar(2000) ,
@beforedescribe varchar(2000) ,
@useprobj varchar(1000) ,
@useproyy varchar(1000) ,
@usesituation varchar(500) ,
@usedescribe varchar(500) ,
@remarks ntext ,
@addtime Datetime
 AS 
	INSERT INTO Customer_Health(
	[name],[sex],[age],[link],[vocation],[post],[address],[beforesituation],[beforedescribe],[useprobj],[useproyy],[usesituation],[usedescribe],[remarks],[addtime]
	)VALUES(
	@name,@sex,@age,@link,@vocation,@post,@address,@beforesituation,@beforedescribe,@useprobj,@useproyy,@usesituation,@usedescribe,@remarks,@addtime
	)
              
              SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[selectCountClear]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- 查询网站访问明细
-- =============================================
CREATE PROCEDURE [dbo].[selectCountClear]
	@PageSize int, -- 页尺寸 
	@PageIndex int, -- 页码
	@rowCount int output --查询到的记录数
AS
	declare @strSQL varchar(5000) -- 主语句 
BEGIN
	SET NOCOUNT ON;
	if @PageIndex = 1
	begin
		set @strSQL = 'select top '+ str(@PageSize) +' * from [tb_dayStat] order by [id] desc'
	end
	else
	begin
		set @strSQL = 'select top '+ str(@PageSize) +' * from [tb_dayStat] where [id] < (select min([id]) from (select top '+str((@PageIndex-1)*@PageSize)+' [id] from [tb_dayStat] order by [id] desc) as tblTmp) order by [id] desc'  	
	end
	SELECT @rowCount=COUNT(*) FROM [tb_dayStat]
	exec (@strSQL)
END
GO
/****** Object:  StoredProcedure [dbo].[selectcount]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- 访问量统计 type 1.总体2.年3.月4.日5.昨天
-- =============================================
CREATE PROCEDURE [dbo].[selectcount]
	@type int,
	@rowcount int output
AS
BEGIN
	--set @years = DatePart(year,getdate())	
	--set @days = DatePart(day,getdate())
	--set @months = DatePart(month,getdate())
	--set @hours = DatePart(HOUR,getdate())

	SET NOCOUNT ON;
	if @type = 1 
	begin	
		SELECT @rowcount=sum([sumNum]) FROM [tb_hourStat]  
	end
	else if @type = 2
	begin
		SELECT @rowcount=sum([sumNum]) FROM [tb_hourStat] WHERE [years] = DatePart(year,getdate())   
	end 
	else if @type = 3
	begin
		 SELECT @rowcount=sum([sumNum]) FROM [tb_hourStat] WHERE [years] = DatePart(year,getdate()) and [months] = DatePart(month,getdate())
	end
	else if @type = 4
	begin
		 SELECT @rowcount=sum([sumNum]) FROM [tb_hourStat] WHERE [years] = DatePart(year,getdate()) and [months] = DatePart(month,getdate()) and [days] = DatePart(day,getdate())
	end
	else if @type = 5
	begin
		SELECT @rowcount=sum([sumNum]) FROM [tb_hourStat] WHERE [years] = DatePart(year,Dateadd(day,-1,getdate())) and [months] = DatePart(month,Dateadd(day,-1,getdate())) and [days] = DatePart(day,Dateadd(day,-1,getdate()))
	end
	else		
	begin
		set @rowcount=0
	end
	begin
	if @rowcount is null
		set @rowcount=0
	end
	
    
END
GO
/****** Object:  StoredProcedure [dbo].[Pro_VisitProInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Pro_VisitProInfo    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.Pro_VisitProInfo    脚本日期: 2007-4-25 11:27:31 ******/
------------------------------------
--用途：图片点击数增加
--编写人：邓德勇
--说明：
--时间：2007-3-15 15:15
------------------------------------
CREATE PROCEDURE [dbo].[Pro_VisitProInfo]
@ProID int,
@VisitCount int output
 AS 
	UPDATE Pro_Info SET [VisitCount] = [VisitCount] + 1
	WHERE [ProID] = @ProID
             select  @VisitCount=VisitCount  from  Pro_Info  WHERE [ProID] = @ProID
GO
/****** Object:  StoredProcedure [dbo].[Pro_UpdateProInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Pro_UpdateProInfo    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.Pro_UpdateProInfo    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：修改图片
--编写人：邓德勇
--说明：
--时间：2007-1-23 9:46
------------------------------------
CREATE PROCEDURE [dbo].[Pro_UpdateProInfo]
@ProID int,
@ClassID int,
@UserID int,
@UserName varchar(25),
@Title varchar(200),
@Content varchar(200),
@Remark ntext,
@Method nvarchar(Max),
@PicPath varchar(100) ,
@PicName varchar(100) ,
@CommFlag int,
@IsTop int,
@IsVouch int,
@IsDelete int,
@Element varchar(200),
@Price varchar(50),
@SpecialUrl varchar(200)
 AS 
	UPDATE Pro_Info SET 
	[ClassID] = @ClassID,[UserID] = @UserID,[UserName]=@UserName,[Title] = @Title,[Content] = @Content,[Remark] = @Remark,[Method] = @Method,[Element]=@Element,[PicPath] = @PicPath,[PicName] = @PicName,[CommFlag] = @CommFlag,[IsTop] = @IsTop,[IsVouch] = @IsVouch,[IsDelete] = @IsDelete,[Price]=@Price,[SpecialUrl]=@SpecialUrl
	WHERE [ProID] = @ProID
GO
/****** Object:  StoredProcedure [dbo].[Pro_UpdateProClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Pro_UpdateProClass    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.Pro_UpdateProClass    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：更新图片分类
--编写人：邓德勇
--说明：
--时间：2007-1-17 20:06
------------------------------------
CREATE PROCEDURE [dbo].[Pro_UpdateProClass]
(
@ClassID int,
@ParentID int,
@ClassName nvarchar(50),
@ClassIntro nvarchar(1000)
)
AS
Declare @Err As int
Set @Err=0
Begin Tran
--获取修改前的：ParentID,ClassDepth,ClassOrder
Declare @oParentID As int
Declare @oClassDepth As int
Declare @oClassOrder As int
Declare @oClassPath As nvarchar(1000)
Select @oParentID = ParentID, @oClassDepth = ClassDepth,@oClassOrder = ClassOrder, @oClassPath = ClassPath  From Pro_Class Where ClassID = @ClassID
IF @oParentID Is Null
    Begin
    Set @Err = 1
    Goto theEnd
    End
--如果父ID没有改变，则直接修改栏目名和栏目简介
IF @oParentID = @ParentID
    Begin
    Update Pro_Class Set ClassName = @ClassName,ClassIntro = @ClassIntro Where ClassID = @ClassID
    IF @@Error <> 0
    Set @Err = 2
    Goto theEnd
    End
Declare @nClassPath As nvarchar(1000)
Declare @nClassDepth As int
Declare @nClassOrder As int
--获取当前节点作为父节点所包含的节点数[包括自身] 注：如果返回 “1” 说明是单节点
Declare @theCount As int
Select @theCount = Count(ClassID) From Pro_Class Where ClassID=@ClassID Or ClassPath like ''+@oClassPath+'|%'
IF @theCount Is Null
Begin
    Set @Err = 3
    Goto theEnd
End 
IF @ParentID=0 --如果是设置为顶级节点，将节点设置为最后一个顶级节点
Begin
--Print '设置为顶级栏目'
Set @nClassPath = Ltrim(Str(@ClassID))
Set @nClassDepth =1
Select @nClassOrder = Max(ClassOrder) From Pro_Class
IF @nClassOrder Is NULL
                  Begin
     Set @Err = 4
     Goto theEnd
     End 
Set @nClassOrder = @nClassOrder - @theCount + 1
--更新三部分 1 节点本身 2 所有子节点 2 本树更改之前的后面记录的顺序
--Print '更新本栏目之前位置后面的所有栏目[不包括本栏目下的子栏目]的：ClassOrder'
Update Pro_Class Set ClassOrder = ClassOrder-@theCount Where (ClassOrder >@oClassOrder) And (ClassPath Not like ''+@oClassPath+'|%')
IF @@Error <> 0
    Begin
    Set @Err = 7
    Goto theEnd
    End
--Print '更新本栏目的：ParentID,ClassPath,ClassDepth,ClassOrder,ClassName,ClassIntro'
Print 'Order : '+Ltrim(Str(@nClassOrder))
Update Pro_Class Set ParentID=@ParentID,ClassPath = @nClassPath,ClassDepth = @nClassDepth,ClassOrder = @nClassOrder, ClassName = @ClassName,ClassIntro = @ClassIntro Where ClassID = @ClassID
IF @@Error <> 0
    Begin
    Set @Err = 5
    Goto theEnd
    End
--Print '更新本栏目下的所有子栏目的：ClassPath,ClassDepth,ClassOrder'
             Update Pro_Class Set ClassPath = Replace(ClassPath,@oClassPath,@nClassPath),ClassDepth = ClassDepth + (@nClassDepth-@oClassDepth),ClassOrder = ClassOrder+( @nClassOrder-@oClassOrder) Where ClassPath like ''+@oClassPath+'|%'
IF @@Error <> 0
    Begin
    Set @Err = 6
    Goto theEnd
    End
End 
Else
Begin
--获取未来父节点的相关信息,并设置本节点的相关值
Select @nClassDepth = ClassDepth,@nClassPath = ClassPath From Pro_Class Where ClassID = @ParentID
IF @nClassDepth Is  NULL Or @nClassPath Is Null
      Begin
      Set @Err = 8
      Goto theEnd
      End 
Set @nClassDepth = @nClassDepth +1
Select @nClassOrder =Max(ClassOrder) From Pro_Class Where ClassID = @ParentID Or  ClassPath like ''+@nClassPath+'|%'
IF @nClassOrder Is  NULL
      Begin
      Set @Err = 9
      Goto theEnd
      End 
Set @nClassPath = @nClassPath +'|'+ Ltrim(Str(@ClassID))
IF @nClassOrder = @oClassOrder+1 --如果新的父节点是原来位置上端最近一个兄弟,则所有节点的顺序都不改变
                    Begin
Update Pro_Class Set ParentID=@ParentID,ClassPath = @nClassPath,ClassDepth = @nClassDepth, ClassName = @ClassName,ClassIntro = @ClassIntro Where ClassID = @ClassID
IF @@Error <> 0
    Begin
    Set @Err = 10
    Goto theEnd
    End
       End
Set  @nClassOrder = @nClassOrder + 1 
--更新三部分 1 本树更改之前的后面（或前面）记录的顺序 1 节点本身  3 所有子节点
--分为向上移或象下移
--Print '更新本栏目之前位置后面的所有栏目[或者本栏目之后位置]  [不包括本栏目下的子栏目]的：ClassOrder'
IF @nClassOrder < @oClassOrder
Begin
Update Pro_Class Set ClassOrder = ClassOrder+@theCount Where ClassOrder<@oClassOrder  And ClassOrder >=@nClassOrder And (ClassPath Not like ''+@oClassPath+'|%') And ClassID<>@ClassID
IF @@Error <> 0
        Begin
        Set @Err = 12
        Goto theEnd
        End
End
Else
Begin
Update Pro_Class Set ClassOrder = ClassOrder-@theCount Where ClassOrder >@oClassOrder And ClassOrder<@nClassOrder  And (ClassPath Not like ''+@oClassPath+'|%') And ClassID<>@ClassID
IF @@Error <> 0
        Begin
        Set @Err = 13
        Goto theEnd
        End
End
--Print '更新本栏目的：ParentID,ClassPath,ClassDepth,ClassOrder,ClassName,ClassIntro'
Print 'Order : '+Ltrim(Str(@nClassOrder))
IF @nClassOrder > @oClassOrder
Set @nClassOrder = @nClassOrder - @theCount
Update Pro_Class Set ParentID=@ParentID,ClassPath = @nClassPath,ClassDepth = @nClassDepth,ClassOrder = @nClassOrder, ClassName = @ClassName,ClassIntro = @ClassIntro Where ClassID = @ClassID
IF @@Error <> 0
    Begin
    Set @Err = 10
    Goto theEnd
    End
--Print '更新本栏目下的所有子栏目的：ClassPaht,ClassDepth,ClassOrder'
             Update Pro_Class Set ClassPath = Replace(ClassPath,@oClassPath,@nClassPath),ClassDepth = ClassDepth + (@nClassDepth-@oClassDepth),ClassOrder = ClassOrder+(@nClassOrder-@oClassOrder) Where ClassPath like ''+@oClassPath+'|%'
IF @@Error <> 0
    Begin
    Set @Err = 11
    Goto theEnd
    End
End
theEnd:
IF @Err<>0 --如果有错误则返回错误号
   Begin
   Rollback Tran
   Return @Err
   End
Else     --如果没有错误就返回0
   Begin
   Commit Tran
   Return 0
   End
GO
/****** Object:  StoredProcedure [dbo].[Pro_GetProInfoModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Pro_GetProInfoModel    脚本日期: 2007-5-16 17:04:26 ******/

/****** 对象: 存储过程 dbo.Pro_GetProInfoModel    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：得到图片对象实体
--编写人：邓德勇
--说明：
--时间：2007-1-23 9:57
------------------------------------
CREATE PROCEDURE [dbo].[Pro_GetProInfoModel]
@ProID int
 AS 
	SELECT 
	a.[ProID],a.[ClassID],a.[UserID],a.[UserName],a.[Title],a.[Content],a.[Remark],a.[Method],a.[Element],a.[PicPath],a.[PicName],a.[SpecialUrl],a.[CommFlag],a.[AddTime],a.[VisitCount],a.[IsTop],a.[IsVouch],a.[IsDelete],a.[Aud],a.[Price],b.[ClassName]
	 FROM Pro_Info a, 
                         Pro_Class b
	 WHERE a.[ClassID]=b.[ClassID]  AND  a.[ProID] = @ProID
GO
/****** Object:  StoredProcedure [dbo].[Pro_GetProIDList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Pro_GetProIDList    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Pro_GetProIDList    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：取得所有图片ID列表
--编写人：邓德勇
--说明：
--时间：2007-1-23  9:59
------------------------------------
CREATE PROCEDURE [dbo].[Pro_GetProIDList]
@strWhere varchar(1000)
 AS 
	SELECT 
	[ProID] 
	 FROM Pro_Info Where Title  like '%'+@strWhere+'%'
              Order by ProID desc
GO
/****** Object:  StoredProcedure [dbo].[Pro_GetProClassModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Pro_GetProClassModel    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Pro_GetProClassModel    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：得到图片分类对象实体
--编写人：邓德勇
--说明：
--时间：2007-1-18 9:48
------------------------------------
CREATE PROCEDURE [dbo].[Pro_GetProClassModel]
@ClassID int
 AS 
	SELECT 
	[ClassID],[ClassName],[ParentID],[ClassPath],[ClassDepth],[ClassOrder],[ClassIntro]
	 FROM Pro_Class
	 WHERE [ClassID] = @ClassID
GO
/****** Object:  StoredProcedure [dbo].[Pro_GetProClassList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Pro_GetProClassList    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Pro_GetProClassList    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：取得所有图片分类列表
--编写人：邓德勇
--说明：
--时间：2007-1-17 20:06
------------------------------------
CREATE PROCEDURE [dbo].[Pro_GetProClassList]
@strWhere varchar(1000)
 AS
SELECT ClassID, ClassName, ParentID, ClassPath, ClassDepth, 
      ClassOrder, ClassIntro
FROM Pro_Class
ORDER BY ClassOrder
GO
/****** Object:  StoredProcedure [dbo].[Pro_DeleteProInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Pro_DeleteProInfo    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Pro_DeleteProInfo    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：删除图片
--编写人：邓德勇
--说明：
--时间：2007-1-23 9:55
------------------------------------
CREATE PROCEDURE [dbo].[Pro_DeleteProInfo]
@ProID int
 AS 
	UPDATE Pro_Info SET 
	IsDelete = 1
	WHERE [ProID] = @ProID
	--DELETE Pro_Info
	 --WHERE [ProID] = @ProID
GO
/****** Object:  StoredProcedure [dbo].[Pro_DeleteProClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Pro_DeleteProClass    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Pro_DeleteProClass    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：删除图片分类
--编写人：邓德勇
--说明：
--时间：2007-1-17 20:06
------------------------------------
CREATE PROCEDURE [dbo].[Pro_DeleteProClass]
(
@ClassID int
)
AS
-----默认情况屏蔽删除------
         set @ClassID=0
-----默认情况屏蔽删除------
Declare @Err As int
Set @Err = 0
Begin Tran
--首先查询该节点下是否有子节点
Select ClassID From Pro_Class Where ParentID = @ClassID
IF @@RowCount<>0
    Begin
    Set @Err = 1
    Goto theEnd
    End
--获取该节点的ClassOrder,为了删除后整理其他记录的顺序
Declare @ClassOrder As int
Select @ClassOrder = ClassOrder From Pro_Class Where ClassID = @ClassID
IF @ClassOrder Is NUll
    Begin
      Set @Err =2
      Goto theEnd
    End 
--更新其他记录的ClassOrder
Update Pro_Class Set ClassOrder = ClassOrder -1 Where ClassOrder >@ClassOrder 
IF @@Error<>0
    Begin
      Set @Err =3
      Goto theEnd
    End 
--删除操作
Delete From Pro_Class Where ClassID=@ClassID
IF @@Error<>0
    Begin
      Set @Err =4
      Goto theEnd
  End 
--更新其他记录的ClassID
--Update Pro_Class Set ClassID= ClassID - 1 Where ClassID >@ClassID 
--IF @@Error<>0
--    Begin
--      Set @Err =5
--      Goto theEnd
--    End 
theEnd:
IF @Err = 0 
    Begin
      Commit Tran
      Return 0 --删除成功
    End
Else
    Begin
      IF @Err=1
  Begin
      Rollback Tran
      Return 1 --有子节点
End
      Else
Begin
      Rollback Tran
      Return 2--未知错误
End
    End
GO
/****** Object:  StoredProcedure [dbo].[Pro_CreateProClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Pro_CreateProClass    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Pro_CreateProClass    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：增加图片分类
--编写人：邓德勇
--说明：
--时间：2007-1-17 20:06
------------------------------------
CREATE PROCEDURE [dbo].[Pro_CreateProClass]
(
@ParentID int,
@ClassName nvarchar(50),
@ClassIntro nvarchar(1000)
)
AS
Declare @Err As int
Set @Err=0
Begin Tran
--通过现有记录获取栏目ID
Declare @ClassID As int
Declare @ClassDepth As int
Select @ClassID = Max(ClassID) From Pro_Class
IF @ClassID Is Not Null
Set @ClassID = @ClassID+1
Else
Set @ClassID = 1
--判断是否是顶级栏目，设置其ClassPath和ClassOrder
Declare @ClassPath As nvarchar(1000)
Declare @ClassOrder As int
IF @ParentID = 0
Begin
Set @ClassPath =Ltrim(Str(@ClassID))
Select @ClassOrder = Max(ClassOrder) From Pro_Class
IF @ClassOrder Is Not Null
Set @ClassOrder = @ClassOrder + 1
Else --如果没有查询到记录，说明这是第一条记录
Set @ClassOrder = 1
--深度
Set @ClassDepth = 1
End
Else
Begin
--获取父节点的路径和深度
Select @ClassPath = ClassPath ,@ClassDepth = ClassDepth From Pro_Class Where ClassID=@ParentID
IF @ClassPath Is Null
Begin
Set @Err = 1
Goto theEnd
End
--获取同父节点下的最大序号
Select @ClassOrder = Max(ClassOrder) From Pro_Class Where ClassPath like ''+@ClassPath+'|%'  Or ClassID = @ParentID
IF @ClassOrder Is Not Null --如果序号存在，那么将该序号后的所有序号都加1
Begin 
--更新当前要插入节点后所有节点的序号
Update Pro_Class Set ClassOrder = ClassOrder +1 Where ClassOrder>@ClassOrder
--同父节点下的最大序号加上1，构成自己的序号
Set @ClassOrder = @ClassOrder + 1
End 
Else
Begin
Set @Err=1
Goto theEnd
End
--父节点的路径加上自己的ID号，构成自己的路径
Set @ClassPath = @ClassPath + '|' + Ltrim(Str(@ClassID))
--深度
Set @ClassDepth = @ClassDepth+1
End
Insert Into Pro_Class(ClassID,ClassName,ParentID,ClassPath,ClassDepth,ClassOrder,ClassIntro)  
values(@ClassID,@ClassName,@ParentID,@ClassPath,@ClassDepth,@ClassOrder,@ClassIntro)
IF @@Error<>0 
Begin
Set @Err=1
Goto theEnd
End
--更新当前记录之后的记录的ORDER
--Update Pro_Class Set ClassOrder = ClassOrder+1 Where ClassOrder  > @ClassOrder 
theEnd:
IF @Err=0
Begin
Commit Tran
Return @ClassID
End
Else
Begin
    Rollback Tran
Return 0
End
GO
/****** Object:  StoredProcedure [dbo].[Pro_AddProInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Pro_AddProInfo    脚本日期: 2007-5-16 17:04:25 ******/

/****** 对象: 存储过程 dbo.Pro_AddProInfo    脚本日期: 2007-4-25 11:27:30 ******/
------------------------------------
--用途：添加图片
--编写人：邓德勇
--说明：
--时间：2007-1-23 9:35
------------------------------------
CREATE PROCEDURE [dbo].[Pro_AddProInfo]
@ProID int output,
@ClassID int ,
@UserID int ,
@UserName varchar(25),
@Title varchar(200) ,
@Content varchar(200) ,
@Remark ntext ,
@Method nvarchar(Max) ,
@Element varchar(200),
@PicPath varchar(100) ,
@PicName varchar(100) ,
@CommFlag int,
@Aud int,
@Price varchar(50),
@SpecialUrl varchar(200)
 AS 
	INSERT INTO Pro_Info(
	[ClassID],[UserID],[UserName],[Title],[Content],[element],[Remark],[Method],[PicPath],[PicName],[CommFlag],[Aud],[Price],[SpecialUrl]
	)VALUES(
	@ClassID,@UserID,@UserName,@Title,@Content,@Element,@Remark,@Method,@PicPath,@PicName,@CommFlag,@Aud,@Price,@SpecialUrl
	)
              
              SET @ProID = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Article_UpdateArticleClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Article_UpdateArticleClass    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Article_UpdateArticleClass    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：更新文章分类
--编写人：覃汝林
--说明：
--时间：2007-1-17 20:06
------------------------------------
CREATE PROCEDURE [dbo].[Article_UpdateArticleClass]
(
@ClassID int,
@ParentID int,
@ClassName nvarchar(50),
@ClassIntro nvarchar(1000),
@DemoID int
)
AS
Declare @Err As int
Set @Err=0
Begin Tran
--获取修改前的：ParentID,ClassDepth,ClassOrder
Declare @oParentID As int
Declare @oClassDepth As int
Declare @oClassOrder As int
Declare @oClassPath As nvarchar(1000)
Select @oParentID = ParentID, @oClassDepth = ClassDepth,@oClassOrder = ClassOrder, @oClassPath = ClassPath  From Article_Class Where ClassID = @ClassID
IF @oParentID Is Null
    Begin
    Set @Err = 1
    Goto theEnd
    End
--如果父ID没有改变，则直接修改栏目名和栏目简介
IF @oParentID = @ParentID
    Begin
    Update Article_Class Set ClassName = @ClassName,ClassIntro = @ClassIntro,DemoID=@DemoID Where ClassID = @ClassID
    IF @@Error <> 0
    Set @Err = 2
    Goto theEnd
    End
Declare @nClassPath As nvarchar(1000)
Declare @nClassDepth As int
Declare @nClassOrder As int
--获取当前节点作为父节点所包含的节点数[包括自身] 注：如果返回 “1” 说明是单节点
Declare @theCount As int
Select @theCount = Count(ClassID) From Article_Class Where ClassID=@ClassID Or ClassPath like ''+@oClassPath+'|%'
IF @theCount Is Null
Begin
    Set @Err = 3
    Goto theEnd
End 
IF @ParentID=0 --如果是设置为顶级节点，将节点设置为最后一个顶级节点
Begin
--Print '设置为顶级栏目'
Set @nClassPath = Ltrim(Str(@ClassID))
Set @nClassDepth =1
Select @nClassOrder = Max(ClassOrder) From Article_Class
IF @nClassOrder Is NULL
                  Begin
     Set @Err = 4
     Goto theEnd
     End 
Set @nClassOrder = @nClassOrder - @theCount + 1
--更新三部分 1 节点本身 2 所有子节点 2 本树更改之前的后面记录的顺序
--Print '更新本栏目之前位置后面的所有栏目[不包括本栏目下的子栏目]的：ClassOrder'
Update Article_Class Set ClassOrder = ClassOrder-@theCount Where (ClassOrder >@oClassOrder) And (ClassPath Not like ''+@oClassPath+'|%')
IF @@Error <> 0
    Begin
    Set @Err = 7
    Goto theEnd
    End
--Print '更新本栏目的：ParentID,ClassPath,ClassDepth,ClassOrder,ClassName,ClassIntro,DemoID'
Print 'Order : '+Ltrim(Str(@nClassOrder))
Update Article_Class Set ParentID=@ParentID,ClassPath = @nClassPath,ClassDepth = @nClassDepth,ClassOrder = @nClassOrder, ClassName = @ClassName,ClassIntro = @ClassIntro,DemoID=@DemoID Where ClassID = @ClassID
IF @@Error <> 0
    Begin
    Set @Err = 5
    Goto theEnd
    End
--Print '更新本栏目下的所有子栏目的：ClassPath,ClassDepth,ClassOrder'
             Update Article_Class Set ClassPath = Replace(ClassPath,@oClassPath,@nClassPath),ClassDepth = ClassDepth + (@nClassDepth-@oClassDepth),ClassOrder = ClassOrder+( @nClassOrder-@oClassOrder) Where ClassPath like ''+@oClassPath+'|%'
IF @@Error <> 0
    Begin
    Set @Err = 6
    Goto theEnd
    End
End 
Else
Begin
--获取未来父节点的相关信息,并设置本节点的相关值
Select @nClassDepth = ClassDepth,@nClassPath = ClassPath From Article_Class Where ClassID = @ParentID
IF @nClassDepth Is  NULL Or @nClassPath Is Null
      Begin
      Set @Err = 8
      Goto theEnd
      End 
Set @nClassDepth = @nClassDepth +1
Select @nClassOrder =Max(ClassOrder) From Article_Class Where ClassID = @ParentID Or  ClassPath like ''+@nClassPath+'|%'
IF @nClassOrder Is  NULL
      Begin
      Set @Err = 9
      Goto theEnd
      End 
Set @nClassPath = @nClassPath +'|'+ Ltrim(Str(@ClassID))
IF @nClassOrder = @oClassOrder+1 --如果新的父节点是原来位置上端最近一个兄弟,则所有节点的顺序都不改变
                    Begin
Update Article_Class Set ParentID=@ParentID,ClassPath = @nClassPath,ClassDepth = @nClassDepth, ClassName = @ClassName,ClassIntro = @ClassIntro Where ClassID = @ClassID
IF @@Error <> 0
    Begin
    Set @Err = 10
    Goto theEnd
    End
       End
Set  @nClassOrder = @nClassOrder + 1 
--更新三部分 1 本树更改之前的后面（或前面）记录的顺序 1 节点本身  3 所有子节点
--分为向上移或象下移
--Print '更新本栏目之前位置后面的所有栏目[或者本栏目之后位置]  [不包括本栏目下的子栏目]的：ClassOrder'
IF @nClassOrder < @oClassOrder
Begin
Update Article_Class Set ClassOrder = ClassOrder+@theCount Where ClassOrder<@oClassOrder  And ClassOrder >=@nClassOrder And (ClassPath Not like ''+@oClassPath+'|%') And ClassID<>@ClassID
IF @@Error <> 0
        Begin
        Set @Err = 12
        Goto theEnd
        End
End
Else
Begin
Update Article_Class Set ClassOrder = ClassOrder-@theCount Where ClassOrder >@oClassOrder And ClassOrder<@nClassOrder  And (ClassPath Not like ''+@oClassPath+'|%') And ClassID<>@ClassID
IF @@Error <> 0
        Begin
        Set @Err = 13
        Goto theEnd
        End
End
--Print '更新本栏目的：ParentID,ClassPath,ClassDepth,ClassOrder,ClassName,ClassIntro'
Print 'Order : '+Ltrim(Str(@nClassOrder))
IF @nClassOrder > @oClassOrder
Set @nClassOrder = @nClassOrder - @theCount
Update Article_Class Set ParentID=@ParentID,ClassPath = @nClassPath,ClassDepth = @nClassDepth,ClassOrder = @nClassOrder, ClassName = @ClassName,ClassIntro = @ClassIntro,DemoID=@DemoID Where ClassID = @ClassID
IF @@Error <> 0
    Begin
    Set @Err = 10
    Goto theEnd
    End
--Print '更新本栏目下的所有子栏目的：ClassPaht,ClassDepth,ClassOrder'
             Update Article_Class Set ClassPath = Replace(ClassPath,@oClassPath,@nClassPath),ClassDepth = ClassDepth + (@nClassDepth-@oClassDepth),ClassOrder = ClassOrder+(@nClassOrder-@oClassOrder) Where ClassPath like ''+@oClassPath+'|%'
IF @@Error <> 0
    Begin
    Set @Err = 11
    Goto theEnd
    End
End
theEnd:
IF @Err<>0 --如果有错误则返回错误号
   Begin
   Rollback Tran
   Return @Err
   End
Else     --如果没有错误就返回0
   Begin
   Commit Tran
   Return 0
   End
GO
/****** Object:  StoredProcedure [dbo].[Article_GetArticleInfoModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Article_GetArticleInfoModel    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Article_GetArticleInfoModel    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：得到文章对象实体
--编写人：覃汝林
--说明：
--时间：2007-1-22 17:51
------------------------------------
CREATE PROCEDURE [dbo].[Article_GetArticleInfoModel]
@ArticleID int
 AS 
	SELECT 
	a.[ArticleID],a.[ClassID],a.[UserID],a.[PicID],a.[PicUrl],a.[Title],a.[Tag],a.[Content],a.[CommFlag],a.[AddTime],a.[Importance],a.[SubTitle],a.[VisitCount],a.[IsTop],a.[IsVouch],a.[IsDelete],b.[ClassName],b.[DemoID],a.[GoUrl],a.[FlashUrl],a.keyword
	 FROM Article_Info a,
                        Article_Class b
	 WHERE a.[ClassID]=b.[ClassID]  AND  a.[ArticleID] = @ArticleID
GO
/****** Object:  StoredProcedure [dbo].[Article_GetArticleIDList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Article_GetArticleIDList    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Article_GetArticleIDList    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：取得所有文章ID列表
--编写人：覃汝林
--说明：
--时间：2007-1-22  17:35
------------------------------------
CREATE PROCEDURE [dbo].[Article_GetArticleIDList]
@strWhere varchar(1000)
 AS 
	SELECT 
	[ArticleID]
	 FROM Article_Info Where Title like '%'+@strWhere+'%' 
              Order by ArticleID desc
GO
/****** Object:  StoredProcedure [dbo].[Article_GetArticleClassModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Article_GetArticleClassModel    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Article_GetArticleClassModel    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：得到文章分类对象实体
--编写人：覃汝林
--说明：
--时间：2007-1-18 9:48
------------------------------------
CREATE PROCEDURE [dbo].[Article_GetArticleClassModel]
@ClassID int
 AS 
	SELECT 
	[ClassID],[ClassName],[ParentID],[ClassPath],[ClassDepth],[ClassOrder],[ClassIntro],[DemoId]
	 FROM Article_Class
	 WHERE [ClassID] = @ClassID
GO
/****** Object:  StoredProcedure [dbo].[Article_GetArticleClassList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Article_GetArticleClassList    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Article_GetArticleClassList    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：取得所有文章分类列表
--编写人：覃汝林
--说明：
--时间：2007-1-17 20:06
------------------------------------
CREATE PROCEDURE [dbo].[Article_GetArticleClassList]
@strWhere varchar(1000)
 AS
SELECT ClassID, ClassName, ParentID, ClassPath, ClassDepth, 
      ClassOrder, ClassIntro
FROM Article_Class
ORDER BY ClassOrder
GO
/****** Object:  StoredProcedure [dbo].[Article_DeleteArticleInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Article_DeleteArticleInfo    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Article_DeleteArticleInfo    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：删除一篇文章
--编写人：覃汝林
--说明：
--时间：2007-1-22  17:55
------------------------------------
CREATE PROCEDURE [dbo].[Article_DeleteArticleInfo]
@ArticleID int
 AS 
           BEGIN TRANSACTION
           
           UPDATE Article_Info SET 	
	[IsDelete]=1
	where  [ArticleID]  = @ArticleID
	
          COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[Article_GetTopArticleInfoModel]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Article_GetTopArticleInfoModel    脚本日期: 2009-6-30 11:04:24 ******/

/****** 对象: 存储过程 dbo.Article_GetTopArticleInfoModel    脚本日期: 2009-6-30 11:27:29 ******/
------------------------------------
--用途：得到文章最新对象实体
--编写人：白海晓
--说明：
--时间：2009-6-30 11:51
------------------------------------
CREATE PROCEDURE [dbo].[Article_GetTopArticleInfoModel]
@ClassID int,
@IsTop int
 AS 
	SELECT 
	 top 1  a.[ArticleID],a.[ClassID],a.[UserID],a.[PicID],a.[PicUrl],a.[Title],a.[Tag],a.[Content],a.[CommFlag],a.[AddTime],a.[Importance],a.[SubTitle],a.[VisitCount],a.[IsTop],a.[IsVouch],a.[IsDelete],b.[ClassName],b.[DemoID],a.[GoUrl]
	 FROM Article_Info a,
                        Article_Class b
	 WHERE a.[ClassID]=b.[ClassID]  AND  a.[ClassID] = @ClassID AND a.[IsTop] = @IsTop
GO
/****** Object:  StoredProcedure [dbo].[Article_GetDemoList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Article_GetDemoList    脚本日期: 2007-5-16 17:04:24 ******/

/****** 对象: 存储过程 dbo.Article_GetDemoList    脚本日期: 2007-4-25 11:27:29 ******/
------------------------------------
--用途：取得所有模版列表
--编写人：邓德勇
--说明：
--时间：2007-1-17 20:06
------------------------------------
CREATE PROCEDURE [dbo].[Article_GetDemoList]
@strWhere varchar(1000)
 AS
SELECT [TempID],[Title]
FROM Temp_Info
ORDER BY Sort
GO
/****** Object:  StoredProcedure [dbo].[Article_DeleteArticleClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Article_DeleteArticleClass    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Article_DeleteArticleClass    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：删除文章分类
--编写人：覃汝林
--说明：
--时间：2007-1-17 20:06
------------------------------------
CREATE PROCEDURE [dbo].[Article_DeleteArticleClass]
(
@ClassID int
)
AS
-----默认情况屏蔽删除------
         set @ClassID=0
-----默认情况屏蔽删除------
Declare @Err As int
Set @Err = 0
Begin Tran
--首先查询该节点下是否有子节点
Select ClassID From Article_Class Where ParentID = @ClassID
IF @@RowCount<>0
    Begin
    Set @Err = 1
    Goto theEnd
    End
--获取该节点的ClassOrder,为了删除后整理其他记录的顺序
Declare @ClassOrder As int
Select @ClassOrder = ClassOrder From Article_Class Where ClassID = @ClassID
IF @ClassOrder Is NUll
    Begin
      Set @Err =2
      Goto theEnd
    End 
--更新其他记录的ClassOrder
Update Article_Class Set ClassOrder = ClassOrder -1 Where ClassOrder >@ClassOrder 
IF @@Error<>0
    Begin
      Set @Err =3
      Goto theEnd
    End 
--删除操作
Delete From Article_Class Where ClassID=@ClassID
IF @@Error<>0
    Begin
      Set @Err =4
      Goto theEnd
  End 
--更新其他记录的ClassID
--Update Article_Class Set ClassID= ClassID - 1 Where ClassID >@ClassID 
--IF @@Error<>0
--    Begin
--      Set @Err =5
--      Goto theEnd
--    End 
theEnd:
IF @Err = 0 
    Begin
      Commit Tran
      Return 0 --删除成功
    End
Else
    Begin
      IF @Err=1
  Begin
      Rollback Tran
      Return 1 --有子节点
End
      Else
Begin
      Rollback Tran
      Return 2--未知错误
End
    End
GO
/****** Object:  StoredProcedure [dbo].[Article_CreateArticleClass]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Article_CreateArticleClass    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Article_CreateArticleClass    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：增加文章分类
--编写人：覃汝林
--说明：
--时间：2007-1-17 20:06
------------------------------------
CREATE PROCEDURE [dbo].[Article_CreateArticleClass]
(
@ParentID int,
@ClassName nvarchar(50),
@ClassIntro nvarchar(1000),
@DemoID int
)
AS
Declare @Err As int
Set @Err=0
Begin Tran
--通过现有记录获取栏目ID
Declare @ClassID As int
Declare @ClassDepth As int
Select @ClassID = Max(ClassID) From Article_Class
IF @ClassID Is Not Null
Set @ClassID = @ClassID+1
Else
Set @ClassID = 1
--判断是否是顶级栏目，设置其ClassPath和ClassOrder
Declare @ClassPath As nvarchar(1000)
Declare @ClassOrder As int
IF @ParentID = 0
Begin
Set @ClassPath =Ltrim(Str(@ClassID))
Select @ClassOrder = Max(ClassOrder) From Article_Class
IF @ClassOrder Is Not Null
Set @ClassOrder = @ClassOrder + 1
Else --如果没有查询到记录，说明这是第一条记录
Set @ClassOrder = 1
--深度
Set @ClassDepth = 1
End
Else
Begin
--获取父节点的路径和深度
Select @ClassPath = ClassPath ,@ClassDepth = ClassDepth From Article_Class Where ClassID=@ParentID
IF @ClassPath Is Null
Begin
Set @Err = 1
Goto theEnd
End
--获取同父节点下的最大序号
Select @ClassOrder = Max(ClassOrder) From Article_Class Where ClassPath like ''+@ClassPath+'|%'  Or ClassID = @ParentID
IF @ClassOrder Is Not Null --如果序号存在，那么将该序号后的所有序号都加1
Begin 
--更新当前要插入节点后所有节点的序号
Update Article_Class Set ClassOrder = ClassOrder +1 Where ClassOrder>@ClassOrder
--同父节点下的最大序号加上1，构成自己的序号
Set @ClassOrder = @ClassOrder + 1
End 
Else
Begin
Set @Err=1
Goto theEnd
End
--父节点的路径加上自己的ID号，构成自己的路径
Set @ClassPath = @ClassPath + '|' + Ltrim(Str(@ClassID))
--深度
Set @ClassDepth = @ClassDepth+1
End
Insert Into Article_Class(ClassID,ClassName,ParentID,ClassPath,ClassDepth,ClassOrder,ClassIntro,demoid)  
values(@ClassID,@ClassName,@ParentID,@ClassPath,@ClassDepth,@ClassOrder,@ClassIntro,@DemoID)
IF @@Error<>0 
Begin
Set @Err=1
Goto theEnd
End
--更新当前记录之后的记录的ORDER
--Update Article_Class Set ClassOrder = ClassOrder+1 Where ClassOrder  > @ClassOrder 
theEnd:
IF @Err=0
Begin
Commit Tran
Return @ClassID
End
Else
Begin
    Rollback Tran
Return 0
End
GO
/****** Object:  StoredProcedure [dbo].[Accounts_ValidateLogin]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Accounts_ValidateLogin    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_ValidateLogin    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：管理用户登陆 
--编写人：覃汝林
--说明：
--时间：2006-12-30 14:56:52
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_ValidateLogin]
@UserName varchar(50),
@Password varchar(38)
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM Accounts_Users WHERE [UserName] = @UserName
	AND [Password] = @Password
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[Accounts_DeleteRole]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_DeleteRole    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_DeleteRole    脚本日期: 2007-4-25 11:27:27 ******/
------------------------------------
--用途：删除角色 
--编写人：覃汝林
--说明：
--时间：2007-1-12 8:59:51
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_DeleteRole]
@RoleID int
AS
	BEGIN TRANSACTION
		DELETE Accounts_RolePermissions WHERE RoleID = @RoleID
		DELETE Accounts_UserRoles WHERE RoleID = @RoleID
		DELETE Accounts_Roles WHERE RoleID = @RoleID
	COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[Accounts_DeletePermissionFromRole]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_DeletePermissionFromRole    脚本日期: 2007-5-16 17:04:22 ******/

/****** 对象: 存储过程 dbo.Accounts_DeletePermissionFromRole    脚本日期: 2007-4-25 11:27:27 ******/
------------------------------------
--用途：删除一个角色有的一些权限 
--编写人：覃汝林
--说明：
--时间：2007-1-12 8:59:51
------------------------------------
CREATE PROCEDURE  [dbo].[Accounts_DeletePermissionFromRole]
@RoleID int,
@PermissionID int
 AS
	BEGIN TRANSACTION
	DELETE Accounts_RolePermissions WHERE RoleID = @RoleID and PermissionID = @PermissionID
	COMMIT TRANSACTION
GO
/****** Object:  View [dbo].[PhoneCount]    Script Date: 07/09/2020 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
CREATE VIEW [dbo].[PhoneCount]
AS SELECT vpage,sum(sumNum) as 'count'
  FROM [newtime].[dbo].[tb_dayStat] where [system]='Linux' or [system]='iPhone' and [year]=2016 group by vpage
GO
/****** Object:  StoredProcedure [dbo].[insertdayStatHourStat]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- 插入统计数据(按小时保存访问人数)
-- =============================================
CREATE PROCEDURE [dbo].[insertdayStatHourStat]
	@ip varchar(30), -- IP
	@vcome varchar(500),
	@vpage varchar(500), -- 访问的地址
	@system varchar(50), --操作系统
	@browser varchar(50), --浏览器
	@source varchar(50),
	@resolution varchar(50)
AS
	--临时变量
	declare @days int -- 日 
	declare @months int  -- 月
	declare @years int  -- 年
	declare @hours int  -- 小时	
	declare @str varchar(50) -- 当前小时的字段	
	declare @strSql varchar(5000) -- 当前小时的字段
BEGIN
	SET NOCOUNT ON;
	set @years = DatePart(year,getdate())	
	set @days = DatePart(day,getdate())
	set @months = DatePart(month,getdate())
	set @hours = DatePart(HOUR,getdate())
	set @str = 'hour'+convert(varchar,@hours)
	BEGIN  -- 添加访问用户信息
		SELECT * FROM [tb_dayStat] where [year]=STR(@years) and [months]=str(@months) and [days]=STR(@days) and [ip]=@ip and [vpage]=@vpage	and [vcome]=@vcome  
		if (@@ROWCOUNT = 0) -- 如果是第一条数据
			INSERT INTO [tb_dayStat] ([ip],[vcome],[vpage],[system],[browser],[source],[resolution])
			VALUES (@ip,@vcome,@vpage,@system,@browser,@source,@resolution)
		else
			UPDATE [tb_dayStat] SET [sumNum]=[sumNum]+1 WHERE [year]=STR(@years) and [months]=str(@months) and [days]=STR(@days) and [ip]=@ip and [vpage]=@vpage and [vcome]=@vcome 
	end
	begin -- 添加时段访问信息
		SELECT * FROM [tb_hourStat] where [years]=STR(@years) and [months]=str(@months) and [days]=STR(@days)
		if (@@ROWCOUNT = 0) -- 如果是第一条数据
			begin
				set @strSql='INSERT INTO [tb_hourStat] ([sumNum],'+@str+') VALUES (1,1)'
				exec (@strSql)
			end
		else
			begin
				set @strSql='UPDATE [tb_hourStat] SET [sumNum]=[sumNum]+1,['+@str+']=['+@str+']+1 WHERE [years]='+STR(@years)+' and [months]='+str(@months)+' and [days]='+STR(@days)
				exec (@strSql)
			end			
	end
END
GO
/****** Object:  StoredProcedure [dbo].[auto_count]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[auto_count]
as 
DECLARE @VISIT_NO  INT --访问人数

BEGIN

	SELECT @VISIT_NO = SUM([sumNum])  FROM [tb_hourStat]  where [years] = Year(Getdate()) and [months] = Month(Getdate()) and [days]	= DAY(Getdate())

	WHILE @VISIT_NO < 50000
	BEGIN
		UPDATE [tb_hourStat] SET [sumNum] = [sumNum] + 8000 where [years] = Year(Getdate()) and [months] = Month(Getdate()) and [days]	= DAY(Getdate())
   
	   IF (SELECT SUM([sumNum])  FROM [tb_hourStat]  where [years] = Year(Getdate()) and [months] = Month(Getdate()) and [days]	= DAY(Getdate())) > 50000
		  BREAK
	   ELSE
		  CONTINUE
	END
    
    
END
GO
/****** Object:  StoredProcedure [dbo].[Article_AddArticleInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Article_AddArticleInfo    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Article_AddArticleInfo    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：添加文章
--编写人：覃汝林
--说明：
--时间：2007-1-23 9:05
------------------------------------
CREATE PROCEDURE [dbo].[Article_AddArticleInfo]
@ArticleID int output,
@ClassID int ,
@UserID int ,
@PicID int ,
@PicUrl varchar(100) ,
@Title varchar(200) ,
@Tag varchar(200) ,
@Content ntext ,
@CommFlag int,
@SubTitle varchar(200),
@AddTime datetime,
@Importance int,
@GoUrl varchar(200),
@FlashUrl varchar(200),
@Keyword varchar(500)
 AS 
	INSERT INTO Article_Info(
	[ClassID],[UserID],[PicID],[PicUrl],[Title],[Tag],[Content],[CommFlag],[SubTitle],[AddTime],[Importance],[GoUrl],[FlashUrl],[keyword]
	)VALUES(
	@ClassID,@UserID,@PicID,@PicUrl,@Title,@Tag,@Content,@CommFlag,@SubTitle,@AddTime,@Importance,@GoUrl,@FlashUrl,@Keyword
	)
             
              SET @ArticleID = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Accounts_DeleteByUserID]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Accounts_DeleteByUserID    脚本日期: 2007-5-16 17:04:22 ******/

/****** 对象: 存储过程 dbo.Accounts_DeleteByUserID    脚本日期: 2007-4-25 11:27:27 ******/
------------------------------------
--用途：删除一个管理用户 
--编写人：覃汝林
--说明：
--时间：2007-1-11 9:07:31
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_DeleteByUserID]
@UserID int
 AS 
          if @UserID !=1 --系统管理员屏蔽删除
           begin
	DELETE Accounts_Users  WHERE [UserID] = @UserID
              DELETE Accounts_UserRoles WHERE [UserID] = @UserID
           end
GO
/****** Object:  StoredProcedure [dbo].[Accounts_CreateUser]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Accounts_CreateUser    脚本日期: 2007-5-16 17:04:22 ******/

/****** 对象: 存储过程 dbo.Accounts_CreateUser    脚本日期: 2007-4-25 11:27:27 ******/
------------------------------------
--用途：创建一个管理用户 
--编写人：覃汝林
--说明：
--时间：2007-1-11 11:55
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_CreateUser]
@UserName varchar(50),
@Password varchar(38),
@TrueName varchar(50),
@Sex varchar(2),
@Phone varchar(20),
@Email varchar(100),
@EmployeeID int,
@DepartmentID varchar(15),
@Activity bit,
@UserType varchar(8),
@UserID int output,
@Style int
AS
	INSERT INTO Accounts_Users(UserName, Password, TrueName, Sex, Phone, Email,
		EmployeeID, DepartmentID, Activity, UserType,Style)
	VALUES(@UserName, @Password, @TrueName, @Sex, @Phone, @Email,
		@EmployeeID, @DepartmentID, @Activity, @UserType,@Style)
	
	SET @UserID = @@IDENTITY
	RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[Accounts_CreateRole]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_CreateRole    脚本日期: 2007-5-16 17:04:22 ******/

/****** 对象: 存储过程 dbo.Accounts_CreateRole    脚本日期: 2007-4-25 11:27:27 ******/
------------------------------------
--用途：创建一个角色 
--编写人：覃汝林
--说明：
--时间：2007-1-11 16:01
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_CreateRole]
@Description varchar(255)
AS
	INSERT INTO Accounts_Roles(Description) VALUES(@Description)
	
              RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[Accounts_CreatePermissionCategory]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_CreatePermissionCategory    脚本日期: 2007-5-16 17:04:22 ******/

/****** 对象: 存储过程 dbo.Accounts_CreatePermissionCategory    脚本日期: 2007-4-25 11:27:27 ******/
------------------------------------
--用途：添加权限类别
--编写人：覃汝林 
--说明：
--时间：2007-1-15 14:12
------------------------------------
CREATE PROCEDURE  [dbo].[Accounts_CreatePermissionCategory]
@Description varchar(50)
AS
	INSERT INTO Accounts_PermissionCategories(Description) VALUES(@Description)
	RETURN @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Accounts_CreatePermission]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
------------------------------------
--用途：增加新权限
--编写人：DDY 
--说明：
--时间：2007-1-15 14:31
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_CreatePermission]
@CategoryID int,
@Description varchar(50)
AS
	INSERT INTO Accounts_Permissions(CategoryID,Description) VALUES(@CategoryID,@Description)
	RETURN @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Accounts_AddUserToRole]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
------------------------------------
--用途：给用户分配角色 
--编写人：DDY
--说明：
--时间：2007-1-11 15:18
------------------------------------
CREATE PROCEDURE  [dbo].[Accounts_AddUserToRole]
@UserID int,
@RoleID int
AS
	DECLARE @Count int
	
	SELECT @Count = Count(UserID) FROM Accounts_UserRoles WHERE
		RoleID = @RoleID AND UserID = @UserID
	IF @Count = 0
		INSERT INTO Accounts_UserRoles(UserID, RoleID)
		VALUES(@UserID, @RoleID)
GO
/****** Object:  StoredProcedure [dbo].[Accounts_AddPermissionToRole]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
------------------------------------
--用途：增加一个权限到角色权限里 
--编写人：DDY
--说明：
--时间：2007-1-12 16:09
------------------------------------
CREATE PROCEDURE  [dbo].[Accounts_AddPermissionToRole]
@RoleID int,
@PermissionID int
AS
	DECLARE @Count int
	SELECT @Count = Count(PermissionID) FROM Accounts_RolePermissions WHERE
		RoleID = @RoleID and PermissionID = @PermissionID
	
	IF @Count = 0
		INSERT INTO Accounts_RolePermissions(RoleID, PermissionID)
		VALUES(@RoleID, @PermissionID)
GO
/****** Object:  StoredProcedure [dbo].[Accounts_AddMenuTree]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
------------------------------------
--用途：增加菜单
--编写人：DDY
--说明：
--时间：2007-1-31  10:17
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_AddMenuTree]
@NodeID int output,
@Text varchar(100) ,
@ParentID int ,
@Location varchar(50) ,
@OrderID int ,
@comment varchar(50) ,
@Url varchar(100) ,
@PermissionID int ,
@ImageUrl varchar(100) 
 AS 
	INSERT INTO Menu_Tree(
	[Text],[ParentID],[Location],[OrderID],[comment],[Url],[PermissionID],[ImageUrl]
	)VALUES(
	@Text,@ParentID,@Location,@OrderID,@comment,@Url,@PermissionID,@ImageUrl
	)
  
	SET @NodeID = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Accounts_UpdateUsers]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_UpdateUsers    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_UpdateUsers    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：修改用户信息 
--编写人：覃汝林
--说明：
--时间：2007-1-8 17:39:33
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_UpdateUsers]
@UserID int,
@TrueName varchar(50),
@Sex char(2),
@Phone varchar(20),
@Email varchar(100),
@EmployeeID int,
@DepartmentID varchar(15),
@Activity bit,
@UserType char(2),
@Style int
 AS 
	UPDATE Accounts_Users SET 
	[TrueName] = @TrueName,[Sex] = @Sex,[Phone] = @Phone,[Email] = @Email,[EmployeeID] = @EmployeeID,[DepartmentID] = @DepartmentID,[Activity] = @Activity,[UserType] = @UserType,[Style] = @Style
	WHERE [UserID] = @UserID
GO
/****** Object:  StoredProcedure [dbo].[Accounts_UpdateRole]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_UpdateRole    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_UpdateRole    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：修改角色信息 
--编写人：覃汝林
--说明：
--时间：2007-1-12 14:35
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_UpdateRole]
@RoleID int,
@Description varchar(50)
AS
	UPDATE Accounts_Roles SET Description = @Description WHERE RoleID = @RoleID
GO
/****** Object:  StoredProcedure [dbo].[Accounts_UpdatePermission]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_UpdatePermission    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_UpdatePermission    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：修改权限
--编写人：覃汝林 
--说明：
--时间：2007-1-15 14:56
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_UpdatePermission]
@PermissionID int,
@Description varchar(50)
AS
	UPDATE Accounts_Permissions SET Description = @Description WHERE PermissionID = @PermissionID
GO
/****** Object:  StoredProcedure [dbo].[Accounts_UpdatePassword]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_UpdatePassword    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_UpdatePassword    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：修改用户密码
--编写人：覃汝林
--说明：
--时间：2007-1-11 09:06
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_UpdatePassword]
@UserID int,
@Password varchar(38)
 AS 
	UPDATE Accounts_Users SET 
	[Password] = @Password
	WHERE [UserID] = @UserID
GO
/****** Object:  StoredProcedure [dbo].[Accounts_UpdateMenuTree]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_UpdateMenuTree    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_UpdateMenuTree    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：修改菜单
--编写人：覃汝林
--说明：
--时间：2007-1-31  10:31
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_UpdateMenuTree]
@NodeID int,
@Text varchar(100),
@ParentID int,
@Location varchar(50),
@OrderID int,
@comment varchar(50),
@Url varchar(100),
@PermissionID int,
@ImageUrl varchar(100)
 AS 
	UPDATE Menu_Tree SET 
	[Text] = @Text,[ParentID] = @ParentID,[Location] = @Location,[OrderID] = @OrderID,[comment] = @comment,[Url] = @Url,[PermissionID] = @PermissionID,[ImageUrl] = @ImageUrl
	WHERE [NodeID] = @NodeID
GO
/****** Object:  StoredProcedure [dbo].[Accounts_UpdateByAdmin]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_UpdateByAdmin    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_UpdateByAdmin    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：修改用户信息 
--编写人：覃汝林
--说明：
--时间：2007-1-11 11:05
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_UpdateByAdmin]
@UserID int,
@TrueName varchar(50),
@Password varchar(38),
@Sex char(2),
@Phone varchar(20),
@Email varchar(100),
@EmployeeID int,
@DepartmentID varchar(15),
@Activity bit,
@UserType char(2),
@Style int
 AS 
 If @Password='D41D8CD98F00B204E9800998ECF8427E' --为空不更改密码
    begin
	UPDATE Accounts_Users SET 
	[TrueName] = @TrueName,[Sex] = @Sex,[Phone] = @Phone,[Email] = @Email,[EmployeeID] = @EmployeeID,[DepartmentID] = @DepartmentID,[Activity] = @Activity,[UserType] = @UserType,[Style] = @Style
	WHERE [UserID] = @UserID
    end
 else
   begin
             UPDATE Accounts_Users SET 
	[TrueName] = @TrueName,[Password] = @Password,[Sex] = @Sex,[Phone] = @Phone,[Email] = @Email,[EmployeeID] = @EmployeeID,[DepartmentID] = @DepartmentID,[Activity] = @Activity,[UserType] = @UserType,[Style] = @Style
	WHERE [UserID] = @UserID
   end
GO
/****** Object:  StoredProcedure [dbo].[Accounts_UpdateArticleInfo]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_UpdateArticleInfo    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_UpdateArticleInfo    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：修改文章
--编写人：覃汝林 
--说明：
--时间：2007-1-22 18:00
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_UpdateArticleInfo]
@ArticleID int,
@ClassID int,
@UserID int,
@PicID int,
@Title varchar(200),
@Tag varchar(200),
@Content ntext,
@CommFlag int,
@AddTime datetime,
@VisitCount int,
@IsTop int,
@IsVouch int,
@IsDelete int
 AS 
	UPDATE Article_Info SET 
	[UserID] = @UserID,[PicID] = @PicID,[Title] = @Title,[Tag] = @Tag,[Content] = @Content,[CommFlag] = @CommFlag,[AddTime] = @AddTime,[VisitCount] = @VisitCount,[IsTop] = @IsTop,[IsVouch] = @IsVouch,[IsDelete] = @IsDelete
	WHERE [ArticleID] = @ArticleID
GO
/****** Object:  StoredProcedure [dbo].[Accounts_PermissionByUserId]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_PermissionByUserId    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_PermissionByUserId    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：用户是否拥有该权限
--编写人：覃汝林 
--说明：
--时间：2007-01-4 14:22:26
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_PermissionByUserId]
@UserId varchar(18),
@PermissionId varchar(18)
AS
	DECLARE @TempID int
	select @TempID = count(1)  from Accounts_UserRoles a,
                                                           Accounts_RolePermissions b
              where
              a.roleid=b.roleid and a.userid=@UserId  and permissionid=@PermissionId
              IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[Accounts_PageByUserId]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Accounts_PageByUserId    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_PageByUserId    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：UserID + PageName 是否有该页面访问权
--编写人：覃汝林 
--说明：
--时间：2007-01-19 9:48
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_PageByUserId]
@UserId varchar(18),
@PageName varchar(1000)
AS
	DECLARE @TempID int
             select  @TempID = count(1)  from Accounts_UserRoles a,
                                                                    Accounts_RolePermissions b,
                                                                    Menu_Tree c
             where
                       a.roleid=b.roleid  and 
                       a.userid=@UserId   and 
                       b.permissionid=c.PermissionId  and
                       Url like '%'+@PageName+'%'
              IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[Accounts_GetUsers]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_GetUsers    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_GetUsers    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：取得管理用户列表 
--编写人：覃汝林
--说明：
--时间：2007-1-11 9:07:31
------------------------------------
CREATE PROCEDURE  [dbo].[Accounts_GetUsers]
@strWhere varchar(50)
AS
SELECT * FROM Accounts_Users where TrueName like '%'+@strWhere+'%' or UserName like '%'+@strWhere+'%'  order by UserID desc
GO
/****** Object:  StoredProcedure [dbo].[Accounts_GetUserAccountList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_GetUserAccountList    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_GetUserAccountList    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：获得一个用户的权限列表 
--编写人：覃汝林
--说明：
--时间：2007-01-5 11:23:32
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_GetUserAccountList]
@UserID int
 AS 
select c.PermissionID,c.Description 
from     Accounts_UserRoles a,
            Accounts_RolePermissions b,
            Accounts_Permissions c
where a.UserID=@UserID
           and a.RoleID=b.RoleID
           and b.PermissionID=c.PermissionID
GO
/****** Object:  StoredProcedure [dbo].[Accounts_GetTreeListNew]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
-- =============================================
-- Author:		韩振华
-- Create date: <Create Date,,>
-- Description:	获取用户菜单列表
-- =============================================
CREATE PROCEDURE [dbo].[Accounts_GetTreeListNew]
	@userID int
AS
BEGIN
	SET NOCOUNT ON;
	declare @roleID int  -- 角色	
	select @roleID = [RoleID] FROM [Accounts_UserRoles] where UserID = @userID
	--select @roleID 
	SELECT * FROM [Menu_Tree] where NodeID in (SELECT [PermissionID]
  FROM [Accounts_RolePermissions] where RoleID= @roleID ) order by OrderID

END
GO
/****** Object:  StoredProcedure [dbo].[Accounts_GetTreeList]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_GetTreeList    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_GetTreeList    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：获取菜单列表
--编写人：覃汝林
--说明：
--时间：2007-1-31  10:59
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_GetTreeList]
@strWhere varchar(50)
 AS 
	SELECT 
	[NodeID],[Text],[ParentID],[ParentPath],[Location],[OrderID],[comment],[Url],[PermissionID],[ImageUrl],[ModuleID],[KeShiDM],[KeshiPublic]
	 FROM Menu_Tree Where Text like '%'+@strWhere+'%' 
              Order By ParentID,OrderID
GO
/****** Object:  StoredProcedure [dbo].[Accounts_GetRoleDetails]    Script Date: 07/09/2020 21:30:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_GetRoleDetails    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_GetRoleDetails    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：得到角色实体对象的详细信息 
--编写人：覃汝林
--说明：
--时间：2007-1-12 8:59:51
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_GetRoleDetails]
@RoleID int
AS
	SELECT RoleID, Description FROM Accounts_Roles WHERE RoleID = @RoleID
GO
/****** Object:  StoredProcedure [dbo].[Accounts_GetPermissionsDetails]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_GetPermissionsDetails    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_GetPermissionsDetails    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：得到权限实体对象的详细信息 
--编写人：覃汝林
--说明：
--时间：2007-1-16 15:40
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_GetPermissionsDetails]
@PermissionID int
AS
	SELECT PermissionID, Description,CategoryID FROM Accounts_Permissions  WHERE  PermissionID = @PermissionID
GO
/****** Object:  StoredProcedure [dbo].[Accounts_GetPermissionsByCategory]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Accounts_GetPermissionsByCategory    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_GetPermissionsByCategory    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：根据权限类别ID取得权限列表
--编写人：覃汝林 
--说明：
--时间：2007-1-15 10:25
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_GetPermissionsByCategory]
@CategoryID int
AS
	SELECT * FROM Accounts_Permissions where CategoryID=@CategoryID ORDER BY PermissionID Asc
GO
/****** Object:  StoredProcedure [dbo].[Accounts_GetPermissionList]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_GetPermissionList    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_GetPermissionList    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：获取角色已经有( CategoryID)的权限 
--编写人：覃汝林
--说明：
--时间：2007-1-12 15:02
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_GetPermissionList]
@RoleID int,
@CategoryID int
AS
Select a.RoleID,a.PermissionID,b.Description,b.CategoryID  From Accounts_RolePermissions a,
              Accounts_Permissions b
Where
     a.PermissionID=b.PermissionID and 
     b.CategoryID=@CategoryID and
     RoleID=@RoleID
GO
/****** Object:  StoredProcedure [dbo].[Accounts_GetPermissionCategories]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_GetPermissionCategories    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_GetPermissionCategories    脚本日期: 2007-4-25 11:27:28 ******/
------------------------------------
--用途：获取权限分类列表 
--编写人：覃汝林
--说明：
--时间：2007-1-12 9:57
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_GetPermissionCategories]
@strWhere varchar(50)
AS
	SELECT * FROM Accounts_PermissionCategories
GO
/****** Object:  StoredProcedure [dbo].[Accounts_GetNoPermissionList]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_GetNoPermissionList    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_GetNoPermissionList    脚本日期: 2007-4-25 11:27:27 ******/
------------------------------------
--用途：获取角色还没有( CategoryID)的权限 
--编写人：覃汝林
--说明：
--时间：2007-1-12 15:02
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_GetNoPermissionList]
@RoleID int,
@CategoryID int
AS
Select * From Accounts_Permissions 
Where 
    CategoryID=@CategoryID and
    PermissionID not in
(Select a.PermissionID From Accounts_RolePermissions a,
                            Accounts_Permissions b
Where
     a.PermissionID=b.PermissionID and 
     b.CategoryID=@CategoryID and
     RoleID=@RoleID)
GO
/****** Object:  StoredProcedure [dbo].[Accounts_GetModelByUserName]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_GetModelByUserName    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_GetModelByUserName    脚本日期: 2007-4-25 11:27:27 ******/
------------------------------------
--用途：得到实体用户的详细信息 
--编写人：覃汝林
--说明:
--时间：2006-12-30 14:56:52
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_GetModelByUserName]
@UserName varchar(50)
 AS 
	SELECT 
	[UserID],[UserName],[Password],[TrueName],[Sex],[Phone],[Email],[EmployeeID],[DepartmentID],[Activity],[UserType],[Style]
	 FROM Accounts_Users
	 WHERE [UserName] = @UserName
GO
/****** Object:  StoredProcedure [dbo].[Accounts_GetModelByUserID]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_GetModelByUserID    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_GetModelByUserID    脚本日期: 2007-4-25 11:27:27 ******/
------------------------------------
--用途：得到实体用户的详细信息
--编写人：覃汝林 
--说明：
--时间：2006-12-30 14:56:52
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_GetModelByUserID]
@UserID int
 AS 
	SELECT 
	[UserID],[UserName],[Password],[TrueName],[Sex],[Phone],[Email],[EmployeeID],[DepartmentID],[Activity],[UserType],[Style]
	 FROM Accounts_Users
	 WHERE [UserID] = @UserID
GO
/****** Object:  StoredProcedure [dbo].[Accounts_GetMenuTreeModel]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_GetMenuTreeModel    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_GetMenuTreeModel    脚本日期: 2007-4-25 11:27:27 ******/
------------------------------------
--用途：得到菜单对象实体
--编写人：覃汝林
--说明：
--时间：2007-1-31  10:46
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_GetMenuTreeModel]
@NodeID int
 AS 
	SELECT 
	[NodeID],[Text],[ParentID],[ParentPath],[Location],[OrderID],[comment],[Url],[PermissionID],[ImageUrl],[ModuleID],[KeShiDM],[KeshiPublic]
	 FROM Menu_Tree
	 WHERE [NodeID] = @NodeID
GO
/****** Object:  StoredProcedure [dbo].[Accounts_GetAllRoles]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** 对象: 存储过程 dbo.Accounts_GetAllRoles    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_GetAllRoles    脚本日期: 2007-4-25 11:27:27 ******/
------------------------------------
--用途：取得所有角色
--编写人：覃汝林
--说明：
--时间：2007-1-12 8:59:51
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_GetAllRoles]
@strWhere varchar(50)
AS
	SELECT RoleID, Description FROM Accounts_Roles ORDER BY Description ASC
GO
/****** Object:  StoredProcedure [dbo].[Accounts_GetAllCategories]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_GetAllCategories    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_GetAllCategories    脚本日期: 2007-4-25 11:27:27 ******/
------------------------------------
--用途：取得所有权限类别列表
--编写人：覃汝林 
--说明：
--时间：2007-1-16 17:11
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_GetAllCategories]
@strWhere varchar(255)
AS
	SELECT * FROM Accounts_PermissionCategories ORDER BY CategoryID desc
GO
/****** Object:  StoredProcedure [dbo].[Accounts_ExistsByUserName]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_ExistsByUserName    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_ExistsByUserName    脚本日期: 2007-4-25 11:27:27 ******/
------------------------------------
--用途：用户是否存在 
--编写人：覃汝林
--时间：2006-12-30 14:56:52
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_ExistsByUserName]
@UserName varchar(50)
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM Accounts_Users WHERE [UserName] = @UserName
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[Accounts_ExistsByUserID]    Script Date: 07/09/2020 21:30:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** 对象: 存储过程 dbo.Accounts_ExistsByUserID    脚本日期: 2007-5-16 17:04:23 ******/

/****** 对象: 存储过程 dbo.Accounts_ExistsByUserID    脚本日期: 2007-4-25 11:27:27 ******/
------------------------------------
--用途：用户是否存在
--编写人：覃汝林 
--说明：
--时间：2006-12-30 14:56:52
------------------------------------
CREATE PROCEDURE [dbo].[Accounts_ExistsByUserID]
@UserID INT
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM Accounts_Users WHERE [UserID] = @UserID
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1
GO
/****** Object:  Default [DF_Accounts_Department_ParentID]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Accounts_Department] ADD  CONSTRAINT [DF_Accounts_Department_ParentID]  DEFAULT ((0)) FOR [ParentID]
GO
/****** Object:  Default [DF_Accounts_Department_AddTime]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Accounts_Department] ADD  CONSTRAINT [DF_Accounts_Department_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_Accounts_UserLoginInfo_ErrorDate]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Accounts_UserLoginInfo] ADD  CONSTRAINT [DF_Accounts_UserLoginInfo_ErrorDate]  DEFAULT (getdate()) FOR [ErrorDate]
GO
/****** Object:  Default [DF_Tb_Class_Parent_ID]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Article_Class] ADD  CONSTRAINT [DF_Tb_Class_Parent_ID]  DEFAULT ((0)) FOR [ParentID]
GO
/****** Object:  Default [DF_Tb_Class_Class_Depth]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Article_Class] ADD  CONSTRAINT [DF_Tb_Class_Class_Depth]  DEFAULT ((0)) FOR [ClassDepth]
GO
/****** Object:  Default [DF_Tb_Class_Class_Order]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Article_Class] ADD  CONSTRAINT [DF_Tb_Class_Class_Order]  DEFAULT ((0)) FOR [ClassOrder]
GO
/****** Object:  Default [DF_Article_Class_status]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Article_Class] ADD  CONSTRAINT [DF_Article_Class_status]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF_Article_Info_ClassID]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Article_Info] ADD  CONSTRAINT [DF_Article_Info_ClassID]  DEFAULT ((0)) FOR [ClassID]
GO
/****** Object:  Default [DF_Article_Info_UserID]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Article_Info] ADD  CONSTRAINT [DF_Article_Info_UserID]  DEFAULT ((0)) FOR [UserID]
GO
/****** Object:  Default [DF_Article_Info_PicID]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Article_Info] ADD  CONSTRAINT [DF_Article_Info_PicID]  DEFAULT ((0)) FOR [PicID]
GO
/****** Object:  Default [DF_Article_Info_PicUrl]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Article_Info] ADD  CONSTRAINT [DF_Article_Info_PicUrl]  DEFAULT ('') FOR [PicUrl]
GO
/****** Object:  Default [DF_Article_Info_ArticleTitle]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Article_Info] ADD  CONSTRAINT [DF_Article_Info_ArticleTitle]  DEFAULT ('') FOR [Title]
GO
/****** Object:  Default [DF_Article_Info_ArticleTag]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Article_Info] ADD  CONSTRAINT [DF_Article_Info_ArticleTag]  DEFAULT ('') FOR [Tag]
GO
/****** Object:  Default [DF_Article_Info_ArticleContent]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Article_Info] ADD  CONSTRAINT [DF_Article_Info_ArticleContent]  DEFAULT ('') FOR [Content]
GO
/****** Object:  Default [DF_Article_Info_ArticleCommFlag]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Article_Info] ADD  CONSTRAINT [DF_Article_Info_ArticleCommFlag]  DEFAULT ((0)) FOR [CommFlag]
GO
/****** Object:  Default [DF_Article_Info_AddTime]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Article_Info] ADD  CONSTRAINT [DF_Article_Info_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_Article_Info_VisitCount]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Article_Info] ADD  CONSTRAINT [DF_Article_Info_VisitCount]  DEFAULT ((0)) FOR [VisitCount]
GO
/****** Object:  Default [DF_Article_Info_Top]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Article_Info] ADD  CONSTRAINT [DF_Article_Info_Top]  DEFAULT ((0)) FOR [IsTop]
GO
/****** Object:  Default [DF_Article_Info_ArticleVouch]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Article_Info] ADD  CONSTRAINT [DF_Article_Info_ArticleVouch]  DEFAULT ((0)) FOR [IsVouch]
GO
/****** Object:  Default [DF_Article_Info_ArticleDelete]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Article_Info] ADD  CONSTRAINT [DF_Article_Info_ArticleDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
/****** Object:  Default [DF_Article_Info_Importance]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Article_Info] ADD  CONSTRAINT [DF_Article_Info_Importance]  DEFAULT ((0)) FOR [Importance]
GO
/****** Object:  Default [DF_Article_Info_GoUrl]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Article_Info] ADD  CONSTRAINT [DF_Article_Info_GoUrl]  DEFAULT ('') FOR [GoUrl]
GO
/****** Object:  Default [DF_Artilce_Comment_live_id]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Artilce_Comment] ADD  CONSTRAINT [DF_Artilce_Comment_live_id]  DEFAULT ((0)) FOR [ArticleID]
GO
/****** Object:  Default [DF_Artilce_Comment_parent_id]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Artilce_Comment] ADD  CONSTRAINT [DF_Artilce_Comment_parent_id]  DEFAULT ((0)) FOR [ParentID]
GO
/****** Object:  Default [DF_Artilce_Comment_openid]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Artilce_Comment] ADD  CONSTRAINT [DF_Artilce_Comment_openid]  DEFAULT ((0)) FOR [Openid]
GO
/****** Object:  Default [DF_Artilce_Comment_user_name]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Artilce_Comment] ADD  CONSTRAINT [DF_Artilce_Comment_user_name]  DEFAULT ('') FOR [UserName]
GO
/****** Object:  Default [DF_Artilce_Comment_islock]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Artilce_Comment] ADD  CONSTRAINT [DF_Artilce_Comment_islock]  DEFAULT ((0)) FOR [IsLock]
GO
/****** Object:  Default [DF_Artilce_Comment_add_time]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Artilce_Comment] ADD  CONSTRAINT [DF_Artilce_Comment_add_time]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_Artilce_Comment_support]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Artilce_Comment] ADD  CONSTRAINT [DF_Artilce_Comment_support]  DEFAULT ((0)) FOR [Support]
GO
/****** Object:  Default [DF_Artilce_Comment_nosupport]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Artilce_Comment] ADD  CONSTRAINT [DF_Artilce_Comment_nosupport]  DEFAULT ((0)) FOR [NoSupport]
GO
/****** Object:  Default [DF_Download_Class_ParentID]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Download_Class] ADD  CONSTRAINT [DF_Download_Class_ParentID]  DEFAULT ((0)) FOR [ParentID]
GO
/****** Object:  Default [DF_Download_Class_ClassDepth]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Download_Class] ADD  CONSTRAINT [DF_Download_Class_ClassDepth]  DEFAULT ((0)) FOR [ClassDepth]
GO
/****** Object:  Default [DF_Download_Class_ClassOrder]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Download_Class] ADD  CONSTRAINT [DF_Download_Class_ClassOrder]  DEFAULT ((0)) FOR [ClassOrder]
GO
/****** Object:  Default [DF_Download_Class_status]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Download_Class] ADD  CONSTRAINT [DF_Download_Class_status]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF_dt_job_CreateTime]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[dt_job] ADD  CONSTRAINT [DF_dt_job_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_Opinion_addtime]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Opinion] ADD  CONSTRAINT [DF_Opinion_addtime]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF_Prize_type]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Prize] ADD  CONSTRAINT [DF_Prize_type]  DEFAULT ((0)) FOR [type]
GO
/****** Object:  Default [DF_Pro_Class_ParentID]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Pro_Class] ADD  CONSTRAINT [DF_Pro_Class_ParentID]  DEFAULT ((0)) FOR [ParentID]
GO
/****** Object:  Default [DF_Pro_Class_ClassDepth]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Pro_Class] ADD  CONSTRAINT [DF_Pro_Class_ClassDepth]  DEFAULT ((0)) FOR [ClassDepth]
GO
/****** Object:  Default [DF_Pro_Class_ClassOrder]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Pro_Class] ADD  CONSTRAINT [DF_Pro_Class_ClassOrder]  DEFAULT ((0)) FOR [ClassOrder]
GO
/****** Object:  Default [DF_Pro_Info_ClassID]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Pro_Info] ADD  CONSTRAINT [DF_Pro_Info_ClassID]  DEFAULT ((0)) FOR [ClassID]
GO
/****** Object:  Default [DF_Pro_Info_UserID]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Pro_Info] ADD  CONSTRAINT [DF_Pro_Info_UserID]  DEFAULT ((0)) FOR [UserID]
GO
/****** Object:  Default [DF_Pro_Info_UserName]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Pro_Info] ADD  CONSTRAINT [DF_Pro_Info_UserName]  DEFAULT ('') FOR [UserName]
GO
/****** Object:  Default [DF_Pro_Info_Title]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Pro_Info] ADD  CONSTRAINT [DF_Pro_Info_Title]  DEFAULT ('') FOR [Title]
GO
/****** Object:  Default [DF_Pro_Info_Content]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Pro_Info] ADD  CONSTRAINT [DF_Pro_Info_Content]  DEFAULT ('') FOR [Content]
GO
/****** Object:  Default [DF_Pro_Info_Remark]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Pro_Info] ADD  CONSTRAINT [DF_Pro_Info_Remark]  DEFAULT ('') FOR [Remark]
GO
/****** Object:  Default [DF_Pro_Info_ProPath]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Pro_Info] ADD  CONSTRAINT [DF_Pro_Info_ProPath]  DEFAULT ('') FOR [PicPath]
GO
/****** Object:  Default [DF_Pro_Info_ProName]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Pro_Info] ADD  CONSTRAINT [DF_Pro_Info_ProName]  DEFAULT ('') FOR [PicName]
GO
/****** Object:  Default [DF_Pro_Info_CommFlag]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Pro_Info] ADD  CONSTRAINT [DF_Pro_Info_CommFlag]  DEFAULT ((0)) FOR [CommFlag]
GO
/****** Object:  Default [DF_Pro_Info_AddTime]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Pro_Info] ADD  CONSTRAINT [DF_Pro_Info_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_Pro_Info_VistCount]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Pro_Info] ADD  CONSTRAINT [DF_Pro_Info_VistCount]  DEFAULT ((0)) FOR [VisitCount]
GO
/****** Object:  Default [DF_Pro_Info_IsTop]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Pro_Info] ADD  CONSTRAINT [DF_Pro_Info_IsTop]  DEFAULT ((0)) FOR [IsTop]
GO
/****** Object:  Default [DF_Pro_Info_IsVouch]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Pro_Info] ADD  CONSTRAINT [DF_Pro_Info_IsVouch]  DEFAULT ((0)) FOR [IsVouch]
GO
/****** Object:  Default [DF_Pro_Info_IsDelete]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Pro_Info] ADD  CONSTRAINT [DF_Pro_Info_IsDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
/****** Object:  Default [DF_Pro_Info_Aud]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Pro_Info] ADD  CONSTRAINT [DF_Pro_Info_Aud]  DEFAULT ((0)) FOR [Aud]
GO
/****** Object:  Default [DF_scene_scenetype]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene] ADD  CONSTRAINT [DF_scene_scenetype]  DEFAULT ((0)) FOR [scenetype]
GO
/****** Object:  Default [DF_scene_userid]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene] ADD  CONSTRAINT [DF_scene_userid]  DEFAULT ((0)) FOR [userid]
GO
/****** Object:  Default [DF_scene_hitcount]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene] ADD  CONSTRAINT [DF_scene_hitcount]  DEFAULT ((0)) FOR [hitcount]
GO
/****** Object:  Default [DF_scene_addtime]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene] ADD  CONSTRAINT [DF_scene_addtime]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF_scene_isdelete]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene] ADD  CONSTRAINT [DF_scene_isdelete]  DEFAULT ((0)) FOR [isdelete]
GO
/****** Object:  Default [DF_scene_pagetype]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene] ADD  CONSTRAINT [DF_scene_pagetype]  DEFAULT ((0)) FOR [pagetype]
GO
/****** Object:  Default [DF_scene_data_sceneid]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene_data] ADD  CONSTRAINT [DF_scene_data_sceneid]  DEFAULT ((0)) FOR [sceneid]
GO
/****** Object:  Default [DF_scene_data_userid]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene_data] ADD  CONSTRAINT [DF_scene_data_userid]  DEFAULT ((0)) FOR [userid]
GO
/****** Object:  Default [DF_scene_data_addtime]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene_data] ADD  CONSTRAINT [DF_scene_data_addtime]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF_scene_data_isdelete]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene_data] ADD  CONSTRAINT [DF_scene_data_isdelete]  DEFAULT ((0)) FOR [isdelete]
GO
/****** Object:  Default [DF_scene_page_sceneid]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene_page] ADD  CONSTRAINT [DF_scene_page_sceneid]  DEFAULT ((0)) FOR [sceneid]
GO
/****** Object:  Default [DF_scene_page_pagecurrentnum]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene_page] ADD  CONSTRAINT [DF_scene_page_pagecurrentnum]  DEFAULT ((1)) FOR [pagecurrentnum]
GO
/****** Object:  Default [DF_scene_page_addtime]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene_page] ADD  CONSTRAINT [DF_scene_page_addtime]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF_scene_page_userid]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene_page] ADD  CONSTRAINT [DF_scene_page_userid]  DEFAULT ((0)) FOR [userid]
GO
/****** Object:  Default [DF_scene_page_isdelete]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene_page] ADD  CONSTRAINT [DF_scene_page_isdelete]  DEFAULT ((0)) FOR [isdelete]
GO
/****** Object:  Default [DF_scene_page_ismodel]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene_page] ADD  CONSTRAINT [DF_scene_page_ismodel]  DEFAULT ((0)) FOR [ismodel]
GO
/****** Object:  Default [DF_scene_upfile_userid]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene_upfile] ADD  CONSTRAINT [DF_scene_upfile_userid]  DEFAULT ((0)) FOR [userid]
GO
/****** Object:  Default [DF_scene_upfile_filetype]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene_upfile] ADD  CONSTRAINT [DF_scene_upfile_filetype]  DEFAULT ((0)) FOR [filetype]
GO
/****** Object:  Default [DF_sence_upfile_addtime]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene_upfile] ADD  CONSTRAINT [DF_sence_upfile_addtime]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF_scene_upfile_isdelete]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene_upfile] ADD  CONSTRAINT [DF_scene_upfile_isdelete]  DEFAULT ((0)) FOR [isdelete]
GO
/****** Object:  Default [DF_scene_user_addtime]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene_user] ADD  CONSTRAINT [DF_scene_user_addtime]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF_scene_user_isdelete]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[scene_user] ADD  CONSTRAINT [DF_scene_user_isdelete]  DEFAULT ((0)) FOR [isdelete]
GO
/****** Object:  Default [DF_Search_datetime]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Search] ADD  CONSTRAINT [DF_Search_datetime]  DEFAULT (getdate()) FOR [datetime]
GO
/****** Object:  Default [DF_Student_Class_ParentID]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Student_Class] ADD  CONSTRAINT [DF_Student_Class_ParentID]  DEFAULT ((0)) FOR [ParentID]
GO
/****** Object:  Default [DF_Student_Class_Addtime]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Student_Class] ADD  CONSTRAINT [DF_Student_Class_Addtime]  DEFAULT (getdate()) FOR [Addtime]
GO
/****** Object:  Default [DF_Student_Contract_StudentID]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Student_Contract] ADD  CONSTRAINT [DF_Student_Contract_StudentID]  DEFAULT ((0)) FOR [StudentID]
GO
/****** Object:  Default [DF_Student_Contract_Addtime]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Student_Contract] ADD  CONSTRAINT [DF_Student_Contract_Addtime]  DEFAULT (getdate()) FOR [Addtime]
GO
/****** Object:  Default [DF_Student_Info_UserID]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Student_Info] ADD  CONSTRAINT [DF_Student_Info_UserID]  DEFAULT ((0)) FOR [UserID]
GO
/****** Object:  Default [DF_Student_Info_Addtime]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Student_Info] ADD  CONSTRAINT [DF_Student_Info_Addtime]  DEFAULT (getdate()) FOR [Addtime]
GO
/****** Object:  Default [DF_Student_Info_State]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Student_Info] ADD  CONSTRAINT [DF_Student_Info_State]  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF_surveyInfo_classid]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[surveyInfo] ADD  CONSTRAINT [DF_surveyInfo_classid]  DEFAULT ((0)) FOR [classid]
GO
/****** Object:  Default [DF_surveyInfo_hits]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[surveyInfo] ADD  CONSTRAINT [DF_surveyInfo_hits]  DEFAULT ((0)) FOR [hits]
GO
/****** Object:  Default [DF_surveyInfo_Addtime]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[surveyInfo] ADD  CONSTRAINT [DF_surveyInfo_Addtime]  DEFAULT (getdate()) FOR [Addtime]
GO
/****** Object:  Default [DF_surveyInfo_status]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[surveyInfo] ADD  CONSTRAINT [DF_surveyInfo_status]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF_tb_dayStat_year]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_dayStat] ADD  CONSTRAINT [DF_tb_dayStat_year]  DEFAULT (datepart(year,getdate())) FOR [year]
GO
/****** Object:  Default [DF_tb_dayStat_months]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_dayStat] ADD  CONSTRAINT [DF_tb_dayStat_months]  DEFAULT (datepart(month,getdate())) FOR [months]
GO
/****** Object:  Default [DF_tb_dayStat_days]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_dayStat] ADD  CONSTRAINT [DF_tb_dayStat_days]  DEFAULT (datepart(day,getdate())) FOR [days]
GO
/****** Object:  Default [DF_tb_dayStat_date]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_dayStat] ADD  CONSTRAINT [DF_tb_dayStat_date]  DEFAULT (getdate()) FOR [date]
GO
/****** Object:  Default [DF_tb_dayStat_sumNum_1]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_dayStat] ADD  CONSTRAINT [DF_tb_dayStat_sumNum_1]  DEFAULT ((1)) FOR [sumNum]
GO
/****** Object:  Default [DF_tb_hourStat_years]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_years]  DEFAULT (datepart(year,getdate())) FOR [years]
GO
/****** Object:  Default [DF_tb_hourStat_months]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_months]  DEFAULT (datepart(month,getdate())) FOR [months]
GO
/****** Object:  Default [DF_tb_hourStat_days]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_days]  DEFAULT (datepart(day,getdate())) FOR [days]
GO
/****** Object:  Default [DF_tb_hourStat_sumNum]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_sumNum]  DEFAULT ((1)) FOR [sumNum]
GO
/****** Object:  Default [DF_tb_hourStat_hour0]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour0]  DEFAULT ((0)) FOR [hour0]
GO
/****** Object:  Default [DF_tb_hourStat_hour1]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour1]  DEFAULT ((0)) FOR [hour1]
GO
/****** Object:  Default [DF_tb_hourStat_hour2]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour2]  DEFAULT ((0)) FOR [hour2]
GO
/****** Object:  Default [DF_tb_hourStat_hour3]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour3]  DEFAULT ((0)) FOR [hour3]
GO
/****** Object:  Default [DF_tb_hourStat_hour4]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour4]  DEFAULT ((0)) FOR [hour4]
GO
/****** Object:  Default [DF_tb_hourStat_hour5]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour5]  DEFAULT ((0)) FOR [hour5]
GO
/****** Object:  Default [DF_tb_hourStat_hour6]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour6]  DEFAULT ((0)) FOR [hour6]
GO
/****** Object:  Default [DF_tb_hourStat_hour7]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour7]  DEFAULT ((0)) FOR [hour7]
GO
/****** Object:  Default [DF_tb_hourStat_hour8]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour8]  DEFAULT ((0)) FOR [hour8]
GO
/****** Object:  Default [DF_tb_hourStat_hour9]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour9]  DEFAULT ((0)) FOR [hour9]
GO
/****** Object:  Default [DF_tb_hourStat_hour10]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour10]  DEFAULT ((0)) FOR [hour10]
GO
/****** Object:  Default [DF_tb_hourStat_hour11]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour11]  DEFAULT ((0)) FOR [hour11]
GO
/****** Object:  Default [DF_tb_hourStat_hour12]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour12]  DEFAULT ((0)) FOR [hour12]
GO
/****** Object:  Default [DF_tb_hourStat_hour13]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour13]  DEFAULT ((0)) FOR [hour13]
GO
/****** Object:  Default [DF_tb_hourStat_hour14]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour14]  DEFAULT ((0)) FOR [hour14]
GO
/****** Object:  Default [DF_tb_hourStat_hour15]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour15]  DEFAULT ((0)) FOR [hour15]
GO
/****** Object:  Default [DF_tb_hourStat_hour16]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour16]  DEFAULT ((0)) FOR [hour16]
GO
/****** Object:  Default [DF_tb_hourStat_hour17]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour17]  DEFAULT ((0)) FOR [hour17]
GO
/****** Object:  Default [DF_tb_hourStat_hour18]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour18]  DEFAULT ((0)) FOR [hour18]
GO
/****** Object:  Default [DF_tb_hourStat_hour19]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour19]  DEFAULT ((0)) FOR [hour19]
GO
/****** Object:  Default [DF_tb_hourStat_hour20]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour20]  DEFAULT ((0)) FOR [hour20]
GO
/****** Object:  Default [DF_tb_hourStat_hour21]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour21]  DEFAULT ((0)) FOR [hour21]
GO
/****** Object:  Default [DF_tb_hourStat_hour22]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour22]  DEFAULT ((0)) FOR [hour22]
GO
/****** Object:  Default [DF_tb_hourStat_hour23]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_hour23]  DEFAULT ((0)) FOR [hour23]
GO
/****** Object:  Default [DF_tb_hourStat_date]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_hourStat] ADD  CONSTRAINT [DF_tb_hourStat_date]  DEFAULT (getdate()) FOR [date]
GO
/****** Object:  Default [DF_Table_1_sumNum1]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_urlStat] ADD  CONSTRAINT [DF_Table_1_sumNum1]  DEFAULT ((1)) FOR [sumNum]
GO
/****** Object:  Default [DF_tb_urlStat_date]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[tb_urlStat] ADD  CONSTRAINT [DF_tb_urlStat_date]  DEFAULT (getdate()) FOR [date]
GO
/****** Object:  Default [DF_Temp_Info_Sort]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Temp_Info] ADD  CONSTRAINT [DF_Temp_Info_Sort]  DEFAULT ((0)) FOR [Sort]
GO
/****** Object:  Default [DF_Temp_Info_Title]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Temp_Info] ADD  CONSTRAINT [DF_Temp_Info_Title]  DEFAULT ('') FOR [Title]
GO
/****** Object:  Default [DF_Temp_Info_Content]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Temp_Info] ADD  CONSTRAINT [DF_Temp_Info_Content]  DEFAULT ('') FOR [Content]
GO
/****** Object:  Default [DF_Video_Info_ClassID]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Video_Info] ADD  CONSTRAINT [DF_Video_Info_ClassID]  DEFAULT ((0)) FOR [ClassID]
GO
/****** Object:  Default [DF_Video_Info_Sort]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Video_Info] ADD  CONSTRAINT [DF_Video_Info_Sort]  DEFAULT ((99)) FOR [Aud]
GO
/****** Object:  Default [DF_Video_Info_AddTime]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Video_Info] ADD  CONSTRAINT [DF_Video_Info_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_Video_Info_TopTime]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Video_Info] ADD  CONSTRAINT [DF_Video_Info_TopTime]  DEFAULT (getdate()) FOR [TopTime]
GO
/****** Object:  Default [DF_Video_Info_VistiCount]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Video_Info] ADD  CONSTRAINT [DF_Video_Info_VistiCount]  DEFAULT ((0)) FOR [VisitCount]
GO
/****** Object:  Default [DF_Video_Info_VouchTime]    Script Date: 07/09/2020 21:30:35 ******/
ALTER TABLE [dbo].[Video_Info] ADD  CONSTRAINT [DF_Video_Info_VouchTime]  DEFAULT (getdate()) FOR [VouchTime]
GO
