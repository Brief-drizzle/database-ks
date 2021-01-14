/*
 Navicat Premium Data Transfer

 Source Server         : database
 Source Server Type    : SQL Server
 Source Server Version : 15002070
 Source Host           : 酱鸭\SQLEXPRESS:1433
 Source Catalog        : database
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002070
 File Encoding         : 65001

 Date: 14/01/2021 12:04:37
*/


-- ----------------------------
-- Table structure for 参与项目认定表
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[参与项目认定表]') AND type IN ('U'))
	DROP TABLE [dbo].[参与项目认定表]
GO

CREATE TABLE [dbo].[参与项目认定表] (
  [参与项目id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [导师id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [项目id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [承担工作] text COLLATE Chinese_PRC_CI_AS  NULL,
  [开始时间] datetime  NOT NULL,
  [结束时间] datetime  NOT NULL,
  [审批状态] int  NOT NULL,
  [审批时间] datetime  NOT NULL,
  [折合费用] decimal(8,2)  NULL,
  [是否为负责人] int  NULL
)
GO

ALTER TABLE [dbo].[参与项目认定表] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 参与项目认定表
-- ----------------------------

-- ----------------------------
-- Table structure for 导师
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[导师]') AND type IN ('U'))
	DROP TABLE [dbo].[导师]
GO

CREATE TABLE [dbo].[导师] (
  [导师id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [教师id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [管理员id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [是否为导师] int  NOT NULL
)
GO

ALTER TABLE [dbo].[导师] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 导师
-- ----------------------------

-- ----------------------------
-- Table structure for 教师
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[教师]') AND type IN ('U'))
	DROP TABLE [dbo].[教师]
GO

CREATE TABLE [dbo].[教师] (
  [教师id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [教师姓名] varchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [职称] varchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [电话] varchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [出生日期] datetime  NULL,
  [邮箱地址] varchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [性别] int  NULL
)
GO

ALTER TABLE [dbo].[教师] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 教师
-- ----------------------------

-- ----------------------------
-- Table structure for 教师与学科
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[教师与学科]') AND type IN ('U'))
	DROP TABLE [dbo].[教师与学科]
GO

CREATE TABLE [dbo].[教师与学科] (
  [学科id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [教师id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[教师与学科] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 教师与学科
-- ----------------------------

-- ----------------------------
-- Table structure for 课程
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[课程]') AND type IN ('U'))
	DROP TABLE [dbo].[课程]
GO

CREATE TABLE [dbo].[课程] (
  [课程id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [课程名] varchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [课程性质] varchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [课程开始时间] datetime  NULL,
  [课程结束时间] datetime  NULL,
  [授课对象] varchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [选课人数] int  NULL,
  [学时] int  NULL
)
GO

ALTER TABLE [dbo].[课程] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 课程
-- ----------------------------

-- ----------------------------
-- Table structure for 授课教师
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[授课教师]') AND type IN ('U'))
	DROP TABLE [dbo].[授课教师]
GO

CREATE TABLE [dbo].[授课教师] (
  [授课教师id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [管理员id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [教师id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [是否为授课教师] int  NOT NULL
)
GO

ALTER TABLE [dbo].[授课教师] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 授课教师
-- ----------------------------

-- ----------------------------
-- Table structure for 授课教师教授课程
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[授课教师教授课程]') AND type IN ('U'))
	DROP TABLE [dbo].[授课教师教授课程]
GO

CREATE TABLE [dbo].[授课教师教授课程] (
  [授课教师id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [课程id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[授课教师教授课程] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 授课教师教授课程
-- ----------------------------

-- ----------------------------
-- Table structure for 项目
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[项目]') AND type IN ('U'))
	DROP TABLE [dbo].[项目]
GO

CREATE TABLE [dbo].[项目] (
  [项目id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [项目类别id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [管理员id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [导师id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [项目名称] varchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [开始时间] datetime  NOT NULL,
  [结束时间] datetime  NOT NULL,
  [经费数量] decimal(8,2)  NOT NULL,
  [审批状态] int  NOT NULL,
  [审批时间] datetime  NULL
)
GO

ALTER TABLE [dbo].[项目] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 项目
-- ----------------------------

-- ----------------------------
-- Table structure for 项目类别
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[项目类别]') AND type IN ('U'))
	DROP TABLE [dbo].[项目类别]
GO

CREATE TABLE [dbo].[项目类别] (
  [项目类别id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [项目类别名称] varchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[项目类别] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 项目类别
-- ----------------------------

-- ----------------------------
-- Table structure for 学科
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[学科]') AND type IN ('U'))
	DROP TABLE [dbo].[学科]
GO

CREATE TABLE [dbo].[学科] (
  [学科id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [负责人id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [学科名] varchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [学科类别名称] varchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [学科简介] text COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[学科] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 学科
-- ----------------------------

-- ----------------------------
-- Table structure for 学科负责人
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[学科负责人]') AND type IN ('U'))
	DROP TABLE [dbo].[学科负责人]
GO

CREATE TABLE [dbo].[学科负责人] (
  [负责人id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [教师id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [学科id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [管理员id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [是否为学科负责人] int  NOT NULL
)
GO

ALTER TABLE [dbo].[学科负责人] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 学科负责人
-- ----------------------------

-- ----------------------------
-- Table structure for 学术交流活动表
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[学术交流活动表]') AND type IN ('U'))
	DROP TABLE [dbo].[学术交流活动表]
GO

CREATE TABLE [dbo].[学术交流活动表] (
  [学术交流活动id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [负责人id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [研究生学号] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [管理员id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [导师id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [教师id] varchar(1024) COLLATE Chinese_PRC_CI_AS  NULL,
  [学术交流活动名称] varchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [活动地点] varchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [报告英文名称] varchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [报告中文名称] varchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [国家] varchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [省] varchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [市] varchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [学术交流质量] int  NULL,
  [参会照片] varchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [备注] text COLLATE Chinese_PRC_CI_AS  NULL,
  [审核状态] int  NULL,
  [导师审批时间] datetime  NULL,
  [学科负责人审批时间] datetime  NULL
)
GO

ALTER TABLE [dbo].[学术交流活动表] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 学术交流活动表
-- ----------------------------

-- ----------------------------
-- Table structure for 研究生
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[研究生]') AND type IN ('U'))
	DROP TABLE [dbo].[研究生]
GO

CREATE TABLE [dbo].[研究生] (
  [研究生学号] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [管理员id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [教师id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [研究生姓名] varchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [联系方式] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [出生日期] datetime  NULL,
  [性别] int  NULL,
  [邮箱] varchar(256) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[研究生] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 研究生
-- ----------------------------

-- ----------------------------
-- Table structure for 研究生参与项目
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[研究生参与项目]') AND type IN ('U'))
	DROP TABLE [dbo].[研究生参与项目]
GO

CREATE TABLE [dbo].[研究生参与项目] (
  [研究生学号] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [参与项目id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[研究生参与项目] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 研究生参与项目
-- ----------------------------

-- ----------------------------
-- Table structure for 研究生培养管理员
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[研究生培养管理员]') AND type IN ('U'))
	DROP TABLE [dbo].[研究生培养管理员]
GO

CREATE TABLE [dbo].[研究生培养管理员] (
  [管理员id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [管理员姓名] varchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [职务] varchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [联系方式] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [邮箱] varchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[研究生培养管理员] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 研究生培养管理员
-- ----------------------------

-- ----------------------------
-- Table structure for 研究生助教评定
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[研究生助教评定]') AND type IN ('U'))
	DROP TABLE [dbo].[研究生助教评定]
GO

CREATE TABLE [dbo].[研究生助教评定] (
  [研究生助教评定id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [管理员id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [研究生学号] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [授课教师id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [助教工作自述] text COLLATE Chinese_PRC_CI_AS  NULL,
  [授课教师评价] text COLLATE Chinese_PRC_CI_AS  NULL,
  [授课教师评价结果] int  NOT NULL,
  [审核结果] int  NULL,
  [审核时间] datetime  NULL
)
GO

ALTER TABLE [dbo].[研究生助教评定] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 研究生助教评定
-- ----------------------------

-- ----------------------------
-- Table structure for 用户
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[用户]') AND type IN ('U'))
	DROP TABLE [dbo].[用户]
GO

CREATE TABLE [dbo].[用户] (
  [用户id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [用户角色id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [用户密码] varchar(1024) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [上次登录时间] datetime  NULL,
  [上次登录地点] varchar(1024) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[用户] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 用户
-- ----------------------------

-- ----------------------------
-- Table structure for 用户角色
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[用户角色]') AND type IN ('U'))
	DROP TABLE [dbo].[用户角色]
GO

CREATE TABLE [dbo].[用户角色] (
  [用户角色id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [用户角色名] varchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [对应角色id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[用户角色] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 用户角色
-- ----------------------------

-- ----------------------------
-- Table structure for 志愿选择
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[志愿选择]') AND type IN ('U'))
	DROP TABLE [dbo].[志愿选择]
GO

CREATE TABLE [dbo].[志愿选择] (
  [志愿id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [课程id] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [研究生学号] char(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [志愿选择时间] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[志愿选择] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 志愿选择
-- ----------------------------

-- ----------------------------
-- Table structure for 助教选择
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[助教选择]') AND type IN ('U'))
	DROP TABLE [dbo].[助教选择]
GO

CREATE TABLE [dbo].[助教选择] (
  [课程id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [研究生助教评定id] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[助教选择] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of 助教选择
-- ----------------------------

-- ----------------------------
-- Indexes structure for table 参与项目认定表
-- ----------------------------
CREATE NONCLUSTERED INDEX [导师审核参与项目_FK]
ON [dbo].[参与项目认定表] (
  [导师id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table 参与项目认定表
-- ----------------------------
ALTER TABLE [dbo].[参与项目认定表] ADD CONSTRAINT [PK_参与项目认定表] PRIMARY KEY NONCLUSTERED ([参与项目id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table 导师
-- ----------------------------
CREATE NONCLUSTERED INDEX [建立导师信息_FK]
ON [dbo].[导师] (
  [管理员id] ASC
)
GO

CREATE NONCLUSTERED INDEX [教师和导师_FK]
ON [dbo].[导师] (
  [教师id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table 导师
-- ----------------------------
ALTER TABLE [dbo].[导师] ADD CONSTRAINT [PK_导师] PRIMARY KEY NONCLUSTERED ([导师id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table 教师
-- ----------------------------
ALTER TABLE [dbo].[教师] ADD CONSTRAINT [PK_教师] PRIMARY KEY CLUSTERED ([教师id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table 教师与学科
-- ----------------------------
CREATE NONCLUSTERED INDEX [教师与学科_FK]
ON [dbo].[教师与学科] (
  [学科id] ASC
)
GO

CREATE NONCLUSTERED INDEX [教师与学科2_FK]
ON [dbo].[教师与学科] (
  [教师id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table 教师与学科
-- ----------------------------
ALTER TABLE [dbo].[教师与学科] ADD CONSTRAINT [PK_教师与学科] PRIMARY KEY CLUSTERED ([学科id], [教师id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table 课程
-- ----------------------------
ALTER TABLE [dbo].[课程] ADD CONSTRAINT [PK_课程] PRIMARY KEY NONCLUSTERED ([课程id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table 授课教师
-- ----------------------------
CREATE NONCLUSTERED INDEX [建立授课教师信息_FK]
ON [dbo].[授课教师] (
  [管理员id] ASC
)
GO

CREATE NONCLUSTERED INDEX [教师和授课教师_FK]
ON [dbo].[授课教师] (
  [教师id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table 授课教师
-- ----------------------------
ALTER TABLE [dbo].[授课教师] ADD CONSTRAINT [PK_授课教师] PRIMARY KEY NONCLUSTERED ([授课教师id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table 授课教师教授课程
-- ----------------------------
CREATE NONCLUSTERED INDEX [教授_FK]
ON [dbo].[授课教师教授课程] (
  [授课教师id] ASC
)
GO

CREATE NONCLUSTERED INDEX [教授2_FK]
ON [dbo].[授课教师教授课程] (
  [课程id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table 授课教师教授课程
-- ----------------------------
ALTER TABLE [dbo].[授课教师教授课程] ADD CONSTRAINT [PK_授课教师教授课程] PRIMARY KEY CLUSTERED ([授课教师id], [课程id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table 项目
-- ----------------------------
CREATE NONCLUSTERED INDEX [项目属于类别_FK]
ON [dbo].[项目] (
  [项目类别id] ASC
)
GO

CREATE NONCLUSTERED INDEX [管理员审核参与项目_FK]
ON [dbo].[项目] (
  [管理员id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table 项目
-- ----------------------------
ALTER TABLE [dbo].[项目] ADD CONSTRAINT [PK_项目] PRIMARY KEY NONCLUSTERED ([项目id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table 项目类别
-- ----------------------------
ALTER TABLE [dbo].[项目类别] ADD CONSTRAINT [PK_项目类别] PRIMARY KEY NONCLUSTERED ([项目类别id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table 学科
-- ----------------------------
CREATE NONCLUSTERED INDEX [负责2_FK]
ON [dbo].[学科] (
  [负责人id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table 学科
-- ----------------------------
ALTER TABLE [dbo].[学科] ADD CONSTRAINT [PK_学科] PRIMARY KEY NONCLUSTERED ([学科id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table 学科负责人
-- ----------------------------
CREATE NONCLUSTERED INDEX [负责_FK]
ON [dbo].[学科负责人] (
  [学科id] ASC
)
GO

CREATE NONCLUSTERED INDEX [建立学科负责人信息_FK]
ON [dbo].[学科负责人] (
  [管理员id] ASC
)
GO

CREATE NONCLUSTERED INDEX [教师和学科负责人_FK]
ON [dbo].[学科负责人] (
  [教师id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table 学科负责人
-- ----------------------------
ALTER TABLE [dbo].[学科负责人] ADD CONSTRAINT [PK_学科负责人] PRIMARY KEY NONCLUSTERED ([负责人id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table 学术交流活动表
-- ----------------------------
CREATE NONCLUSTERED INDEX [提交_FK]
ON [dbo].[学术交流活动表] (
  [研究生学号] ASC
)
GO

CREATE NONCLUSTERED INDEX [管理学术交流_FK]
ON [dbo].[学术交流活动表] (
  [管理员id] ASC
)
GO

CREATE NONCLUSTERED INDEX [审核_FK]
ON [dbo].[学术交流活动表] (
  [导师id] ASC
)
GO

CREATE NONCLUSTERED INDEX [学科负责人审核_FK]
ON [dbo].[学术交流活动表] (
  [负责人id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table 学术交流活动表
-- ----------------------------
ALTER TABLE [dbo].[学术交流活动表] ADD CONSTRAINT [PK_学术交流活动表] PRIMARY KEY NONCLUSTERED ([学术交流活动id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table 研究生
-- ----------------------------
CREATE NONCLUSTERED INDEX [生成学生信息_FK]
ON [dbo].[研究生] (
  [管理员id] ASC
)
GO

CREATE NONCLUSTERED INDEX [教师和研究生_FK]
ON [dbo].[研究生] (
  [教师id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table 研究生
-- ----------------------------
ALTER TABLE [dbo].[研究生] ADD CONSTRAINT [PK_研究生] PRIMARY KEY NONCLUSTERED ([研究生学号])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table 研究生参与项目
-- ----------------------------
CREATE NONCLUSTERED INDEX [参与_FK]
ON [dbo].[研究生参与项目] (
  [研究生学号] ASC
)
GO

CREATE NONCLUSTERED INDEX [研究生参与项目2_FK]
ON [dbo].[研究生参与项目] (
  [参与项目id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table 研究生参与项目
-- ----------------------------
ALTER TABLE [dbo].[研究生参与项目] ADD CONSTRAINT [PK_研究生参与项目] PRIMARY KEY CLUSTERED ([研究生学号], [参与项目id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table 研究生培养管理员
-- ----------------------------
ALTER TABLE [dbo].[研究生培养管理员] ADD CONSTRAINT [PK_研究生培养管理员] PRIMARY KEY NONCLUSTERED ([管理员id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table 研究生助教评定
-- ----------------------------
CREATE NONCLUSTERED INDEX [最终结果_FK]
ON [dbo].[研究生助教评定] (
  [研究生学号] ASC
)
GO

CREATE NONCLUSTERED INDEX [管理员审核助教评价_FK]
ON [dbo].[研究生助教评定] (
  [管理员id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table 研究生助教评定
-- ----------------------------
ALTER TABLE [dbo].[研究生助教评定] ADD CONSTRAINT [PK_研究生助教评定] PRIMARY KEY NONCLUSTERED ([研究生助教评定id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table 用户
-- ----------------------------
CREATE NONCLUSTERED INDEX [用户关联_FK]
ON [dbo].[用户] (
  [用户角色id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table 用户
-- ----------------------------
ALTER TABLE [dbo].[用户] ADD CONSTRAINT [PK_用户] PRIMARY KEY NONCLUSTERED ([用户id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table 用户角色
-- ----------------------------
ALTER TABLE [dbo].[用户角色] ADD CONSTRAINT [PK_用户角色] PRIMARY KEY NONCLUSTERED ([用户角色id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table 志愿选择
-- ----------------------------
CREATE NONCLUSTERED INDEX [初选_FK]
ON [dbo].[志愿选择] (
  [研究生学号] ASC
)
GO

CREATE NONCLUSTERED INDEX [选择_FK]
ON [dbo].[志愿选择] (
  [课程id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table 志愿选择
-- ----------------------------
ALTER TABLE [dbo].[志愿选择] ADD CONSTRAINT [PK_志愿选择] PRIMARY KEY NONCLUSTERED ([志愿id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table 助教选择
-- ----------------------------
CREATE NONCLUSTERED INDEX [助教选择_FK]
ON [dbo].[助教选择] (
  [课程id] ASC
)
GO

CREATE NONCLUSTERED INDEX [助教选择2_FK]
ON [dbo].[助教选择] (
  [研究生助教评定id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table 助教选择
-- ----------------------------
ALTER TABLE [dbo].[助教选择] ADD CONSTRAINT [PK_助教选择] PRIMARY KEY CLUSTERED ([课程id], [研究生助教评定id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table 参与项目认定表
-- ----------------------------
ALTER TABLE [dbo].[参与项目认定表] ADD CONSTRAINT [FK_参与项目认定表_导师审核参与项目_导师] FOREIGN KEY ([导师id]) REFERENCES [dbo].[导师] ([导师id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[参与项目认定表] ADD CONSTRAINT [FK_参与项目认定表_项目参与情况_项目] FOREIGN KEY ([项目id]) REFERENCES [dbo].[项目] ([项目id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table 导师
-- ----------------------------
ALTER TABLE [dbo].[导师] ADD CONSTRAINT [FK_导师_建立导师信息_研究生培养管理员] FOREIGN KEY ([管理员id]) REFERENCES [dbo].[研究生培养管理员] ([管理员id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[导师] ADD CONSTRAINT [FK_导师_教师和导师_教师] FOREIGN KEY ([教师id]) REFERENCES [dbo].[教师] ([教师id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table 教师与学科
-- ----------------------------
ALTER TABLE [dbo].[教师与学科] ADD CONSTRAINT [FK_教师与学科_教师与学科_学科] FOREIGN KEY ([学科id]) REFERENCES [dbo].[学科] ([学科id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[教师与学科] ADD CONSTRAINT [FK_教师与学科_教师与学科2_教师] FOREIGN KEY ([教师id]) REFERENCES [dbo].[教师] ([教师id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table 授课教师
-- ----------------------------
ALTER TABLE [dbo].[授课教师] ADD CONSTRAINT [FK_授课教师_建立授课教师信息_研究生培养管理员] FOREIGN KEY ([管理员id]) REFERENCES [dbo].[研究生培养管理员] ([管理员id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[授课教师] ADD CONSTRAINT [FK_授课教师_教师和授课教师_教师] FOREIGN KEY ([教师id]) REFERENCES [dbo].[教师] ([教师id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table 授课教师教授课程
-- ----------------------------
ALTER TABLE [dbo].[授课教师教授课程] ADD CONSTRAINT [FK_授课教师教授课程_授课教师教授课程_授课教师] FOREIGN KEY ([授课教师id]) REFERENCES [dbo].[授课教师] ([授课教师id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[授课教师教授课程] ADD CONSTRAINT [FK_授课教师教授课程_授课教师教授课程2_课程] FOREIGN KEY ([课程id]) REFERENCES [dbo].[课程] ([课程id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table 项目
-- ----------------------------
ALTER TABLE [dbo].[项目] ADD CONSTRAINT [FK_项目_管理员审核参与项目_研究生培养管理员] FOREIGN KEY ([管理员id]) REFERENCES [dbo].[研究生培养管理员] ([管理员id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[项目] ADD CONSTRAINT [FK_项目_认定项目及经费_导师] FOREIGN KEY ([导师id]) REFERENCES [dbo].[导师] ([导师id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[项目] ADD CONSTRAINT [FK_项目_项目属于类别_项目类别] FOREIGN KEY ([项目类别id]) REFERENCES [dbo].[项目类别] ([项目类别id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table 学科
-- ----------------------------
ALTER TABLE [dbo].[学科] ADD CONSTRAINT [FK_学科_负责2_学科负责人] FOREIGN KEY ([负责人id]) REFERENCES [dbo].[学科负责人] ([负责人id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table 学科负责人
-- ----------------------------
ALTER TABLE [dbo].[学科负责人] ADD CONSTRAINT [FK_学科负责人_建立学科负责人信息_研究生培养管理员] FOREIGN KEY ([管理员id]) REFERENCES [dbo].[研究生培养管理员] ([管理员id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[学科负责人] ADD CONSTRAINT [FK_学科负责人_教师和学科负责人_教师] FOREIGN KEY ([教师id]) REFERENCES [dbo].[教师] ([教师id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[学科负责人] ADD CONSTRAINT [FK_学科负责人_负责_学科] FOREIGN KEY ([学科id]) REFERENCES [dbo].[学科] ([学科id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table 学术交流活动表
-- ----------------------------
ALTER TABLE [dbo].[学术交流活动表] ADD CONSTRAINT [FK_学术交流活动表_学科负责人审核_学科负责人] FOREIGN KEY ([负责人id]) REFERENCES [dbo].[学科负责人] ([负责人id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[学术交流活动表] ADD CONSTRAINT [FK_学术交流活动表_导师审核学术交流活_导师] FOREIGN KEY ([导师id]) REFERENCES [dbo].[导师] ([导师id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[学术交流活动表] ADD CONSTRAINT [FK_学术交流活动表_研究生提交学术交流_研究生] FOREIGN KEY ([研究生学号]) REFERENCES [dbo].[研究生] ([研究生学号]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[学术交流活动表] ADD CONSTRAINT [FK_学术交流活动表_管理学术交流_研究生培养管理员] FOREIGN KEY ([管理员id]) REFERENCES [dbo].[研究生培养管理员] ([管理员id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table 研究生
-- ----------------------------
ALTER TABLE [dbo].[研究生] ADD CONSTRAINT [FK_研究生_指导_教师] FOREIGN KEY ([教师id]) REFERENCES [dbo].[教师] ([教师id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[研究生] ADD CONSTRAINT [FK_研究生_生成学生信息_研究生培养管理员] FOREIGN KEY ([管理员id]) REFERENCES [dbo].[研究生培养管理员] ([管理员id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table 研究生参与项目
-- ----------------------------
ALTER TABLE [dbo].[研究生参与项目] ADD CONSTRAINT [FK_研究生参与项目_研究生参与项目_研究生] FOREIGN KEY ([研究生学号]) REFERENCES [dbo].[研究生] ([研究生学号]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[研究生参与项目] ADD CONSTRAINT [FK_研究生参与项目_研究生参与项目2_参与项目认定表] FOREIGN KEY ([参与项目id]) REFERENCES [dbo].[参与项目认定表] ([参与项目id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table 研究生助教评定
-- ----------------------------
ALTER TABLE [dbo].[研究生助教评定] ADD CONSTRAINT [FK_研究生助教评定_授课教师录入助教评_授课教师] FOREIGN KEY ([授课教师id]) REFERENCES [dbo].[授课教师] ([授课教师id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[研究生助教评定] ADD CONSTRAINT [FK_研究生助教评定_最终结果_研究生] FOREIGN KEY ([研究生学号]) REFERENCES [dbo].[研究生] ([研究生学号]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[研究生助教评定] ADD CONSTRAINT [FK_研究生助教评定_管理员审核助教评价_研究生培养管理员] FOREIGN KEY ([管理员id]) REFERENCES [dbo].[研究生培养管理员] ([管理员id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table 用户
-- ----------------------------
ALTER TABLE [dbo].[用户] ADD CONSTRAINT [FK_用户_用户关联_用户角色] FOREIGN KEY ([用户角色id]) REFERENCES [dbo].[用户角色] ([用户角色id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table 志愿选择
-- ----------------------------
ALTER TABLE [dbo].[志愿选择] ADD CONSTRAINT [FK_志愿选择_初选_研究生] FOREIGN KEY ([研究生学号]) REFERENCES [dbo].[研究生] ([研究生学号]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[志愿选择] ADD CONSTRAINT [FK_志愿选择_选择_课程] FOREIGN KEY ([课程id]) REFERENCES [dbo].[课程] ([课程id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table 助教选择
-- ----------------------------
ALTER TABLE [dbo].[助教选择] ADD CONSTRAINT [FK_助教选择_助教选择_课程] FOREIGN KEY ([课程id]) REFERENCES [dbo].[课程] ([课程id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[助教选择] ADD CONSTRAINT [FK_助教选择_助教选择2_研究生助教评定] FOREIGN KEY ([研究生助教评定id]) REFERENCES [dbo].[研究生助教评定] ([研究生助教评定id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

