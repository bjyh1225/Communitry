SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_ZNSB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_ZNSB](
	[id] [varchar](50) NOT NULL,
	[imei] [varchar](50) NULL,
	[heartRate] [varchar](20) NULL,
	[dbp] [varchar](20) NULL,
	[sdp] [varchar](20) NULL,
	[oxygen] [varchar](20) NULL,
	[bloodSugar] [varchar](20) NULL,
	[temperature] [varchar](20) NULL,
	[lat] [varchar](50) NULL,
	[lon] [varchar](50) NULL,
	[type] [varchar](20) NULL,
	[createDate] [varchar](30) NULL,
	[warningType] [varchar](10) NULL,
	[battery] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[longitude] [varchar](50) NULL,
	[latitude ] [varchar](50) NULL,
	[pedometer] [varchar](50) NULL,
	[jtmBattery ] [varchar](50) NULL,
	[audio ] [nvarchar](max) NULL,
	[blueTooth ] [varchar](50) NULL,
	[oriSeq] [varchar](50) NULL,
	[content] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNSB', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNSB', @level2type=N'COLUMN',@level2name=N'id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNSB', N'COLUMN',N'imei'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'串口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNSB', @level2type=N'COLUMN',@level2name=N'imei'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNSB', N'COLUMN',N'heartRate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'心率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNSB', @level2type=N'COLUMN',@level2name=N'heartRate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNSB', N'COLUMN',N'dbp'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'低压' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNSB', @level2type=N'COLUMN',@level2name=N'dbp'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNSB', N'COLUMN',N'sdp'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高压' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNSB', @level2type=N'COLUMN',@level2name=N'sdp'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNSB', N'COLUMN',N'oxygen'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'血氧' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNSB', @level2type=N'COLUMN',@level2name=N'oxygen'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNSB', N'COLUMN',N'bloodSugar'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'血糖' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNSB', @level2type=N'COLUMN',@level2name=N'bloodSugar'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNSB', N'COLUMN',N'temperature'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'温度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNSB', @level2type=N'COLUMN',@level2name=N'temperature'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNSB', N'COLUMN',N'lat'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNSB', @level2type=N'COLUMN',@level2name=N'lat'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNSB', N'COLUMN',N'lon'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNSB', @level2type=N'COLUMN',@level2name=N'lon'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNSB', N'COLUMN',N'type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型，判断是定位还是血氧心率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNSB', @level2type=N'COLUMN',@level2name=N'type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNSB', N'COLUMN',N'createDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNSB', @level2type=N'COLUMN',@level2name=N'createDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNSB', N'COLUMN',N'warningType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'“1” sos 预警  “2” 跌倒预警 “3” 脱手预警 “4” 久坐预警 “5” 低电预警 “6” 家庭医生 “7” 房颤预警 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNSB', @level2type=N'COLUMN',@level2name=N'warningType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNSB', N'COLUMN',N'battery'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNSB', @level2type=N'COLUMN',@level2name=N'battery'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNSB', N'COLUMN',N'address'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'sos预警地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNSB', @level2type=N'COLUMN',@level2name=N'address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNSB', N'COLUMN',N'pedometer'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计步数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNSB', @level2type=N'COLUMN',@level2name=N'pedometer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNSB', N'COLUMN',N'jtmBattery '))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'温度计电' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNSB', @level2type=N'COLUMN',@level2name=N'jtmBattery '
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNSB', N'COLUMN',N'content'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预警内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNSB', @level2type=N'COLUMN',@level2name=N'content'
GO
/****** Object:  Table [dbo].[ZHSQ_ZNLD]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_ZNLD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_ZNLD](
	[LDID] [nvarchar](255) NULL,
	[SBLX] [nvarchar](15) NULL,
	[SBMC] [nvarchar](20) NULL,
	[PPMC] [nvarchar](20) NULL,
	[SBXH] [nvarchar](15) NULL,
	[SBZT] [nvarchar](10) NULL,
	[X] [nvarchar](20) NULL,
	[Y] [nvarchar](20) NULL,
	[Z] [nvarchar](20) NULL,
	[WZ] [nvarchar](50) NULL,
	[XQID] [nvarchar](255) NULL,
	[SQID] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNLD', N'COLUMN',N'LDID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'路灯ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNLD', @level2type=N'COLUMN',@level2name=N'LDID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNLD', N'COLUMN',N'SBLX'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNLD', @level2type=N'COLUMN',@level2name=N'SBLX'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNLD', N'COLUMN',N'SBMC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNLD', @level2type=N'COLUMN',@level2name=N'SBMC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNLD', N'COLUMN',N'PPMC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品牌名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNLD', @level2type=N'COLUMN',@level2name=N'PPMC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNLD', N'COLUMN',N'SBXH'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备型号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNLD', @level2type=N'COLUMN',@level2name=N'SBXH'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNLD', N'COLUMN',N'SBZT'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNLD', @level2type=N'COLUMN',@level2name=N'SBZT'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNLD', N'COLUMN',N'X'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNLD', @level2type=N'COLUMN',@level2name=N'X'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNLD', N'COLUMN',N'Y'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNLD', @level2type=N'COLUMN',@level2name=N'Y'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNLD', N'COLUMN',N'Z'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNLD', @level2type=N'COLUMN',@level2name=N'Z'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNLD', N'COLUMN',N'WZ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNLD', @level2type=N'COLUMN',@level2name=N'WZ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNLD', N'COLUMN',N'XQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小区ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNLD', @level2type=N'COLUMN',@level2name=N'XQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZNLD', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'智能路灯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZNLD'
GO
/****** Object:  Table [dbo].[ZHSQ_ZJJC]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_ZJJC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_ZJJC](
	[JCID] [nvarchar](255) NULL,
	[XM] [nvarchar](255) NULL,
	[JMID] [nvarchar](255) NULL,
	[XB] [nvarchar](255) NULL,
	[RYLX] [nvarchar](255) NULL,
	[JCZT] [nvarchar](255) NULL,
	[JCSJ] [nvarchar](255) NULL,
	[ZPTX] [nvarchar](255) NULL,
	[ZPSP] [nvarchar](255) NULL,
	[ZJID] [nvarchar](255) NULL,
	[XQID] [nvarchar](255) NULL,
	[SQID] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZHSQ_ZJ]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_ZJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_ZJ](
	[ZJID] [nvarchar](255) NULL,
	[SBLX] [nvarchar](255) NULL,
	[SBMC] [nvarchar](255) NULL,
	[PPMC] [nvarchar](255) NULL,
	[SBXH] [nvarchar](255) NULL,
	[SBZT] [nvarchar](255) NULL,
	[X] [nvarchar](255) NULL,
	[Y] [nvarchar](255) NULL,
	[Z] [nvarchar](255) NULL,
	[WZ] [nvarchar](255) NULL,
	[XQID] [nvarchar](255) NULL,
	[SQID] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZJ', N'COLUMN',N'SBLX'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZJ', @level2type=N'COLUMN',@level2name=N'SBLX'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZJ', N'COLUMN',N'SBMC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZJ', @level2type=N'COLUMN',@level2name=N'SBMC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZJ', N'COLUMN',N'PPMC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品牌名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZJ', @level2type=N'COLUMN',@level2name=N'PPMC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZJ', N'COLUMN',N'SBXH'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备型号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZJ', @level2type=N'COLUMN',@level2name=N'SBXH'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZJ', N'COLUMN',N'SBZT'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZJ', @level2type=N'COLUMN',@level2name=N'SBZT'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZJ', N'COLUMN',N'X'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZJ', @level2type=N'COLUMN',@level2name=N'X'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZJ', N'COLUMN',N'Y'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZJ', @level2type=N'COLUMN',@level2name=N'Y'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZJ', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'闸机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZJ'
GO
/****** Object:  Table [dbo].[ZHSQ_ZC]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_ZC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_ZC](
	[ZCID] [nvarchar](255) NOT NULL,
	[SBLX] [nvarchar](255) NULL,
	[SBMC] [nvarchar](255) NULL,
	[PPMC] [nvarchar](255) NULL,
	[SBXH] [nvarchar](255) NULL,
	[SBZT] [nvarchar](255) NULL,
	[X] [nvarchar](255) NULL,
	[Y] [nvarchar](255) NULL,
	[Z] [nvarchar](255) NULL,
	[WZ] [nvarchar](255) NULL,
	[XQID] [nvarchar](255) NULL,
	[SQID] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ZCID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZC', N'COLUMN',N'SBLX'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZC', @level2type=N'COLUMN',@level2name=N'SBLX'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZC', N'COLUMN',N'SBMC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZC', @level2type=N'COLUMN',@level2name=N'SBMC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZC', N'COLUMN',N'PPMC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品牌名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZC', @level2type=N'COLUMN',@level2name=N'PPMC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZC', N'COLUMN',N'SBXH'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备型号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZC', @level2type=N'COLUMN',@level2name=N'SBXH'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZC', N'COLUMN',N'SBZT'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZC', @level2type=N'COLUMN',@level2name=N'SBZT'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZC', N'COLUMN',N'X'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZC', @level2type=N'COLUMN',@level2name=N'X'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZC', N'COLUMN',N'Y'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZC', @level2type=N'COLUMN',@level2name=N'Y'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZC', N'COLUMN',N'Z'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZC', @level2type=N'COLUMN',@level2name=N'Z'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZC', N'COLUMN',N'WZ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZC', @level2type=N'COLUMN',@level2name=N'WZ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZC', N'COLUMN',N'XQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZC', @level2type=N'COLUMN',@level2name=N'XQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_ZC', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'社区资产' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_ZC'
GO
/****** Object:  Table [dbo].[ZHSQ_YGJC]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_YGJC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_YGJC](
	[JCID] [nvarchar](255) NULL,
	[YGID] [nvarchar](255) NULL,
	[BJZT] [nvarchar](255) NULL,
	[DCDY] [nvarchar](255) NULL,
	[WD] [nvarchar](255) NULL,
	[JCSJ] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZHSQ_YG]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_YG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_YG](
	[YGID] [nvarchar](255) NULL,
	[SBLX] [nvarchar](255) NULL,
	[SBMC] [nvarchar](255) NULL,
	[PPMC] [nvarchar](255) NULL,
	[SBXH] [nvarchar](255) NULL,
	[SBZT] [nvarchar](255) NULL,
	[X] [nvarchar](255) NULL,
	[Y] [nvarchar](255) NULL,
	[Z] [nvarchar](255) NULL,
	[WZ] [nvarchar](255) NULL,
	[LDID] [nvarchar](255) NULL,
	[XQID] [nvarchar](255) NULL,
	[SQID] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YG', N'COLUMN',N'SBLX'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YG', @level2type=N'COLUMN',@level2name=N'SBLX'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YG', N'COLUMN',N'SBMC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YG', @level2type=N'COLUMN',@level2name=N'SBMC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YG', N'COLUMN',N'PPMC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品牌名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YG', @level2type=N'COLUMN',@level2name=N'PPMC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YG', N'COLUMN',N'SBXH'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备型号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YG', @level2type=N'COLUMN',@level2name=N'SBXH'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YG', N'COLUMN',N'SBZT'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YG', @level2type=N'COLUMN',@level2name=N'SBZT'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YG', N'COLUMN',N'X'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YG', @level2type=N'COLUMN',@level2name=N'X'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YG', N'COLUMN',N'Y'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YG', @level2type=N'COLUMN',@level2name=N'Y'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YG', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'烟感' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YG'
GO
/****** Object:  Table [dbo].[ZHSQ_YC]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_YC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_YC](
	[YCID] [nvarchar](255) NULL,
	[YCJB] [nvarchar](20) NULL,
	[YCNR] [nvarchar](1500) NULL,
	[YCLY] [nvarchar](100) NULL,
	[YCSJ] [nvarchar](100) NULL,
	[CZZT] [nvarchar](20) NULL,
	[CZRY] [nvarchar](50) NULL,
	[CZJG] [nvarchar](100) NULL,
	[FJ] [nvarchar](255) NULL,
	[X] [nvarchar](50) NULL,
	[Y] [nvarchar](50) NULL,
	[Z] [nvarchar](50) NULL,
	[XQID] [nvarchar](255) NULL,
	[SBID] [nvarchar](255) NULL,
	[SQID] [nvarchar](254) NULL,
	[SJLX] [nvarchar](50) NULL,
	[CZSJ] [nvarchar](100) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YC', N'COLUMN',N'YCID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异常ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YC', @level2type=N'COLUMN',@level2name=N'YCID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YC', N'COLUMN',N'YCJB'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异常级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YC', @level2type=N'COLUMN',@level2name=N'YCJB'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YC', N'COLUMN',N'YCNR'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异常内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YC', @level2type=N'COLUMN',@level2name=N'YCNR'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YC', N'COLUMN',N'YCLY'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异常来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YC', @level2type=N'COLUMN',@level2name=N'YCLY'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YC', N'COLUMN',N'YCSJ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异常时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YC', @level2type=N'COLUMN',@level2name=N'YCSJ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YC', N'COLUMN',N'CZZT'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处置状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YC', @level2type=N'COLUMN',@level2name=N'CZZT'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YC', N'COLUMN',N'CZRY'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处置人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YC', @level2type=N'COLUMN',@level2name=N'CZRY'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YC', N'COLUMN',N'CZJG'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处置结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YC', @level2type=N'COLUMN',@level2name=N'CZJG'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YC', N'COLUMN',N'FJ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YC', @level2type=N'COLUMN',@level2name=N'FJ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YC', N'COLUMN',N'X'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YC', @level2type=N'COLUMN',@level2name=N'X'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YC', N'COLUMN',N'Y'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YC', @level2type=N'COLUMN',@level2name=N'Y'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YC', N'COLUMN',N'Z'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YC', @level2type=N'COLUMN',@level2name=N'Z'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YC', N'COLUMN',N'SJLX'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'事件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YC', @level2type=N'COLUMN',@level2name=N'SJLX'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_YC', N'COLUMN',N'CZSJ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处置时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_YC', @level2type=N'COLUMN',@level2name=N'CZSJ'
GO
/****** Object:  Table [dbo].[ZHSQ_XQ]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_XQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_XQ](
	[XQID] [nvarchar](255) NULL,
	[XQMC] [nvarchar](50) NULL,
	[JJ] [nvarchar](max) NULL,
	[X] [nvarchar](50) NULL,
	[Y] [nvarchar](50) NULL,
	[Z] [nvarchar](50) NULL,
	[SQID] [nvarchar](255) NULL,
	[SSJD] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_XQ', N'COLUMN',N'XQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小区ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_XQ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_XQ', N'COLUMN',N'XQMC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小区名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_XQ', @level2type=N'COLUMN',@level2name=N'XQMC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_XQ', N'COLUMN',N'JJ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小区介绍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_XQ', @level2type=N'COLUMN',@level2name=N'JJ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_XQ', N'COLUMN',N'X'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_XQ', @level2type=N'COLUMN',@level2name=N'X'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_XQ', N'COLUMN',N'Y'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_XQ', @level2type=N'COLUMN',@level2name=N'Y'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_XQ', N'COLUMN',N'Z'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_XQ', @level2type=N'COLUMN',@level2name=N'Z'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_XQ', N'COLUMN',N'SQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属社区ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_XQ', @level2type=N'COLUMN',@level2name=N'SQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_XQ', N'COLUMN',N'SSJD'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属街道' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_XQ', @level2type=N'COLUMN',@level2name=N'SSJD'
GO
/****** Object:  Table [dbo].[ZHSQ_XFSJC]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_XFSJC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_XFSJC](
	[JCID] [nvarchar](255) NULL,
	[XFSID] [nvarchar](255) NULL,
	[SW] [nvarchar](255) NULL,
	[SY] [nvarchar](255) NULL,
	[JCSJ] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZHSQ_XFS]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_XFS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_XFS](
	[XFSID] [nvarchar](255) NULL,
	[SBLX] [nvarchar](255) NULL,
	[SBMC] [nvarchar](255) NULL,
	[PPMC] [nvarchar](255) NULL,
	[SBXH] [nvarchar](255) NULL,
	[SBZT] [nvarchar](255) NULL,
	[X] [nvarchar](255) NULL,
	[Y] [nvarchar](255) NULL,
	[Z] [nvarchar](255) NULL,
	[WZ] [nvarchar](255) NULL,
	[XQID] [nvarchar](255) NULL,
	[SQID] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_XFS', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消防栓' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_XFS'
GO
/****** Object:  Table [dbo].[ZHSQ_WYXCGJ]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_WYXCGJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_WYXCGJ](
	[GJID] [nvarchar](255) NULL,
	[X] [nvarchar](50) NULL,
	[Y] [nvarchar](50) NULL,
	[Z] [nvarchar](50) NULL,
	[SJ] [nvarchar](50) NULL,
	[WYRYID] [nvarchar](255) NULL,
	[WYXCID] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYXCGJ', N'COLUMN',N'GJID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'轨迹ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYXCGJ', @level2type=N'COLUMN',@level2name=N'GJID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYXCGJ', N'COLUMN',N'X'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYXCGJ', @level2type=N'COLUMN',@level2name=N'X'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYXCGJ', N'COLUMN',N'Y'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYXCGJ', @level2type=N'COLUMN',@level2name=N'Y'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYXCGJ', N'COLUMN',N'Z'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYXCGJ', @level2type=N'COLUMN',@level2name=N'Z'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYXCGJ', N'COLUMN',N'SJ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYXCGJ', @level2type=N'COLUMN',@level2name=N'SJ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYXCGJ', N'COLUMN',N'WYRYID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYXCGJ', @level2type=N'COLUMN',@level2name=N'WYRYID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYXCGJ', N'COLUMN',N'WYXCID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'巡检任务ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYXCGJ', @level2type=N'COLUMN',@level2name=N'WYXCID'
GO
/****** Object:  Table [dbo].[ZHSQ_WYXC]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_WYXC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_WYXC](
	[WYXCID] [nvarchar](32) NULL,
	[XM] [nvarchar](32) NULL,
	[RWMC] [nvarchar](50) NULL,
	[SJ] [nvarchar](32) NULL,
	[XCZT] [nvarchar](32) NULL,
	[WYRYID] [nvarchar](32) NULL,
	[XCJL] [nvarchar](255) NULL,
	[SFYC] [nvarchar](32) NULL,
	[XCFJ] [nvarchar](255) NULL,
	[XQID] [nvarchar](32) NULL,
	[SQID] [nvarchar](32) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYXC', N'COLUMN',N'WYXCID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'巡查id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYXC', @level2type=N'COLUMN',@level2name=N'WYXCID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYXC', N'COLUMN',N'XM'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYXC', @level2type=N'COLUMN',@level2name=N'XM'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYXC', N'COLUMN',N'RWMC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'巡查任务名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYXC', @level2type=N'COLUMN',@level2name=N'RWMC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYXC', N'COLUMN',N'SJ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYXC', @level2type=N'COLUMN',@level2name=N'SJ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYXC', N'COLUMN',N'XCZT'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'巡查状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYXC', @level2type=N'COLUMN',@level2name=N'XCZT'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYXC', N'COLUMN',N'WYRYID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物业人员id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYXC', @level2type=N'COLUMN',@level2name=N'WYRYID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYXC', N'COLUMN',N'XCJL'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'巡查记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYXC', @level2type=N'COLUMN',@level2name=N'XCJL'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYXC', N'COLUMN',N'SFYC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否异常' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYXC', @level2type=N'COLUMN',@level2name=N'SFYC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYXC', N'COLUMN',N'XCFJ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'巡查附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYXC', @level2type=N'COLUMN',@level2name=N'XCFJ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYXC', N'COLUMN',N'XQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYXC', @level2type=N'COLUMN',@level2name=N'XQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYXC', N'COLUMN',N'SQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'社区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYXC', @level2type=N'COLUMN',@level2name=N'SQID'
GO
/****** Object:  Table [dbo].[ZHSQ_WYRY]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_WYRY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_WYRY](
	[WYRYID] [nvarchar](255) NULL,
	[XM] [nvarchar](20) NULL,
	[XB] [nvarchar](5) NULL,
	[NL] [nvarchar](10) NULL,
	[ZZ] [nvarchar](50) NULL,
	[LXDH] [nvarchar](20) NULL,
	[WYGSID] [nvarchar](255) NULL,
	[XQMC] [nvarchar](30) NULL,
	[XQID] [nvarchar](32) NULL,
	[SQID] [nvarchar](32) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYRY', N'COLUMN',N'WYRYID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物业人员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYRY', @level2type=N'COLUMN',@level2name=N'WYRYID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYRY', N'COLUMN',N'XM'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYRY', @level2type=N'COLUMN',@level2name=N'XM'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYRY', N'COLUMN',N'XB'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYRY', @level2type=N'COLUMN',@level2name=N'XB'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYRY', N'COLUMN',N'NL'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年龄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYRY', @level2type=N'COLUMN',@level2name=N'NL'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYRY', N'COLUMN',N'ZZ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYRY', @level2type=N'COLUMN',@level2name=N'ZZ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYRY', N'COLUMN',N'LXDH'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYRY', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYRY', N'COLUMN',N'WYGSID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物业公司ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYRY', @level2type=N'COLUMN',@level2name=N'WYGSID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYRY', N'COLUMN',N'XQMC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小区名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYRY', @level2type=N'COLUMN',@level2name=N'XQMC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYRY', N'COLUMN',N'XQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小区ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYRY', @level2type=N'COLUMN',@level2name=N'XQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYRY', N'COLUMN',N'SQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'社区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYRY', @level2type=N'COLUMN',@level2name=N'SQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYRY', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物业人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYRY'
GO
/****** Object:  Table [dbo].[ZHSQ_WYGS]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_WYGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_WYGS](
	[WYGSID] [nvarchar](255) NULL,
	[WYGSMC] [nvarchar](50) NULL,
	[LXR] [nvarchar](20) NULL,
	[LXDH] [nvarchar](20) NULL,
	[X] [nvarchar](50) NULL,
	[Y] [nvarchar](50) NULL,
	[Z] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYGS', N'COLUMN',N'WYGSID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物业公司ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYGS', @level2type=N'COLUMN',@level2name=N'WYGSID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYGS', N'COLUMN',N'WYGSMC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物业公司名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYGS', @level2type=N'COLUMN',@level2name=N'WYGSMC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYGS', N'COLUMN',N'LXR'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYGS', @level2type=N'COLUMN',@level2name=N'LXR'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYGS', N'COLUMN',N'LXDH'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYGS', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYGS', N'COLUMN',N'X'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYGS', @level2type=N'COLUMN',@level2name=N'X'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYGS', N'COLUMN',N'Y'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYGS', @level2type=N'COLUMN',@level2name=N'Y'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYGS', N'COLUMN',N'Z'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYGS', @level2type=N'COLUMN',@level2name=N'Z'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_WYGS', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物业公司' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_WYGS'
GO
/****** Object:  Table [dbo].[ZHSQ_TSJY]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_TSJY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_TSJY](
	[TSJYID] [nvarchar](255) NULL,
	[XM] [nvarchar](20) NULL,
	[JYNR] [nvarchar](max) NULL,
	[JYSJ] [nvarchar](50) NULL,
	[FJ] [nvarchar](255) NULL,
	[HFNR] [nvarchar](max) NULL,
	[HFSJ] [nvarchar](50) NULL,
	[HFR] [nvarchar](20) NULL,
	[XQID] [varchar](255) NULL,
	[SQID] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TSJY', N'COLUMN',N'TSJYID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建议ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TSJY', @level2type=N'COLUMN',@level2name=N'TSJYID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TSJY', N'COLUMN',N'XM'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TSJY', @level2type=N'COLUMN',@level2name=N'XM'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TSJY', N'COLUMN',N'JYNR'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建议内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TSJY', @level2type=N'COLUMN',@level2name=N'JYNR'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TSJY', N'COLUMN',N'JYSJ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建议时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TSJY', @level2type=N'COLUMN',@level2name=N'JYSJ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TSJY', N'COLUMN',N'FJ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TSJY', @level2type=N'COLUMN',@level2name=N'FJ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TSJY', N'COLUMN',N'HFNR'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TSJY', @level2type=N'COLUMN',@level2name=N'HFNR'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TSJY', N'COLUMN',N'HFSJ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TSJY', @level2type=N'COLUMN',@level2name=N'HFSJ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TSJY', N'COLUMN',N'HFR'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TSJY', @level2type=N'COLUMN',@level2name=N'HFR'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TSJY', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投诉建议' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TSJY'
GO
/****** Object:  Table [dbo].[ZHSQ_TCC]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_TCC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_TCC](
	[TCCID] [nvarchar](32) NOT NULL,
	[TCCLX] [nvarchar](32) NULL,
	[MC] [nvarchar](100) NULL,
	[WZ] [nvarchar](100) NULL,
	[X] [nvarchar](32) NULL,
	[Y] [nvarchar](32) NULL,
	[Z] [nvarchar](32) NULL,
	[CWS] [nvarchar](32) NULL,
	[XQID] [nvarchar](32) NULL,
	[SQID] [nvarchar](32) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TCC', N'COLUMN',N'TCCID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'停车场id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TCC', @level2type=N'COLUMN',@level2name=N'TCCID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TCC', N'COLUMN',N'TCCLX'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'停车场类型(地上,地下)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TCC', @level2type=N'COLUMN',@level2name=N'TCCLX'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TCC', N'COLUMN',N'MC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'停车场名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TCC', @level2type=N'COLUMN',@level2name=N'MC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TCC', N'COLUMN',N'WZ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'停车场位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TCC', @level2type=N'COLUMN',@level2name=N'WZ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TCC', N'COLUMN',N'X'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TCC', @level2type=N'COLUMN',@level2name=N'X'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TCC', N'COLUMN',N'Y'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TCC', @level2type=N'COLUMN',@level2name=N'Y'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TCC', N'COLUMN',N'Z'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TCC', @level2type=N'COLUMN',@level2name=N'Z'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TCC', N'COLUMN',N'CWS'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车位数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TCC', @level2type=N'COLUMN',@level2name=N'CWS'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TCC', N'COLUMN',N'XQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TCC', @level2type=N'COLUMN',@level2name=N'XQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TCC', N'COLUMN',N'SQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'社区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TCC', @level2type=N'COLUMN',@level2name=N'SQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_TCC', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'停车场' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_TCC'
GO
/****** Object:  Table [dbo].[ZHSQ_SXTJC]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_SXTJC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_SXTJC](
	[JCID] [nvarchar](255) NULL,
	[SXTID] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[SFYC] [nvarchar](255) NULL,
	[JCSJ] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZHSQ_SXT]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_SXT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_SXT](
	[SXTID] [nvarchar](255) NULL,
	[SBLX] [nvarchar](10) NULL,
	[SBMC] [nvarchar](20) NULL,
	[PPMC] [nvarchar](20) NULL,
	[SBXH] [nvarchar](20) NULL,
	[SBZT] [nvarchar](10) NULL,
	[X] [nvarchar](20) NULL,
	[Y] [nvarchar](20) NULL,
	[Z] [nvarchar](20) NULL,
	[WZ] [nvarchar](50) NULL,
	[XQID] [nvarchar](255) NULL,
	[WZLX] [varchar](50) NULL,
	[SQID] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SXT', N'COLUMN',N'SXTID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'摄像头ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SXT', @level2type=N'COLUMN',@level2name=N'SXTID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SXT', N'COLUMN',N'SBLX'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SXT', @level2type=N'COLUMN',@level2name=N'SBLX'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SXT', N'COLUMN',N'SBMC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SXT', @level2type=N'COLUMN',@level2name=N'SBMC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SXT', N'COLUMN',N'PPMC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品牌名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SXT', @level2type=N'COLUMN',@level2name=N'PPMC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SXT', N'COLUMN',N'SBXH'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备型号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SXT', @level2type=N'COLUMN',@level2name=N'SBXH'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SXT', N'COLUMN',N'SBZT'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SXT', @level2type=N'COLUMN',@level2name=N'SBZT'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SXT', N'COLUMN',N'X'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SXT', @level2type=N'COLUMN',@level2name=N'X'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SXT', N'COLUMN',N'Y'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SXT', @level2type=N'COLUMN',@level2name=N'Y'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SXT', N'COLUMN',N'Z'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SXT', @level2type=N'COLUMN',@level2name=N'Z'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SXT', N'COLUMN',N'WZ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SXT', @level2type=N'COLUMN',@level2name=N'WZ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SXT', N'COLUMN',N'XQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小区ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SXT', @level2type=N'COLUMN',@level2name=N'XQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SXT', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'摄像头' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SXT'
GO
/****** Object:  Table [dbo].[ZHSQ_SQ]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_SQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_SQ](
	[SQID] [nvarchar](255) NULL,
	[SQMC] [nvarchar](50) NULL,
	[JJ] [nvarchar](max) NULL,
	[X] [nvarchar](50) NULL,
	[Y] [nvarchar](50) NULL,
	[Z] [nvarchar](50) NULL,
	[SSJD] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SQ', N'COLUMN',N'SQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'社区ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SQ', @level2type=N'COLUMN',@level2name=N'SQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SQ', N'COLUMN',N'SQMC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'社区名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SQ', @level2type=N'COLUMN',@level2name=N'SQMC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SQ', N'COLUMN',N'JJ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'社区介绍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SQ', @level2type=N'COLUMN',@level2name=N'JJ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SQ', N'COLUMN',N'X'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SQ', @level2type=N'COLUMN',@level2name=N'X'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SQ', N'COLUMN',N'Y'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SQ', @level2type=N'COLUMN',@level2name=N'Y'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SQ', N'COLUMN',N'Z'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SQ', @level2type=N'COLUMN',@level2name=N'Z'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SQ', N'COLUMN',N'SSJD'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属街道' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SQ', @level2type=N'COLUMN',@level2name=N'SSJD'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_SQ', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'社区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_SQ'
GO
/****** Object:  Table [dbo].[ZHSQ_RYJC]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_RYJC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_RYJC](
	[JCID] [nvarchar](32) NULL,
	[XM] [nvarchar](32) NULL,
	[JMID] [nvarchar](32) NULL,
	[XB] [nvarchar](32) NULL,
	[RYLX] [nvarchar](32) NULL,
	[JCZT] [nvarchar](32) NULL,
	[JCSJ] [nvarchar](50) NULL,
	[ZPTX] [nvarchar](50) NULL,
	[ZPSP] [nvarchar](50) NULL,
	[ZJID] [nvarchar](32) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_RYJC', N'COLUMN',N'JCID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员进出id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_RYJC', @level2type=N'COLUMN',@level2name=N'JCID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_RYJC', N'COLUMN',N'XM'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_RYJC', @level2type=N'COLUMN',@level2name=N'XM'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_RYJC', N'COLUMN',N'JMID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_RYJC', @level2type=N'COLUMN',@level2name=N'JMID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_RYJC', N'COLUMN',N'XB'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_RYJC', @level2type=N'COLUMN',@level2name=N'XB'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_RYJC', N'COLUMN',N'RYLX'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_RYJC', @level2type=N'COLUMN',@level2name=N'RYLX'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_RYJC', N'COLUMN',N'JCZT'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进出状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_RYJC', @level2type=N'COLUMN',@level2name=N'JCZT'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_RYJC', N'COLUMN',N'JCSJ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进出时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_RYJC', @level2type=N'COLUMN',@level2name=N'JCSJ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_RYJC', N'COLUMN',N'ZPTX'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抓拍头像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_RYJC', @level2type=N'COLUMN',@level2name=N'ZPTX'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_RYJC', N'COLUMN',N'ZPSP'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抓拍视频' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_RYJC', @level2type=N'COLUMN',@level2name=N'ZPSP'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_RYJC', N'COLUMN',N'ZJID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'闸机id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_RYJC', @level2type=N'COLUMN',@level2name=N'ZJID'
GO
/****** Object:  Table [dbo].[ZHSQ_MJJC]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_MJJC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_MJJC](
	[JCID] [nvarchar](255) NULL,
	[JCSJ] [nvarchar](255) NULL,
	[XM] [nvarchar](255) NULL,
	[JMID] [nvarchar](255) NULL,
	[XB] [nvarchar](255) NULL,
	[RYLX] [nvarchar](255) NULL,
	[JCZT] [nvarchar](255) NULL,
	[ZPTX] [nvarchar](255) NULL,
	[ZPSP] [nvarchar](255) NULL,
	[MJID] [nvarchar](255) NULL,
	[XQID] [nvarchar](255) NULL,
	[SQID] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZHSQ_MJ]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_MJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_MJ](
	[MJID] [nvarchar](255) NULL,
	[SBLX] [nvarchar](255) NULL,
	[SBMC] [nvarchar](255) NULL,
	[PPMC] [nvarchar](255) NULL,
	[SBXH] [nvarchar](255) NULL,
	[SBZT] [nvarchar](255) NULL,
	[X] [nvarchar](255) NULL,
	[Y] [nvarchar](255) NULL,
	[Z] [nvarchar](255) NULL,
	[WZ] [nvarchar](255) NULL,
	[LDID] [nvarchar](255) NULL,
	[XQID] [nvarchar](255) NULL,
	[SQID] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_MJ', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'门禁' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_MJ'
GO
/****** Object:  Table [dbo].[ZHSQ_LJTJC]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_LJTJC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_LJTJC](
	[JCID] [nvarchar](255) NULL,
	[LJTID] [nvarchar](255) NULL,
	[LJLX] [nvarchar](255) NULL,
	[MZZT] [nvarchar](255) NULL,
	[WD] [nvarchar](255) NULL,
	[SYRL] [nvarchar](255) NULL,
	[ZL] [nvarchar](255) NULL,
	[JCSJ] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZHSQ_LJT]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_LJT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_LJT](
	[LJTID] [nvarchar](255) NULL,
	[SBLX] [nvarchar](255) NULL,
	[SBMC] [nvarchar](255) NULL,
	[PPMC] [nvarchar](255) NULL,
	[SBXH] [nvarchar](255) NULL,
	[SBZT] [nvarchar](255) NULL,
	[X] [nvarchar](255) NULL,
	[Y] [nvarchar](255) NULL,
	[Z] [nvarchar](255) NULL,
	[WZ] [nvarchar](255) NULL,
	[XQID] [nvarchar](255) NULL,
	[SQID] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZHSQ_LDJC]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_LDJC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_LDJC](
	[JCID] [nvarchar](255) NULL,
	[LDID] [nvarchar](255) NULL,
	[LD] [nvarchar](255) NULL,
	[DL] [nvarchar](255) NULL,
	[DY] [nvarchar](255) NULL,
	[GL] [nvarchar](255) NULL,
	[DPSM] [nvarchar](255) NULL,
	[JCSJ] [nvarchar](255) NULL,
	[LDSJ] [varchar](100) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZHSQ_LD]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_LD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_LD](
	[LDID] [nvarchar](255) NULL,
	[LDMC] [nvarchar](50) NULL,
	[JZWMJ] [nvarchar](20) NULL,
	[CS] [nvarchar](10) NULL,
	[XQID] [nvarchar](255) NULL,
	[SQID] [nvarchar](255) NULL,
	[SSJD] [nvarchar](255) NULL,
	[X] [nvarchar](50) NULL,
	[Y] [nvarchar](50) NULL,
	[Z] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_LD', N'COLUMN',N'LDID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'楼栋ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_LD', @level2type=N'COLUMN',@level2name=N'LDID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_LD', N'COLUMN',N'LDMC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'楼栋名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_LD', @level2type=N'COLUMN',@level2name=N'LDMC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_LD', N'COLUMN',N'JZWMJ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物面积' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_LD', @level2type=N'COLUMN',@level2name=N'JZWMJ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_LD', N'COLUMN',N'CS'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_LD', @level2type=N'COLUMN',@level2name=N'CS'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_LD', N'COLUMN',N'XQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属小区ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_LD', @level2type=N'COLUMN',@level2name=N'XQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_LD', N'COLUMN',N'SQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属社区ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_LD', @level2type=N'COLUMN',@level2name=N'SQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_LD', N'COLUMN',N'SSJD'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属街道' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_LD', @level2type=N'COLUMN',@level2name=N'SSJD'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_LD', N'COLUMN',N'X'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_LD', @level2type=N'COLUMN',@level2name=N'X'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_LD', N'COLUMN',N'Y'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_LD', @level2type=N'COLUMN',@level2name=N'Y'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_LD', N'COLUMN',N'Z'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_LD', @level2type=N'COLUMN',@level2name=N'Z'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_LD', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'楼栋' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_LD'
GO
/****** Object:  Table [dbo].[ZHSQ_JM]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_JM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_JM](
	[JMID] [nvarchar](32) NULL,
	[XM] [nvarchar](32) NULL,
	[XB] [nvarchar](32) NULL,
	[DH] [nvarchar](32) NULL,
	[NL] [nvarchar](32) NULL,
	[JG] [nvarchar](255) NULL,
	[HJXZ] [nvarchar](32) NULL,
	[MZ] [nvarchar](32) NULL,
	[ZZMM] [nvarchar](32) NULL,
	[XL] [nvarchar](32) NULL,
	[SFZH] [nvarchar](32) NULL,
	[SFFZ] [nvarchar](32) NULL,
	[FWID] [nvarchar](32) NULL,
	[LDID] [nvarchar](32) NULL,
	[ZZ] [nvarchar](255) NULL,
	[SFDJ] [nvarchar](32) NULL,
	[SFKC] [nvarchar](32) NULL,
	[SFXMSF] [nvarchar](32) NULL,
	[SFTYJR] [nvarchar](32) NULL,
	[SFDB] [nvarchar](32) NULL,
	[SFCJ] [nvarchar](32) NULL,
	[SFCZ] [nvarchar](32) NULL,
	[SQID] [nvarchar](32) NULL,
	[XQID] [nvarchar](32) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'JMID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'居民id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'JMID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'XM'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'XM'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'XB'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'XB'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'DH'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'DH'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'NL'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年龄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'NL'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'JG'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'籍贯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'JG'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'HJXZ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户籍性质' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'HJXZ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'MZ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'民族' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'MZ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'ZZMM'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'政治面貌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'ZZMM'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'XL'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学历' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'XL'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'SFZH'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否租户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'SFZH'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'SFFZ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否房主' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'SFFZ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'FWID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房屋id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'FWID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'LDID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'楼栋id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'LDID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'ZZ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'ZZ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'SFDJ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否独居老人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'SFDJ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'SFKC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否空巢老人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'SFKC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'SFXMSF'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否刑满释放' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'SFXMSF'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'SFTYJR'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否退役军人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'SFTYJR'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'SFDB'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否低保' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'SFDB'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'SFCJ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否残疾人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'SFCJ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'SFCZ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否常驻人口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'SFCZ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'SQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'社区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'SQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', N'COLUMN',N'XQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM', @level2type=N'COLUMN',@level2name=N'XQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_JM', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'居民' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_JM'
GO
/****** Object:  Table [dbo].[ZHSQ_GG]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_GG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_GG](
	[GGID] [nvarchar](255) NULL,
	[GGLX] [nvarchar](50) NULL,
	[BT] [nvarchar](255) NULL,
	[NR] [nvarchar](max) NULL,
	[FBSJ] [nvarchar](255) NULL,
	[FBRY] [nvarchar](255) NULL,
	[XXLY] [nvarchar](255) NULL,
	[XQID] [nvarchar](255) NULL,
	[SQID] [nvarchar](32) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_GG', N'COLUMN',N'GGID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_GG', @level2type=N'COLUMN',@level2name=N'GGID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_GG', N'COLUMN',N'GGLX'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_GG', @level2type=N'COLUMN',@level2name=N'GGLX'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_GG', N'COLUMN',N'BT'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_GG', @level2type=N'COLUMN',@level2name=N'BT'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_GG', N'COLUMN',N'NR'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_GG', @level2type=N'COLUMN',@level2name=N'NR'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_GG', N'COLUMN',N'FBSJ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_GG', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_GG', N'COLUMN',N'FBRY'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_GG', @level2type=N'COLUMN',@level2name=N'FBRY'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_GG', N'COLUMN',N'XXLY'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_GG', @level2type=N'COLUMN',@level2name=N'XXLY'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_GG', N'COLUMN',N'XQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_GG', @level2type=N'COLUMN',@level2name=N'XQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_GG', N'COLUMN',N'SQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'社区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_GG', @level2type=N'COLUMN',@level2name=N'SQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_GG', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_GG'
GO
/****** Object:  Table [dbo].[ZHSQ_FW]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_FW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_FW](
	[FWID] [nvarchar](255) NULL,
	[LDID] [nvarchar](255) NULL,
	[LDMC] [nvarchar](50) NULL,
	[DY] [nvarchar](10) NULL,
	[C] [nvarchar](10) NULL,
	[MPH] [nvarchar](10) NULL,
	[FWDZ] [nvarchar](50) NULL,
	[FWMJ] [nvarchar](10) NULL,
	[FWRZQK] [nvarchar](10) NULL,
	[FWLYLX] [nvarchar](10) NULL,
	[CQZT] [nvarchar](10) NULL,
	[HZID] [nvarchar](255) NULL,
	[HZXM] [nvarchar](20) NULL,
	[XQID] [nvarchar](255) NULL,
	[SQID] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_FW', N'COLUMN',N'LDID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'楼栋id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_FW', @level2type=N'COLUMN',@level2name=N'LDID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_FW', N'COLUMN',N'LDMC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'楼栋名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_FW', @level2type=N'COLUMN',@level2name=N'LDMC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_FW', N'COLUMN',N'DY'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单元' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_FW', @level2type=N'COLUMN',@level2name=N'DY'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_FW', N'COLUMN',N'C'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_FW', @level2type=N'COLUMN',@level2name=N'C'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_FW', N'COLUMN',N'MPH'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'门牌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_FW', @level2type=N'COLUMN',@level2name=N'MPH'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_FW', N'COLUMN',N'FWDZ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房屋地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_FW', @level2type=N'COLUMN',@level2name=N'FWDZ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_FW', N'COLUMN',N'FWMJ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房屋面积' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_FW', @level2type=N'COLUMN',@level2name=N'FWMJ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_FW', N'COLUMN',N'FWRZQK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房屋入住情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_FW', @level2type=N'COLUMN',@level2name=N'FWRZQK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_FW', N'COLUMN',N'FWLYLX'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用途' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_FW', @level2type=N'COLUMN',@level2name=N'FWLYLX'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_FW', N'COLUMN',N'CQZT'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产权状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_FW', @level2type=N'COLUMN',@level2name=N'CQZT'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_FW', N'COLUMN',N'HZID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户主id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_FW', @level2type=N'COLUMN',@level2name=N'HZID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_FW', N'COLUMN',N'HZXM'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户主姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_FW', @level2type=N'COLUMN',@level2name=N'HZXM'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_FW', N'COLUMN',N'XQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_FW', @level2type=N'COLUMN',@level2name=N'XQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_FW', N'COLUMN',N'SQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'社区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_FW', @level2type=N'COLUMN',@level2name=N'SQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_FW', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房屋' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_FW'
GO
/****** Object:  Table [dbo].[ZHSQ_DZZ]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_DZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_DZZ](
	[DZZID] [nvarchar](32) NULL,
	[MC] [nvarchar](150) NULL,
	[X] [nvarchar](50) NULL,
	[Y] [nvarchar](50) NULL,
	[Z] [nvarchar](50) NULL,
	[WZ] [nvarchar](255) NULL,
	[XQID] [nvarchar](32) NULL,
	[SQID] [nvarchar](32) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DZZ', N'COLUMN',N'DZZID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党组织id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DZZ', @level2type=N'COLUMN',@level2name=N'DZZID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DZZ', N'COLUMN',N'MC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DZZ', @level2type=N'COLUMN',@level2name=N'MC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DZZ', N'COLUMN',N'X'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DZZ', @level2type=N'COLUMN',@level2name=N'X'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DZZ', N'COLUMN',N'Y'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DZZ', @level2type=N'COLUMN',@level2name=N'Y'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DZZ', N'COLUMN',N'Z'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DZZ', @level2type=N'COLUMN',@level2name=N'Z'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DZZ', N'COLUMN',N'WZ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DZZ', @level2type=N'COLUMN',@level2name=N'WZ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DZZ', N'COLUMN',N'XQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DZZ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DZZ', N'COLUMN',N'SQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'社区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DZZ', @level2type=N'COLUMN',@level2name=N'SQID'
GO
/****** Object:  Table [dbo].[ZHSQ_DY]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_DY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_DY](
	[DYID] [nvarchar](32) NULL,
	[XM] [nvarchar](32) NULL,
	[XB] [nvarchar](32) NULL,
	[NL] [nvarchar](32) NULL,
	[DYLX] [nvarchar](32) NULL,
	[MZ] [nvarchar](32) NULL,
	[XL] [nvarchar](32) NULL,
	[DL] [nvarchar](32) NULL,
	[SSDZZ] [nvarchar](225) NULL,
	[DZZID] [nvarchar](32) NULL,
	[ZZ] [nvarchar](255) NULL,
	[LXDH] [nvarchar](32) NULL,
	[JMID] [nvarchar](32) NULL,
	[SFZYZ] [nvarchar](32) NULL,
	[XQID] [nvarchar](32) NULL,
	[SQID] [nvarchar](32) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DY', N'COLUMN',N'DYID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党员id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DY', @level2type=N'COLUMN',@level2name=N'DYID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DY', N'COLUMN',N'XM'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DY', @level2type=N'COLUMN',@level2name=N'XM'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DY', N'COLUMN',N'XB'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DY', @level2type=N'COLUMN',@level2name=N'XB'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DY', N'COLUMN',N'NL'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年龄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DY', @level2type=N'COLUMN',@level2name=N'NL'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DY', N'COLUMN',N'DYLX'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党员类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DY', @level2type=N'COLUMN',@level2name=N'DYLX'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DY', N'COLUMN',N'MZ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'民族' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DY', @level2type=N'COLUMN',@level2name=N'MZ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DY', N'COLUMN',N'XL'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学历' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DY', @level2type=N'COLUMN',@level2name=N'XL'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DY', N'COLUMN',N'DL'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党龄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DY', @level2type=N'COLUMN',@level2name=N'DL'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DY', N'COLUMN',N'SSDZZ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属党组织' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DY', @level2type=N'COLUMN',@level2name=N'SSDZZ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DY', N'COLUMN',N'DZZID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党组织id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DY', @level2type=N'COLUMN',@level2name=N'DZZID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DY', N'COLUMN',N'ZZ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DY', @level2type=N'COLUMN',@level2name=N'ZZ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DY', N'COLUMN',N'LXDH'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DY', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DY', N'COLUMN',N'JMID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DY', @level2type=N'COLUMN',@level2name=N'JMID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DY', N'COLUMN',N'SFZYZ'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否志愿者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DY', @level2type=N'COLUMN',@level2name=N'SFZYZ'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DY', N'COLUMN',N'XQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DY', @level2type=N'COLUMN',@level2name=N'XQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DY', N'COLUMN',N'SQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'社区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DY', @level2type=N'COLUMN',@level2name=N'SQID'
GO
/****** Object:  Table [dbo].[ZHSQ_DGJC]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_DGJC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_DGJC](
	[JCID] [nvarchar](255) NULL,
	[CPHM] [nvarchar](255) NULL,
	[CLID] [nvarchar](255) NULL,
	[CX] [nvarchar](255) NULL,
	[CLLX] [nvarchar](255) NULL,
	[JCZT] [nvarchar](255) NULL,
	[CZXM] [nvarchar](255) NULL,
	[LXDH] [nvarchar](255) NULL,
	[JMID] [nvarchar](255) NULL,
	[DGID] [nvarchar](255) NULL,
	[JCSJ] [varchar](100) NULL,
	[XQID] [nvarchar](255) NULL,
	[SQID] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZHSQ_DG]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_DG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_DG](
	[DGID] [nvarchar](255) NULL,
	[SBLX] [nvarchar](255) NULL,
	[SBMC] [nvarchar](255) NULL,
	[PPMC] [nvarchar](255) NULL,
	[SBXH] [nvarchar](255) NULL,
	[SBZT] [nvarchar](255) NULL,
	[X] [nvarchar](255) NULL,
	[Y] [nvarchar](255) NULL,
	[Z] [nvarchar](255) NULL,
	[WZ] [nvarchar](255) NULL,
	[XQID] [nvarchar](255) NULL,
	[SQID] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_DG', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆道杆' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_DG'
GO
/****** Object:  Table [dbo].[ZHSQ_CW]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_CW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_CW](
	[CWID] [nvarchar](32) NULL,
	[CWLX] [nvarchar](50) NULL,
	[CWBH] [nvarchar](32) NULL,
	[CWZT] [nvarchar](32) NULL,
	[XQID] [nvarchar](32) NULL,
	[SQID] [nvarchar](32) NULL,
	[TCCID] [nvarchar](32) NULL,
	[TCCMC] [nvarchar](100) NULL,
	[CWZL] [nvarchar](100) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CW', N'COLUMN',N'CWID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CW', @level2type=N'COLUMN',@level2name=N'CWID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CW', N'COLUMN',N'CWLX'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车位类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CW', @level2type=N'COLUMN',@level2name=N'CWLX'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CW', N'COLUMN',N'CWBH'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CW', @level2type=N'COLUMN',@level2name=N'CWBH'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CW', N'COLUMN',N'CWZT'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前车位状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CW', @level2type=N'COLUMN',@level2name=N'CWZT'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CW', N'COLUMN',N'XQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CW', @level2type=N'COLUMN',@level2name=N'XQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CW', N'COLUMN',N'SQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'社区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CW', @level2type=N'COLUMN',@level2name=N'SQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CW', N'COLUMN',N'TCCID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'停车场id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CW', @level2type=N'COLUMN',@level2name=N'TCCID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CW', N'COLUMN',N'TCCMC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'停车场名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CW', @level2type=N'COLUMN',@level2name=N'TCCMC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CW', N'COLUMN',N'CWZL'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车位种类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CW', @level2type=N'COLUMN',@level2name=N'CWZL'
GO
/****** Object:  Table [dbo].[ZHSQ_CLJC]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_CLJC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_CLJC](
	[CLJCID] [nvarchar](32) NOT NULL,
	[CPHM] [nvarchar](32) NULL,
	[CLID] [nvarchar](32) NULL,
	[CX] [nvarchar](32) NULL,
	[CLLX] [nvarchar](32) NULL,
	[JCZT] [nvarchar](32) NULL,
	[SFYC] [nvarchar](32) NULL,
	[YCMS] [nvarchar](255) NULL,
	[CZXM] [nvarchar](32) NULL,
	[LXDH] [nvarchar](32) NULL,
	[JMID] [nvarchar](32) NULL,
	[DGID] [nvarchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[CLJCID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CLJC', N'COLUMN',N'CLJCID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆进出id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CLJC', @level2type=N'COLUMN',@level2name=N'CLJCID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CLJC', N'COLUMN',N'CPHM'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车牌号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CLJC', @level2type=N'COLUMN',@level2name=N'CPHM'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CLJC', N'COLUMN',N'CLID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CLJC', @level2type=N'COLUMN',@level2name=N'CLID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CLJC', N'COLUMN',N'CX'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CLJC', @level2type=N'COLUMN',@level2name=N'CX'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CLJC', N'COLUMN',N'CLLX'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆类型(本小区,外来车辆)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CLJC', @level2type=N'COLUMN',@level2name=N'CLLX'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CLJC', N'COLUMN',N'JCZT'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进出状态(外出,进入)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CLJC', @level2type=N'COLUMN',@level2name=N'JCZT'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CLJC', N'COLUMN',N'SFYC'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否异常' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CLJC', @level2type=N'COLUMN',@level2name=N'SFYC'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CLJC', N'COLUMN',N'YCMS'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异常描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CLJC', @level2type=N'COLUMN',@level2name=N'YCMS'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CLJC', N'COLUMN',N'CZXM'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车主姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CLJC', @level2type=N'COLUMN',@level2name=N'CZXM'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CLJC', N'COLUMN',N'LXDH'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车主联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CLJC', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CLJC', N'COLUMN',N'JMID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车主id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CLJC', @level2type=N'COLUMN',@level2name=N'JMID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CLJC', N'COLUMN',N'DGID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道杆id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CLJC', @level2type=N'COLUMN',@level2name=N'DGID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CLJC', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆进出' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CLJC'
GO
/****** Object:  Table [dbo].[ZHSQ_CL]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_CL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_CL](
	[CLID] [nvarchar](32) NOT NULL,
	[CLHM] [nvarchar](32) NULL,
	[CX] [nvarchar](32) NULL,
	[CZXM] [nvarchar](32) NULL,
	[LXDH] [nvarchar](32) NULL,
	[JMID] [nvarchar](32) NULL,
	[XQID] [nvarchar](32) NULL,
	[SQID] [nvarchar](32) NULL,
 CONSTRAINT [PK__CL__F6BA78E7062DE679] PRIMARY KEY CLUSTERED 
(
	[CLID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CL', N'COLUMN',N'CLID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CL', @level2type=N'COLUMN',@level2name=N'CLID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CL', N'COLUMN',N'CLHM'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车牌号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CL', @level2type=N'COLUMN',@level2name=N'CLHM'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CL', N'COLUMN',N'CX'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车型(大型,小型)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CL', @level2type=N'COLUMN',@level2name=N'CX'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CL', N'COLUMN',N'CZXM'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车主姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CL', @level2type=N'COLUMN',@level2name=N'CZXM'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CL', N'COLUMN',N'LXDH'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车主联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CL', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CL', N'COLUMN',N'JMID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车主id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CL', @level2type=N'COLUMN',@level2name=N'JMID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CL', N'COLUMN',N'XQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CL', N'COLUMN',N'SQID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'社区id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CL', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CL'
GO
/****** Object:  Table [dbo].[ZHSQ_CDZJC]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_CDZJC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_CDZJC](
	[JCID] [nvarchar](255) NULL,
	[CDZID] [nvarchar](255) NULL,
	[SYRL] [nvarchar](255) NULL,
	[DTDY] [nvarchar](255) NULL,
	[WD] [nvarchar](255) NULL,
	[JCSJ] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZHSQ_CDZ]    Script Date: 09/23/2020 09:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZHSQ_CDZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZHSQ_CDZ](
	[CDZID] [nvarchar](255) NULL,
	[SBLX] [nvarchar](255) NULL,
	[SBMC] [nvarchar](255) NULL,
	[PPMC] [nvarchar](255) NULL,
	[SBXH] [nvarchar](255) NULL,
	[SBZT] [nvarchar](255) NULL,
	[X] [nvarchar](255) NULL,
	[Y] [nvarchar](255) NULL,
	[Z] [nvarchar](255) NULL,
	[WZ] [nvarchar](255) NULL,
	[XQID] [nvarchar](255) NULL,
	[SQID] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ZHSQ_CDZ', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充电桩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZHSQ_CDZ'
GO
