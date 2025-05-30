USE [caipiIAdb]
GO
/****** Object:  Table [dbo].[caipi_Adresses]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_Adresses](
	[line1] [varchar](200) NOT NULL,
	[line2] [varchar](200) NULL,
	[zipcode] [varchar](9) NOT NULL,
	[location] [geometry] NOT NULL,
	[enable] [bit] NOT NULL,
	[adressId] [int] NOT NULL,
	[cityId] [int] NOT NULL,
 CONSTRAINT [PK_caipi_Adresses] PRIMARY KEY CLUSTERED 
(
	[adressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_AdressessPerSupplier]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_AdressessPerSupplier](
	[adressPerSupplierId] [int] IDENTITY(1,1) NOT NULL,
	[enable] [bit] NOT NULL,
	[adressId] [int] NOT NULL,
	[supplierBranchId] [int] NOT NULL,
 CONSTRAINT [PK_caipi_AdressessPerSupplier] PRIMARY KEY CLUSTERED 
(
	[adressPerSupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_AdressessPerUser]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_AdressessPerUser](
	[adressPerUserId] [int] NOT NULL,
	[enable] [bit] NOT NULL,
	[adressId] [int] NOT NULL,
	[userid] [int] NOT NULL,
 CONSTRAINT [PK_caipi_AdressessPerUser] PRIMARY KEY CLUSTERED 
(
	[adressPerUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_agreementBalances]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_agreementBalances](
	[agreementBalanceId] [int] IDENTITY(1,1) NOT NULL,
	[idMeasureUnit] [int] NOT NULL,
	[balanceTypeId] [int] NOT NULL,
	[scheduleId] [int] NULL,
	[lastUpdate] [datetime] NOT NULL,
	[checkSum] [varbinary](255) NOT NULL,
	[deleted] [bit] NOT NULL,
	[amount] [decimal](10, 2) NULL,
	[quantity] [int] NULL,
	[access] [bit] NULL,
	[idagreementTerms] [int] NULL,
	[current] [bit] NOT NULL,
 CONSTRAINT [PK_caipi_balances] PRIMARY KEY CLUSTERED 
(
	[agreementBalanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_AgreementsPerPlan]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_AgreementsPerPlan](
	[benefitPerPlanId] [int] IDENTITY(1,1) NOT NULL,
	[enable] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
	[idPlans] [int] NOT NULL,
	[idAgreementTerm] [int] NOT NULL,
	[quantity] [nvarchar](200) NULL,
	[idMeasureUnit] [int] NOT NULL,
	[amount] [decimal](10, 5) NULL,
	[disccount] [decimal](10, 5) NULL,
 CONSTRAINT [PK_caipi_be_A13695046B3D1869] PRIMARY KEY CLUSTERED 
(
	[benefitPerPlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_agreementTerms]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_agreementTerms](
	[idagreementTerm] [int] IDENTITY(1,1) NOT NULL,
	[enable] [bit] NOT NULL,
	[checkSum] [varbinary](255) NOT NULL,
	[startDate] [datetime] NOT NULL,
	[idMeasureUnit] [int] NOT NULL,
	[idService] [int] NULL,
	[finalDate] [datetime] NOT NULL,
	[idSupplier] [int] NULL,
	[signedDate] [datetime] NULL,
	[deleted] [bit] NOT NULL,
	[access] [bit] NULL,
	[disccountPercentage] [decimal](5, 2) NULL,
	[originalPrice] [decimal](5, 2) NOT NULL,
	[agreementPrice] [decimal](5, 2) NOT NULL,
	[salePrice] [decimal](5, 2) NOT NULL,
	[IVA] [bit] NOT NULL,
	[idAgreementType] [int] NOT NULL,
	[currencyId] [int] NULL,
	[quantity] [int] NULL,
	[scheduleId] [int] NULL,
	[userDisccount] [decimal](5, 2) NULL,
 CONSTRAINT [PK_caipi_ag_AA5CA2CB503821D8] PRIMARY KEY CLUSTERED 
(
	[idagreementTerm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_AgreementType]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_AgreementType](
	[idAgreementType] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](80) NULL,
	[dataType] [varchar](30) NOT NULL,
 CONSTRAINT [PK_caipi_serviceSubTypes] PRIMARY KEY CLUSTERED 
(
	[idAgreementType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_availablePaymentMethods]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_availablePaymentMethods](
	[paymentMethodId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](55) NOT NULL,
	[token] [varchar](256) NOT NULL,
	[expTokenDate] [datetime] NOT NULL,
	[maskAccount] [nvarchar](max) NULL,
	[callbackURL] [nvarchar](200) NULL,
	[configurationDetails] [nvarchar](max) NOT NULL,
	[refreshToken] [varbinary](256) NOT NULL,
	[methodId] [int] NOT NULL,
 CONSTRAINT [PK_caipi_availablePaymentMethods] PRIMARY KEY CLUSTERED 
(
	[paymentMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_AvailablePaymentMethodsPerSuppliers]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_AvailablePaymentMethodsPerSuppliers](
	[paymentMethodPerSupplierId] [int] IDENTITY(1,1) NOT NULL,
	[enable] [bit] NOT NULL,
	[paymentMethodId] [int] NOT NULL,
	[supplierId] [int] NOT NULL,
 CONSTRAINT [PK_caipi_AvailablePaymentMethodsPerSuppliers] PRIMARY KEY CLUSTERED 
(
	[paymentMethodPerSupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_AvailiablePaymentMethodsPerUser]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_AvailiablePaymentMethodsPerUser](
	[paymentMethodPerUserId] [int] IDENTITY(1,1) NOT NULL,
	[enable] [bit] NOT NULL,
	[paymentMethodId] [int] NOT NULL,
	[idUser] [int] NOT NULL,
 CONSTRAINT [PK_caipi_AvailiablePaymentMethodsPerUser] PRIMARY KEY CLUSTERED 
(
	[paymentMethodPerUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_balanceTypes]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_balanceTypes](
	[balanceTypeId] [int] NOT NULL,
	[name] [varchar](40) NOT NULL,
	[deleted] [bit] NOT NULL,
	[description] [varchar](40) NULL,
	[enable] [bit] NOT NULL,
 CONSTRAINT [PK_caipi_balanceTypes] PRIMARY KEY CLUSTERED 
(
	[balanceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_cities]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_cities](
	[cityId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[enable] [bit] NOT NULL,
	[stateId] [int] NOT NULL,
 CONSTRAINT [PK_caipi_cities] PRIMARY KEY CLUSTERED 
(
	[cityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_contactInfoPerSupplier]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_contactInfoPerSupplier](
	[contactPerSupplierId] [int] IDENTITY(1,1) NOT NULL,
	[enable] [bit] NOT NULL,
	[value] [varchar](100) NOT NULL,
	[contactInfoTypeId] [int] NOT NULL,
	[idSupplier] [int] NOT NULL,
 CONSTRAINT [PK_caipi_contactInfoPerSupplier] PRIMARY KEY CLUSTERED 
(
	[contactPerSupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_contactInfoPerUsers]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_contactInfoPerUsers](
	[contactPerUserId] [int] IDENTITY(1,1) NOT NULL,
	[enable] [bit] NOT NULL,
	[lastUpdate] [datetime] NOT NULL,
	[value] [varchar](100) NOT NULL,
	[userid] [int] NOT NULL,
	[contactInfoTypeId] [int] NOT NULL,
 CONSTRAINT [PK_caipi_contactInfoPerUser] PRIMARY KEY CLUSTERED 
(
	[contactPerUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_contactInfoType]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_contactInfoType](
	[conatctInfoTypeId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[enable] [bit] NOT NULL,
 CONSTRAINT [PK_caipi_contactInfoType] PRIMARY KEY CLUSTERED 
(
	[conatctInfoTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_countries]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_countries](
	[countryId] [int] NOT NULL,
	[name] [varchar](10) NOT NULL,
	[phoneCode] [varchar](5) NOT NULL,
 CONSTRAINT [PK_caipi_countries] PRIMARY KEY CLUSTERED 
(
	[countryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_currencies]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_currencies](
	[currencyId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[acronym] [varchar](10) NOT NULL,
	[symbol] [varchar](5) NOT NULL,
 CONSTRAINT [PK_caipi_currencies] PRIMARY KEY CLUSTERED 
(
	[currencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_ExchangeRates]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_ExchangeRates](
	[exchangeRateId] [int] IDENTITY(1,1) NOT NULL,
	[startDate] [datetime] NOT NULL,
	[endDate] [datetime] NOT NULL,
	[exchangeRate] [decimal](10, 2) NOT NULL,
	[enable] [bit] NOT NULL,
	[currentExchangeRate] [bit] NOT NULL,
	[currencyId] [int] NOT NULL,
 CONSTRAINT [PK_caipi_ExchangeRates] PRIMARY KEY CLUSTERED 
(
	[exchangeRateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_logs]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_logs](
	[logId] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](80) NULL,
	[postime] [timestamp] NOT NULL,
	[computer] [nvarchar](100) NULL,
	[username] [varchar](70) NOT NULL,
	[trace] [varchar](300) NULL,
	[referenceId1] [bigint] NULL,
	[referenceId2] [bigint] NULL,
	[value1] [varchar](300) NULL,
	[value2] [varchar](300) NULL,
	[chechsum] [varbinary](256) NOT NULL,
	[logSeverityId] [int] NOT NULL,
	[logSourceId] [int] NOT NULL,
	[logTypeId] [int] NOT NULL,
 CONSTRAINT [PK_caipi_qrLogs] PRIMARY KEY CLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_logSeverity]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_logSeverity](
	[logSeverityId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_caipi_logSeverity] PRIMARY KEY CLUSTERED 
(
	[logSeverityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_logsSources]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_logsSources](
	[logSourceId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_caipi_logsSources] PRIMARY KEY CLUSTERED 
(
	[logSourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_logTypes]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_logTypes](
	[logTypeId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_caipi_logTypes] PRIMARY KEY CLUSTERED 
(
	[logTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_measureUnits]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_measureUnits](
	[idMeasureUnit] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[enable] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
	[dataType] [varchar](15) NOT NULL,
 CONSTRAINT [PK__caipi_me__E5F81CA06D0BE1A5] PRIMARY KEY CLUSTERED 
(
	[idMeasureUnit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_mediaAgreements]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_mediaAgreements](
	[idmediaAgreements] [int] IDENTITY(1,1) NOT NULL,
	[idMediaFile] [int] NOT NULL,
	[idAgreementTerms] [int] NOT NULL,
	[enable] [bit] NOT NULL,
	[description] [varchar](60) NOT NULL,
 CONSTRAINT [idmediaAgreements] PRIMARY KEY CLUSTERED 
(
	[idmediaAgreements] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_mediaFiles]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_mediaFiles](
	[idmediaFile] [int] IDENTITY(1,1) NOT NULL,
	[mediaURL] [varchar](200) NOT NULL,
	[filename] [varchar](255) NOT NULL,
	[lastUpdate] [datetime] NOT NULL,
	[idmediaFileType] [int] NOT NULL,
 CONSTRAINT [PK__caipi_me__EC9192B8B69E17C2] PRIMARY KEY CLUSTERED 
(
	[idmediaFile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_MediaFilesPerPlan]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_MediaFilesPerPlan](
	[idMediaFilePlan] [int] NOT NULL,
	[idPlan] [int] NOT NULL,
	[idmediaFile] [int] NOT NULL,
	[enable] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_caipi_MediaFilesPerPlan] PRIMARY KEY CLUSTERED 
(
	[idMediaFilePlan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_mediaFileType]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_mediaFileType](
	[idmediaFileType] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[enable] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idmediaFileType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_member_permissions]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_member_permissions](
	[permissionid] [int] IDENTITY(1,1) NOT NULL,
	[memberid] [int] NOT NULL,
	[permission_typeid] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[enabled] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_caipi_member_permissions] PRIMARY KEY CLUSTERED 
(
	[permissionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_members]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_members](
	[memberid] [int] IDENTITY(1,1) NOT NULL,
	[subscriptionid] [int] NOT NULL,
	[userid] [int] NOT NULL,
	[startdate] [datetime] NOT NULL,
	[leftdate] [datetime] NULL,
	[enabled] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_caipi_members] PRIMARY KEY CLUSTERED 
(
	[memberid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_memberSettings]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_memberSettings](
	[settingid] [int] IDENTITY(1,1) NOT NULL,
	[memberid] [int] NOT NULL,
	[settingTypeid] [int] NOT NULL,
	[settingValue] [nvarchar](45) NOT NULL,
	[enable] [bit] NOT NULL,
 CONSTRAINT [PK_caipi_member_settings] PRIMARY KEY CLUSTERED 
(
	[settingid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_memberSettingTypes]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_memberSettingTypes](
	[setting_typeid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](45) NOT NULL,
	[description] [nvarchar](200) NOT NULL,
	[enable] [bit] NOT NULL,
 CONSTRAINT [PK_caipi_setting_types] PRIMARY KEY CLUSTERED 
(
	[setting_typeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_modules]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_modules](
	[moduleId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[enable] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [moduleId] PRIMARY KEY CLUSTERED 
(
	[moduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_notificationmethods]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_notificationmethods](
	[notificationmethodid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](20) NULL,
	[lastupdate] [datetime] NULL,
	[createddate] [datetime] NULL,
	[enabled] [bit] NULL,
	[callbackurlget] [nvarchar](255) NULL,
	[callbackurlpost] [nvarchar](255) NULL,
	[callbackurlredirect] [nvarchar](255) NULL,
	[messagingserviceid] [nvarchar](40) NULL,
	[authtoken] [nvarchar](500) NULL,
 CONSTRAINT [PK_caipi_notificationmethods] PRIMARY KEY CLUSTERED 
(
	[notificationmethodid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_paymentMethods]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_paymentMethods](
	[methodId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[apiURL] [varchar](200) NOT NULL,
	[secretKey] [varbinary](256) NOT NULL,
	[key] [varbinary](256) NOT NULL,
	[enable] [bit] NOT NULL,
 CONSTRAINT [PK_caipi_paymentMethods] PRIMARY KEY CLUSTERED 
(
	[methodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_payments]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_payments](
	[paymentId] [bigint] IDENTITY(1,1) NOT NULL,
	[amount] [decimal](10, 2) NOT NULL,
	[actualAmount] [decimal](10, 2) NOT NULL,
	[result] [varchar](50) NOT NULL,
	[authNumber] [nvarchar](256) NULL,
	[reference] [varchar](100) NOT NULL,
	[chargeToken] [varbinary](256) NOT NULL,
	[description] [varchar](100) NOT NULL,
	[error] [varchar](100) NOT NULL,
	[date] [datetime] NOT NULL,
	[checksum] [varbinary](256) NOT NULL,
	[paymentMethodId] [int] NOT NULL,
	[methodId] [int] NOT NULL,
	[scheduleId] [int] NOT NULL,
	[userId] [int] NULL,
	[personId] [int] NULL,
 CONSTRAINT [PK_caipi_payments] PRIMARY KEY CLUSTERED 
(
	[paymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_permission_types]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_permission_types](
	[permission_typeid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](45) NOT NULL,
	[description] [nvarchar](150) NOT NULL,
	[enable] [bit] NOT NULL,
 CONSTRAINT [PK_caipi_permission_types] PRIMARY KEY CLUSTERED 
(
	[permission_typeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_plans]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_plans](
	[idPlan] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[description] [varchar](100) NULL,
	[enable] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
	[checkSum] [varbinary](255) NOT NULL,
	[idplanTypes] [int] NOT NULL,
	[effectiveDate] [datetime] NULL,
	[totalAmount] [decimal](5, 2) NOT NULL,
	[monthlyAmount] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_caipi_plans] PRIMARY KEY CLUSTERED 
(
	[idPlan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_plansLimits]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_plansLimits](
	[idPlansLimits] [int] IDENTITY(1,1) NOT NULL,
	[limit] [varchar](30) NOT NULL,
	[dateUsed] [datetime] NOT NULL,
	[current] [bit] NOT NULL,
	[checkSum] [varbinary](255) NOT NULL,
	[idPlans] [int] NOT NULL,
	[benefitPerPlanId] [int] NOT NULL,
	[idMeasureUnit] [int] NOT NULL,
	[idMember] [int] NOT NULL,
 CONSTRAINT [PK_caipi_plansLimits] PRIMARY KEY CLUSTERED 
(
	[idPlansLimits] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_planTypes]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_planTypes](
	[idplanTypes] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](45) NOT NULL,
	[enable] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idplanTypes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_redemptions]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_redemptions](
	[idRedemptions] [int] IDENTITY(1,1) NOT NULL,
	[numberTag] [varchar](40) NOT NULL,
	[idPlan] [int] NULL,
	[idRedemptionSubType] [int] NOT NULL,
	[idBenefit] [int] NULL,
	[idUser] [int] NULL,
	[idSupplier] [int] NULL,
	[idService] [int] NULL,
	[enable] [bit] NULL,
 CONSTRAINT [idRedemptions] PRIMARY KEY CLUSTERED 
(
	[idRedemptions] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_redemptionSubType]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_redemptionSubType](
	[idRedemptionSubType] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](45) NOT NULL,
	[enable] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [idRedemption] PRIMARY KEY CLUSTERED 
(
	[idRedemptionSubType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_redemptionTransactions]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_redemptionTransactions](
	[idRedemptionTransaction] [int] IDENTITY(1,1) NOT NULL,
	[idRedemption] [int] NOT NULL,
	[idUser] [int] NOT NULL,
	[idSupplierBranch] [int] NULL,
	[checkSum] [varbinary](500) NOT NULL,
	[creationDate] [datetime] NOT NULL,
	[idModule] [int] NOT NULL,
	[description] [varchar](500) NULL,
	[idPerson] [int] NOT NULL,
	[idRedemptionTransactionTypes] [int] NOT NULL,
	[quantity] [int] NULL,
	[amount] [decimal](5, 2) NULL,
	[validation] [bit] NULL,
	[idAgreementTerm] [int] NOT NULL,
 CONSTRAINT [idRedemptionTransaction] PRIMARY KEY CLUSTERED 
(
	[idRedemptionTransaction] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_RedemptionTransactionTypes]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_RedemptionTransactionTypes](
	[idRedemptionTransactionType] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[enable] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [idRedemptionTransactionType] PRIMARY KEY CLUSTERED 
(
	[idRedemptionTransactionType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_reminders]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_reminders](
	[reminderid] [int] IDENTITY(1,1) NOT NULL,
	[message] [nvarchar](1000) NULL,
	[createddate] [datetime] NOT NULL,
	[lastreminder] [bit] NULL,
	[ticketid] [nvarchar](45) NULL,
	[requestid] [int] NULL,
	[expectedresult] [nvarchar](15) NULL,
	[successinfo] [nvarchar](max) NULL,
	[userid] [int] NOT NULL,
	[notificationmethods_notificationmethodid] [int] NOT NULL,
	[remindertypeid] [int] NOT NULL,
 CONSTRAINT [PK_caipi_payment_reminders] PRIMARY KEY CLUSTERED 
(
	[reminderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_remindertypes]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_remindertypes](
	[remindertypeid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_caipi_payment_remindertypes] PRIMARY KEY CLUSTERED 
(
	[remindertypeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_restrictions]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_restrictions](
	[restrictionId] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](100) NOT NULL,
	[code] [varchar](60) NOT NULL,
	[moduleId] [int] NOT NULL,
 CONSTRAINT [restrictionId] PRIMARY KEY CLUSTERED 
(
	[restrictionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_roles]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_roles](
	[roleId] [int] NOT NULL,
	[name] [varchar](30) NOT NULL,
	[enable] [bit] NOT NULL,
 CONSTRAINT [roleId] PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_rolesRestrictions]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_rolesRestrictions](
	[rolesRestrictionId] [int] IDENTITY(1,1) NOT NULL,
	[restrictionId] [int] NOT NULL,
	[lastUpdate] [datetime] NOT NULL,
	[checksum] [varbinary](500) NOT NULL,
	[enable] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
	[roleId] [int] NOT NULL,
 CONSTRAINT [rolesRestrictionId] PRIMARY KEY CLUSTERED 
(
	[rolesRestrictionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_scheduleDetails]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_scheduleDetails](
	[scheduleDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[baseDate] [datetime] NOT NULL,
	[datePart] [varchar](45) NOT NULL,
	[lastExecute] [datetime] NOT NULL,
	[nextExecute] [datetime] NOT NULL,
	[scheduleId] [int] NULL,
 CONSTRAINT [scheduleDetailsId] PRIMARY KEY CLUSTERED 
(
	[scheduleDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_schedules]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_schedules](
	[scheduleId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[recurrencyType] [varchar](20) NOT NULL,
	[repetition] [int] NOT NULL,
	[endType] [varchar](30) NOT NULL,
	[endDate] [datetime] NOT NULL,
 CONSTRAINT [PK_caipi_schedules] PRIMARY KEY CLUSTERED 
(
	[scheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_services]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_services](
	[serviceId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[description] [varchar](100) NOT NULL,
	[enable] [bit] NOT NULL,
	[image] [int] NULL,
	[idServiceType] [int] NOT NULL,
 CONSTRAINT [PK_caipi_services] PRIMARY KEY CLUSTERED 
(
	[serviceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_serviceTypes]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_serviceTypes](
	[idServiceType] [int] NOT NULL,
	[name] [varchar](60) NOT NULL,
	[description] [varchar](100) NULL,
	[enable] [bit] NULL,
 CONSTRAINT [PK_caipi_serviceTypes] PRIMARY KEY CLUSTERED 
(
	[idServiceType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_states]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_states](
	[stateId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[enable] [bit] NOT NULL,
	[countryId] [int] NOT NULL,
 CONSTRAINT [PK_caipi_states] PRIMARY KEY CLUSTERED 
(
	[stateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_subscription_freeze]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_subscription_freeze](
	[freezeid] [int] IDENTITY(1,1) NOT NULL,
	[subscriptionid] [int] NOT NULL,
	[start_freeze] [date] NOT NULL,
	[end_freeze] [date] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[reason] [varchar](255) NOT NULL,
 CONSTRAINT [PK_caipi_subscription_freeze] PRIMARY KEY CLUSTERED 
(
	[freezeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_subscription_payments]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_subscription_payments](
	[pay_informationid] [int] IDENTITY(1,1) NOT NULL,
	[amount] [decimal](10, 2) NOT NULL,
	[payment_date] [datetime] NOT NULL,
	[deleted] [bit] NOT NULL,
	[idSuscription] [int] NOT NULL,
	[idPayment] [bigint] NOT NULL,
 CONSTRAINT [PK_caipi_subscription_payments] PRIMARY KEY CLUSTERED 
(
	[pay_informationid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_subscription_settings]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_subscription_settings](
	[settings_id] [int] IDENTITY(1,1) NOT NULL,
	[subscriptionid] [int] NOT NULL,
	[value] [varchar](255) NOT NULL,
	[created_at] [varchar](50) NOT NULL,
	[sucriptionSettingTypeId] [int] NOT NULL,
	[enable] [bit] NOT NULL,
 CONSTRAINT [PK_caipi_subscription_settings] PRIMARY KEY CLUSTERED 
(
	[settings_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_subscription_status]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_subscription_status](
	[statusid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[enable] [bit] NOT NULL,
 CONSTRAINT [PK_caipi_subscription_status] PRIMARY KEY CLUSTERED 
(
	[statusid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_subscription_transfer]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_subscription_transfer](
	[transfer_id] [int] NOT NULL,
	[subscriptionid] [int] NOT NULL,
	[userid] [int] NOT NULL,
	[to_user_id] [int] NOT NULL,
	[transferred_at] [datetime] NOT NULL,
	[reason] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_caipi_subscription_transfer] PRIMARY KEY CLUSTERED 
(
	[transfer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_subscription_types]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_subscription_types](
	[suscription_typeid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](100) NOT NULL,
	[customizable] [bit] NOT NULL,
 CONSTRAINT [PK_caipi_subscription_types] PRIMARY KEY CLUSTERED 
(
	[suscription_typeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_subscriptions]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_subscriptions](
	[subscriptionid] [int] IDENTITY(1,1) NOT NULL,
	[suscription_typeid] [int] NOT NULL,
	[userid] [int] NOT NULL,
	[social] [bit] NOT NULL,
	[enable] [bit] NOT NULL,
	[startdate] [date] NOT NULL,
	[deleted] [bit] NOT NULL,
	[statusid] [int] NOT NULL,
	[scheduleId] [int] NOT NULL,
	[auto_renew] [bit] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[idPlan] [int] NOT NULL,
 CONSTRAINT [PK_caipi_subscriptions] PRIMARY KEY CLUSTERED 
(
	[subscriptionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_supplierBranches]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_supplierBranches](
	[idSupplierBranch] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[enable] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
	[supplierId] [int] NOT NULL,
	[idTypesBranch] [int] NOT NULL,
 CONSTRAINT [idsupplierBranches] PRIMARY KEY CLUSTERED 
(
	[idSupplierBranch] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_supplierCategories]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_supplierCategories](
	[idsupplierCategories] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](45) NOT NULL,
	[enable] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_caipi_supplierCategories] PRIMARY KEY CLUSTERED 
(
	[idsupplierCategories] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_suppliers]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_suppliers](
	[idSupplier] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](30) NOT NULL,
	[enable] [bit] NOT NULL,
	[idsupplierCategories] [int] NOT NULL,
	[idmediaFiles] [int] NOT NULL,
	[idagreementTerms] [int] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_caipi_suppliers] PRIMARY KEY CLUSTERED 
(
	[idSupplier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_suscriptionSettingTypes]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_suscriptionSettingTypes](
	[sucriptionSettingTypeId] [int] NOT NULL,
	[name] [varchar](55) NOT NULL,
	[description] [varchar](100) NOT NULL,
	[enable] [bit] NOT NULL,
 CONSTRAINT [PK_caipi_suscriptionSettingTypes] PRIMARY KEY CLUSTERED 
(
	[sucriptionSettingTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_transactions]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_transactions](
	[transactionId] [bigint] IDENTITY(1,1) NOT NULL,
	[amount] [decimal](10, 2) NOT NULL,
	[description] [varchar](100) NOT NULL,
	[date] [datetime] NOT NULL,
	[postTime] [datetime] NOT NULL,
	[refNumber] [varchar](150) NOT NULL,
	[checksum] [varbinary](256) NOT NULL,
	[convertedAmount] [decimal](10, 2) NOT NULL,
	[paymentId] [bigint] NOT NULL,
	[transactionSubTypeId] [int] NOT NULL,
	[transTypeId] [int] NOT NULL,
	[currencyId] [int] NOT NULL,
	[exchangeRateId] [int] NOT NULL,
 CONSTRAINT [PK_caipi_transactions] PRIMARY KEY CLUSTERED 
(
	[transactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_transSubTypes]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_transSubTypes](
	[transactionSubTypeId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_caipi_transSubTypes] PRIMARY KEY CLUSTERED 
(
	[transactionSubTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_transTypes]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_transTypes](
	[transactionTypeId] [int] NOT NULL,
	[name] [varchar](30) NOT NULL,
	[deleted] [bit] NOT NULL,
	[transTypeId] [int] NOT NULL,
 CONSTRAINT [PK_caipi_transTypes] PRIMARY KEY CLUSTERED 
(
	[transTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_typesBranch]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_typesBranch](
	[idTypesBranch] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](55) NOT NULL,
	[enable] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [idTypesBranch] PRIMARY KEY CLUSTERED 
(
	[idTypesBranch] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_userRoles]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_userRoles](
	[userRoleId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[checksum] [varbinary](255) NOT NULL,
	[enable] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
	[roleId] [int] NOT NULL,
 CONSTRAINT [userRoleId] PRIMARY KEY CLUSTERED 
(
	[userRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_users]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_users](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[lastname] [nvarchar](50) NOT NULL,
	[birth] [date] NOT NULL,
	[password] [nvarchar](256) NULL,
	[deleted] [bit] NOT NULL,
	[active] [bit] NOT NULL,
	[last_update] [datetime] NOT NULL,
	[role] [tinyint] NOT NULL,
	[registerdate] [date] NOT NULL,
	[profile_url] [nvarchar](200) NOT NULL,
	[img_profile_url] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_caipi_users] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caipi_usersRestrictions]    Script Date: 6/5/2025 10:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caipi_usersRestrictions](
	[userRestrictionId] [int] IDENTITY(1,1) NOT NULL,
	[restrictionId] [int] NOT NULL,
	[enable] [int] NOT NULL,
	[deleted] [bit] NOT NULL,
	[lastUpdate] [datetime] NOT NULL,
	[checksum] [varbinary](255) NOT NULL,
	[userId] [int] NOT NULL,
 CONSTRAINT [userRestrictionId] PRIMARY KEY CLUSTERED 
(
	[userRestrictionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[caipi_Adresses] ADD  CONSTRAINT [DF_caipi_Adresses_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_AdressessPerSupplier] ADD  CONSTRAINT [DF_caipi_AdressessPerSupplier_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_AdressessPerUser] ADD  CONSTRAINT [DF_caipi_AdressessPerUser_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_agreementBalances] ADD  CONSTRAINT [DF_caipi_agreementBalances_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_agreementBalances] ADD  CONSTRAINT [DF_caipi_agreementBalances_current_1]  DEFAULT ((1)) FOR [current]
GO
ALTER TABLE [dbo].[caipi_AgreementsPerPlan] ADD  CONSTRAINT [DF_caipi_benenabl_58D1301D]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_AgreementsPerPlan] ADD  CONSTRAINT [DF_caipi_bendelet_59C55456]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_agreementTerms] ADD  CONSTRAINT [DF_caipi_agrenabl_607251E5]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_agreementTerms] ADD  CONSTRAINT [DF_caipi_agreementTerms_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_agreementTerms] ADD  CONSTRAINT [DF_caipi_agreementTerms_IVA]  DEFAULT ((1)) FOR [IVA]
GO
ALTER TABLE [dbo].[caipi_AvailablePaymentMethodsPerSuppliers] ADD  CONSTRAINT [DF_caipi_AvailablePaymentMethodsPerSuppliers_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_AvailiablePaymentMethodsPerUser] ADD  CONSTRAINT [DF_caipi_AvailiablePaymentMethodsPerUser_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_balanceTypes] ADD  CONSTRAINT [DF_caipi_balanceTypes_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_balanceTypes] ADD  CONSTRAINT [DF_caipi_balanceTypes_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_cities] ADD  CONSTRAINT [DF_caipi_cities_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_contactInfoPerSupplier] ADD  CONSTRAINT [DF_caipi_contactInfoPerSupplier_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_contactInfoPerUsers] ADD  CONSTRAINT [DF_caipi_contactInfoPerUser_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_contactInfoType] ADD  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_ExchangeRates] ADD  CONSTRAINT [DF_caipi_ExchangeRates_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_ExchangeRates] ADD  CONSTRAINT [DF_caipi_ExchangeRates_currentExchangeRate]  DEFAULT ((1)) FOR [currentExchangeRate]
GO
ALTER TABLE [dbo].[caipi_measureUnits] ADD  CONSTRAINT [DF__caipi_mea__enabl__65370702]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_measureUnits] ADD  CONSTRAINT [DF__caipi_mea__delet__662B2B3B]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_mediaAgreements] ADD  CONSTRAINT [DF__caipi_med__enabl__4277DAAA]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_MediaFilesPerPlan] ADD  CONSTRAINT [DF_caipi_MediaFilesPerPlan_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_MediaFilesPerPlan] ADD  CONSTRAINT [DF_caipi_MediaFilesPerPlan_deleted]  DEFAULT ((1)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_mediaFileType] ADD  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_mediaFileType] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_member_permissions] ADD  CONSTRAINT [DF__caipi_mem__enabl__690797E6]  DEFAULT ((1)) FOR [enabled]
GO
ALTER TABLE [dbo].[caipi_member_permissions] ADD  CONSTRAINT [DF__caipi_mem__delet__69FBBC1F]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_members] ADD  DEFAULT ((1)) FOR [enabled]
GO
ALTER TABLE [dbo].[caipi_members] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_memberSettings] ADD  CONSTRAINT [DF_caipi_memberSettings_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_memberSettingTypes] ADD  CONSTRAINT [DF_caipi_memberSettingTypes_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_modules] ADD  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_modules] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_paymentMethods] ADD  CONSTRAINT [DF_caipi_paymentMethods_enable_1]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_payments] ADD  CONSTRAINT [DF_caipi_payments_date]  DEFAULT (getdate()) FOR [date]
GO
ALTER TABLE [dbo].[caipi_permission_types] ADD  CONSTRAINT [DF_caipi_permission_types_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_plans] ADD  CONSTRAINT [DF_caipi_plans_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_plans] ADD  CONSTRAINT [DF_caipi_plans_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_plansLimits] ADD  CONSTRAINT [DF_caipi_plansLimits_current]  DEFAULT ((1)) FOR [current]
GO
ALTER TABLE [dbo].[caipi_planTypes] ADD  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_planTypes] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_redemptions] ADD  CONSTRAINT [DF_caipi_redemptions_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_redemptionSubType] ADD  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_redemptionSubType] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_RedemptionTransactionTypes] ADD  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_RedemptionTransactionTypes] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_roles] ADD  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_rolesRestrictions] ADD  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_rolesRestrictions] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_services] ADD  CONSTRAINT [DF_caipi_services_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_serviceTypes] ADD  CONSTRAINT [DF_caipi_serviceTypes_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_states] ADD  CONSTRAINT [DF_caipi_states_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_subscription_settings] ADD  CONSTRAINT [DF_caipi_subscription_settings_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_subscription_status] ADD  CONSTRAINT [DF_caipi_subscription_status_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_subscription_types] ADD  CONSTRAINT [DF_caipi_subscription_types_customizable]  DEFAULT ((1)) FOR [customizable]
GO
ALTER TABLE [dbo].[caipi_subscriptions] ADD  CONSTRAINT [DF__caipi_sub__delet__1A9EF37A]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_subscriptions] ADD  CONSTRAINT [DF_caipi_subscriptions_auto_renew]  DEFAULT ((1)) FOR [auto_renew]
GO
ALTER TABLE [dbo].[caipi_supplierCategories] ADD  CONSTRAINT [DF_caipi_supplierCategories_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_supplierCategories] ADD  CONSTRAINT [DF_caipi_supplierCategories_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_suppliers] ADD  CONSTRAINT [DF_caipi_suppliers_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_suppliers] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_suscriptionSettingTypes] ADD  CONSTRAINT [DF_caipi_suscriptionSettingTypes_enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_transSubTypes] ADD  CONSTRAINT [DF_caipi_transSubTypes_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_transTypes] ADD  CONSTRAINT [DF_caipi_transTypes_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_typesBranch] ADD  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_typesBranch] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_userRoles] ADD  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_userRoles] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_usersRestrictions] ADD  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[caipi_usersRestrictions] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[caipi_Adresses]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_Adresses_caipi_cities] FOREIGN KEY([cityId])
REFERENCES [dbo].[caipi_cities] ([cityId])
GO
ALTER TABLE [dbo].[caipi_Adresses] CHECK CONSTRAINT [FK_caipi_Adresses_caipi_cities]
GO
ALTER TABLE [dbo].[caipi_AdressessPerSupplier]  WITH NOCHECK ADD  CONSTRAINT [caipi_AdressessPerSupplier_caipi_Adresses_FK] FOREIGN KEY([adressId])
REFERENCES [dbo].[caipi_Adresses] ([adressId])
GO
ALTER TABLE [dbo].[caipi_AdressessPerSupplier] CHECK CONSTRAINT [caipi_AdressessPerSupplier_caipi_Adresses_FK]
GO
ALTER TABLE [dbo].[caipi_AdressessPerSupplier]  WITH NOCHECK ADD  CONSTRAINT [caipi_AdressessPerSupplier_caipi_supplierBranches_FK] FOREIGN KEY([supplierBranchId])
REFERENCES [dbo].[caipi_supplierBranches] ([idSupplierBranch])
GO
ALTER TABLE [dbo].[caipi_AdressessPerSupplier] CHECK CONSTRAINT [caipi_AdressessPerSupplier_caipi_supplierBranches_FK]
GO
ALTER TABLE [dbo].[caipi_AdressessPerUser]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_AdressessPerUser_caipi_Adresses] FOREIGN KEY([adressId])
REFERENCES [dbo].[caipi_Adresses] ([adressId])
GO
ALTER TABLE [dbo].[caipi_AdressessPerUser] CHECK CONSTRAINT [FK_caipi_AdressessPerUser_caipi_Adresses]
GO
ALTER TABLE [dbo].[caipi_AdressessPerUser]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_AdressessPerUser_caipi_users] FOREIGN KEY([userid])
REFERENCES [dbo].[caipi_users] ([userid])
GO
ALTER TABLE [dbo].[caipi_AdressessPerUser] CHECK CONSTRAINT [FK_caipi_AdressessPerUser_caipi_users]
GO
ALTER TABLE [dbo].[caipi_agreementBalances]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_agreementBalances_caipi_balanceTypes] FOREIGN KEY([balanceTypeId])
REFERENCES [dbo].[caipi_balanceTypes] ([balanceTypeId])
GO
ALTER TABLE [dbo].[caipi_agreementBalances] CHECK CONSTRAINT [FK_caipi_agreementBalances_caipi_balanceTypes]
GO
ALTER TABLE [dbo].[caipi_agreementBalances]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_agreementBalances_caipi_schedules] FOREIGN KEY([scheduleId])
REFERENCES [dbo].[caipi_schedules] ([scheduleId])
GO
ALTER TABLE [dbo].[caipi_agreementBalances] CHECK CONSTRAINT [FK_caipi_agreementBalances_caipi_schedules]
GO
ALTER TABLE [dbo].[caipi_AgreementsPerPlan]  WITH NOCHECK ADD  CONSTRAINT [caipi_benefiitsPerPlan_caipi_plans_FK] FOREIGN KEY([idPlans])
REFERENCES [dbo].[caipi_plans] ([idPlan])
GO
ALTER TABLE [dbo].[caipi_AgreementsPerPlan] CHECK CONSTRAINT [caipi_benefiitsPerPlan_caipi_plans_FK]
GO
ALTER TABLE [dbo].[caipi_AgreementsPerPlan]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_benefiitsPerPlan_caipi_agreementTerms] FOREIGN KEY([idAgreementTerm])
REFERENCES [dbo].[caipi_agreementTerms] ([idagreementTerm])
GO
ALTER TABLE [dbo].[caipi_AgreementsPerPlan] CHECK CONSTRAINT [FK_caipi_benefiitsPerPlan_caipi_agreementTerms]
GO
ALTER TABLE [dbo].[caipi_AgreementsPerPlan]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_benefiitsPerPlan_caipi_measureUnits] FOREIGN KEY([idMeasureUnit])
REFERENCES [dbo].[caipi_measureUnits] ([idMeasureUnit])
GO
ALTER TABLE [dbo].[caipi_AgreementsPerPlan] CHECK CONSTRAINT [FK_caipi_benefiitsPerPlan_caipi_measureUnits]
GO
ALTER TABLE [dbo].[caipi_agreementTerms]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_agreementTerms_caipi_AgreementType] FOREIGN KEY([idAgreementType])
REFERENCES [dbo].[caipi_AgreementType] ([idAgreementType])
GO
ALTER TABLE [dbo].[caipi_agreementTerms] CHECK CONSTRAINT [FK_caipi_agreementTerms_caipi_AgreementType]
GO
ALTER TABLE [dbo].[caipi_agreementTerms]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_agreementTerms_caipi_currencies] FOREIGN KEY([currencyId])
REFERENCES [dbo].[caipi_currencies] ([currencyId])
GO
ALTER TABLE [dbo].[caipi_agreementTerms] CHECK CONSTRAINT [FK_caipi_agreementTerms_caipi_currencies]
GO
ALTER TABLE [dbo].[caipi_agreementTerms]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_agreementTerms_caipi_schedules] FOREIGN KEY([scheduleId])
REFERENCES [dbo].[caipi_schedules] ([scheduleId])
GO
ALTER TABLE [dbo].[caipi_agreementTerms] CHECK CONSTRAINT [FK_caipi_agreementTerms_caipi_schedules]
GO
ALTER TABLE [dbo].[caipi_agreementTerms]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_agreementTerms_caipi_services] FOREIGN KEY([idService])
REFERENCES [dbo].[caipi_services] ([serviceId])
GO
ALTER TABLE [dbo].[caipi_agreementTerms] CHECK CONSTRAINT [FK_caipi_agreementTerms_caipi_services]
GO
ALTER TABLE [dbo].[caipi_agreementTerms]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_agreementTerms_caipi_suppliers] FOREIGN KEY([idSupplier])
REFERENCES [dbo].[caipi_suppliers] ([idSupplier])
GO
ALTER TABLE [dbo].[caipi_agreementTerms] CHECK CONSTRAINT [FK_caipi_agreementTerms_caipi_suppliers]
GO
ALTER TABLE [dbo].[caipi_agreementTerms]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_agridMea_756D6ECB] FOREIGN KEY([idMeasureUnit])
REFERENCES [dbo].[caipi_measureUnits] ([idMeasureUnit])
GO
ALTER TABLE [dbo].[caipi_agreementTerms] CHECK CONSTRAINT [FK_caipi_agridMea_756D6ECB]
GO
ALTER TABLE [dbo].[caipi_availablePaymentMethods]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_availablePaymentMethods_caipi_paymentMethods] FOREIGN KEY([methodId])
REFERENCES [dbo].[caipi_paymentMethods] ([methodId])
GO
ALTER TABLE [dbo].[caipi_availablePaymentMethods] CHECK CONSTRAINT [FK_caipi_availablePaymentMethods_caipi_paymentMethods]
GO
ALTER TABLE [dbo].[caipi_AvailablePaymentMethodsPerSuppliers]  WITH NOCHECK ADD  CONSTRAINT [caipi_AvailablePaymentMethodsPerSuppliers_caipi_suppliers_FK] FOREIGN KEY([supplierId])
REFERENCES [dbo].[caipi_suppliers] ([idSupplier])
GO
ALTER TABLE [dbo].[caipi_AvailablePaymentMethodsPerSuppliers] CHECK CONSTRAINT [caipi_AvailablePaymentMethodsPerSuppliers_caipi_suppliers_FK]
GO
ALTER TABLE [dbo].[caipi_AvailablePaymentMethodsPerSuppliers]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_AvailablePaymentMethodsPerSuppliers_caipi_availablePaymentMethods] FOREIGN KEY([paymentMethodId])
REFERENCES [dbo].[caipi_availablePaymentMethods] ([paymentMethodId])
GO
ALTER TABLE [dbo].[caipi_AvailablePaymentMethodsPerSuppliers] CHECK CONSTRAINT [FK_caipi_AvailablePaymentMethodsPerSuppliers_caipi_availablePaymentMethods]
GO
ALTER TABLE [dbo].[caipi_AvailiablePaymentMethodsPerUser]  WITH NOCHECK ADD  CONSTRAINT [caipi_AvailiablePaymentMethodsPerUser_caipi_users_FK] FOREIGN KEY([idUser])
REFERENCES [dbo].[caipi_users] ([userid])
GO
ALTER TABLE [dbo].[caipi_AvailiablePaymentMethodsPerUser] CHECK CONSTRAINT [caipi_AvailiablePaymentMethodsPerUser_caipi_users_FK]
GO
ALTER TABLE [dbo].[caipi_AvailiablePaymentMethodsPerUser]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_AvailiablePaymentMethodsPerUser_caipi_availablePaymentMethods] FOREIGN KEY([paymentMethodId])
REFERENCES [dbo].[caipi_availablePaymentMethods] ([paymentMethodId])
GO
ALTER TABLE [dbo].[caipi_AvailiablePaymentMethodsPerUser] CHECK CONSTRAINT [FK_caipi_AvailiablePaymentMethodsPerUser_caipi_availablePaymentMethods]
GO
ALTER TABLE [dbo].[caipi_cities]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_cities_caipi_states] FOREIGN KEY([stateId])
REFERENCES [dbo].[caipi_states] ([stateId])
GO
ALTER TABLE [dbo].[caipi_cities] CHECK CONSTRAINT [FK_caipi_cities_caipi_states]
GO
ALTER TABLE [dbo].[caipi_contactInfoPerSupplier]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_contactInfoPerSupplier_caipi_contactInfoType] FOREIGN KEY([contactInfoTypeId])
REFERENCES [dbo].[caipi_contactInfoType] ([conatctInfoTypeId])
GO
ALTER TABLE [dbo].[caipi_contactInfoPerSupplier] CHECK CONSTRAINT [FK_caipi_contactInfoPerSupplier_caipi_contactInfoType]
GO
ALTER TABLE [dbo].[caipi_contactInfoPerSupplier]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_contactInfoPerSupplier_caipi_suppliers] FOREIGN KEY([idSupplier])
REFERENCES [dbo].[caipi_suppliers] ([idSupplier])
GO
ALTER TABLE [dbo].[caipi_contactInfoPerSupplier] CHECK CONSTRAINT [FK_caipi_contactInfoPerSupplier_caipi_suppliers]
GO
ALTER TABLE [dbo].[caipi_contactInfoPerUsers]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_contactInfoPerUser_caipi_contactInfoType] FOREIGN KEY([contactInfoTypeId])
REFERENCES [dbo].[caipi_contactInfoType] ([conatctInfoTypeId])
GO
ALTER TABLE [dbo].[caipi_contactInfoPerUsers] CHECK CONSTRAINT [FK_caipi_contactInfoPerUser_caipi_contactInfoType]
GO
ALTER TABLE [dbo].[caipi_contactInfoPerUsers]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_contactInfoPerUser_caipi_users] FOREIGN KEY([userid])
REFERENCES [dbo].[caipi_users] ([userid])
GO
ALTER TABLE [dbo].[caipi_contactInfoPerUsers] CHECK CONSTRAINT [FK_caipi_contactInfoPerUser_caipi_users]
GO
ALTER TABLE [dbo].[caipi_ExchangeRates]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_ExchangeRates_caipi_currencies1] FOREIGN KEY([currencyId])
REFERENCES [dbo].[caipi_currencies] ([currencyId])
GO
ALTER TABLE [dbo].[caipi_ExchangeRates] CHECK CONSTRAINT [FK_caipi_ExchangeRates_caipi_currencies1]
GO
ALTER TABLE [dbo].[caipi_logs]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_qrLogs_caipi_logSeverity] FOREIGN KEY([logSeverityId])
REFERENCES [dbo].[caipi_logSeverity] ([logSeverityId])
GO
ALTER TABLE [dbo].[caipi_logs] CHECK CONSTRAINT [FK_caipi_qrLogs_caipi_logSeverity]
GO
ALTER TABLE [dbo].[caipi_logs]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_qrLogs_caipi_logsSources] FOREIGN KEY([logSourceId])
REFERENCES [dbo].[caipi_logsSources] ([logSourceId])
GO
ALTER TABLE [dbo].[caipi_logs] CHECK CONSTRAINT [FK_caipi_qrLogs_caipi_logsSources]
GO
ALTER TABLE [dbo].[caipi_logs]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_qrLogs_caipi_logTypes] FOREIGN KEY([logTypeId])
REFERENCES [dbo].[caipi_logTypes] ([logTypeId])
GO
ALTER TABLE [dbo].[caipi_logs] CHECK CONSTRAINT [FK_caipi_qrLogs_caipi_logTypes]
GO
ALTER TABLE [dbo].[caipi_mediaAgreements]  WITH NOCHECK ADD  CONSTRAINT [caipi_mediaAgreements_caipi_agreementTerms_FK] FOREIGN KEY([idAgreementTerms])
REFERENCES [dbo].[caipi_agreementTerms] ([idagreementTerm])
GO
ALTER TABLE [dbo].[caipi_mediaAgreements] CHECK CONSTRAINT [caipi_mediaAgreements_caipi_agreementTerms_FK]
GO
ALTER TABLE [dbo].[caipi_mediaAgreements]  WITH NOCHECK ADD  CONSTRAINT [caipi_mediaAgreements_caipi_mediaFiles_FK] FOREIGN KEY([idMediaFile])
REFERENCES [dbo].[caipi_mediaFiles] ([idmediaFile])
GO
ALTER TABLE [dbo].[caipi_mediaAgreements] CHECK CONSTRAINT [caipi_mediaAgreements_caipi_mediaFiles_FK]
GO
ALTER TABLE [dbo].[caipi_mediaFiles]  WITH NOCHECK ADD  CONSTRAINT [FK__caipi_med__idmed__7755B73D] FOREIGN KEY([idmediaFileType])
REFERENCES [dbo].[caipi_mediaFileType] ([idmediaFileType])
GO
ALTER TABLE [dbo].[caipi_mediaFiles] CHECK CONSTRAINT [FK__caipi_med__idmed__7755B73D]
GO
ALTER TABLE [dbo].[caipi_MediaFilesPerPlan]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_MediaFilesPerPlan_caipi_mediaFiles] FOREIGN KEY([idmediaFile])
REFERENCES [dbo].[caipi_mediaFiles] ([idmediaFile])
GO
ALTER TABLE [dbo].[caipi_MediaFilesPerPlan] CHECK CONSTRAINT [FK_caipi_MediaFilesPerPlan_caipi_mediaFiles]
GO
ALTER TABLE [dbo].[caipi_MediaFilesPerPlan]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_MediaFilesPerPlan_caipi_plans] FOREIGN KEY([idPlan])
REFERENCES [dbo].[caipi_plans] ([idPlan])
GO
ALTER TABLE [dbo].[caipi_MediaFilesPerPlan] CHECK CONSTRAINT [FK_caipi_MediaFilesPerPlan_caipi_plans]
GO
ALTER TABLE [dbo].[caipi_member_permissions]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_member_permissions_members] FOREIGN KEY([memberid])
REFERENCES [dbo].[caipi_members] ([memberid])
GO
ALTER TABLE [dbo].[caipi_member_permissions] CHECK CONSTRAINT [FK_caipi_member_permissions_members]
GO
ALTER TABLE [dbo].[caipi_member_permissions]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_member_permissions_permission_types] FOREIGN KEY([permission_typeid])
REFERENCES [dbo].[caipi_permission_types] ([permission_typeid])
GO
ALTER TABLE [dbo].[caipi_member_permissions] CHECK CONSTRAINT [FK_caipi_member_permissions_permission_types]
GO
ALTER TABLE [dbo].[caipi_members]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_members_subscription] FOREIGN KEY([subscriptionid])
REFERENCES [dbo].[caipi_subscriptions] ([subscriptionid])
GO
ALTER TABLE [dbo].[caipi_members] CHECK CONSTRAINT [FK_caipi_members_subscription]
GO
ALTER TABLE [dbo].[caipi_members]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_members_users] FOREIGN KEY([userid])
REFERENCES [dbo].[caipi_users] ([userid])
GO
ALTER TABLE [dbo].[caipi_members] CHECK CONSTRAINT [FK_caipi_members_users]
GO
ALTER TABLE [dbo].[caipi_memberSettings]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_member_settings_members] FOREIGN KEY([memberid])
REFERENCES [dbo].[caipi_members] ([memberid])
GO
ALTER TABLE [dbo].[caipi_memberSettings] CHECK CONSTRAINT [FK_caipi_member_settings_members]
GO
ALTER TABLE [dbo].[caipi_memberSettings]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_member_settings_setting_types] FOREIGN KEY([settingTypeid])
REFERENCES [dbo].[caipi_memberSettingTypes] ([setting_typeid])
GO
ALTER TABLE [dbo].[caipi_memberSettings] CHECK CONSTRAINT [FK_caipi_member_settings_setting_types]
GO
ALTER TABLE [dbo].[caipi_payments]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_payments_caipi_availablePaymentMethods] FOREIGN KEY([paymentMethodId])
REFERENCES [dbo].[caipi_availablePaymentMethods] ([paymentMethodId])
GO
ALTER TABLE [dbo].[caipi_payments] CHECK CONSTRAINT [FK_caipi_payments_caipi_availablePaymentMethods]
GO
ALTER TABLE [dbo].[caipi_payments]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_payments_caipi_paymentMethods] FOREIGN KEY([methodId])
REFERENCES [dbo].[caipi_paymentMethods] ([methodId])
GO
ALTER TABLE [dbo].[caipi_payments] CHECK CONSTRAINT [FK_caipi_payments_caipi_paymentMethods]
GO
ALTER TABLE [dbo].[caipi_payments]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_payments_caipi_schedules] FOREIGN KEY([scheduleId])
REFERENCES [dbo].[caipi_schedules] ([scheduleId])
GO
ALTER TABLE [dbo].[caipi_payments] CHECK CONSTRAINT [FK_caipi_payments_caipi_schedules]
GO
ALTER TABLE [dbo].[caipi_payments]  WITH CHECK ADD  CONSTRAINT [FK_caipi_payments_caipi_users] FOREIGN KEY([userId])
REFERENCES [dbo].[caipi_users] ([userid])
GO
ALTER TABLE [dbo].[caipi_payments] CHECK CONSTRAINT [FK_caipi_payments_caipi_users]
GO
ALTER TABLE [dbo].[caipi_payments]  WITH CHECK ADD  CONSTRAINT [FK_caipi_payments_caipi_users1] FOREIGN KEY([personId])
REFERENCES [dbo].[caipi_users] ([userid])
GO
ALTER TABLE [dbo].[caipi_payments] CHECK CONSTRAINT [FK_caipi_payments_caipi_users1]
GO
ALTER TABLE [dbo].[caipi_plans]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_plans_caipi_planTypes] FOREIGN KEY([idplanTypes])
REFERENCES [dbo].[caipi_planTypes] ([idplanTypes])
GO
ALTER TABLE [dbo].[caipi_plans] CHECK CONSTRAINT [FK_caipi_plans_caipi_planTypes]
GO
ALTER TABLE [dbo].[caipi_plansLimits]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_plansLimits_caipi_measureUnits] FOREIGN KEY([idMeasureUnit])
REFERENCES [dbo].[caipi_measureUnits] ([idMeasureUnit])
GO
ALTER TABLE [dbo].[caipi_plansLimits] CHECK CONSTRAINT [FK_caipi_plansLimits_caipi_measureUnits]
GO
ALTER TABLE [dbo].[caipi_plansLimits]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_plansLimits_caipi_members] FOREIGN KEY([idMember])
REFERENCES [dbo].[caipi_members] ([memberid])
GO
ALTER TABLE [dbo].[caipi_plansLimits] CHECK CONSTRAINT [FK_caipi_plansLimits_caipi_members]
GO
ALTER TABLE [dbo].[caipi_plansLimits]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_plansLimits_caipi_plans] FOREIGN KEY([idPlans])
REFERENCES [dbo].[caipi_plans] ([idPlan])
GO
ALTER TABLE [dbo].[caipi_plansLimits] CHECK CONSTRAINT [FK_caipi_plansLimits_caipi_plans]
GO
ALTER TABLE [dbo].[caipi_redemptions]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_redemptions_caipi_plans] FOREIGN KEY([idPlan])
REFERENCES [dbo].[caipi_plans] ([idPlan])
GO
ALTER TABLE [dbo].[caipi_redemptions] CHECK CONSTRAINT [FK_caipi_redemptions_caipi_plans]
GO
ALTER TABLE [dbo].[caipi_redemptions]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_redemptions_caipi_redemptionSubType] FOREIGN KEY([idRedemptionSubType])
REFERENCES [dbo].[caipi_redemptionSubType] ([idRedemptionSubType])
GO
ALTER TABLE [dbo].[caipi_redemptions] CHECK CONSTRAINT [FK_caipi_redemptions_caipi_redemptionSubType]
GO
ALTER TABLE [dbo].[caipi_redemptions]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_redemptions_caipi_services] FOREIGN KEY([idService])
REFERENCES [dbo].[caipi_services] ([serviceId])
GO
ALTER TABLE [dbo].[caipi_redemptions] CHECK CONSTRAINT [FK_caipi_redemptions_caipi_services]
GO
ALTER TABLE [dbo].[caipi_redemptions]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_redemptions_caipi_suppliers] FOREIGN KEY([idSupplier])
REFERENCES [dbo].[caipi_suppliers] ([idSupplier])
GO
ALTER TABLE [dbo].[caipi_redemptions] CHECK CONSTRAINT [FK_caipi_redemptions_caipi_suppliers]
GO
ALTER TABLE [dbo].[caipi_redemptions]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_redemptions_caipi_users] FOREIGN KEY([idUser])
REFERENCES [dbo].[caipi_users] ([userid])
GO
ALTER TABLE [dbo].[caipi_redemptions] CHECK CONSTRAINT [FK_caipi_redemptions_caipi_users]
GO
ALTER TABLE [dbo].[caipi_redemptionTransactions]  WITH NOCHECK ADD  CONSTRAINT [caipi_redemptionTransactions_caipi_modules_FK] FOREIGN KEY([idModule])
REFERENCES [dbo].[caipi_modules] ([moduleId])
GO
ALTER TABLE [dbo].[caipi_redemptionTransactions] CHECK CONSTRAINT [caipi_redemptionTransactions_caipi_modules_FK]
GO
ALTER TABLE [dbo].[caipi_redemptionTransactions]  WITH NOCHECK ADD  CONSTRAINT [caipi_redemptionTransactions_caipi_RedemptionTransactionTypes_FK] FOREIGN KEY([idRedemptionTransactionTypes])
REFERENCES [dbo].[caipi_RedemptionTransactionTypes] ([idRedemptionTransactionType])
GO
ALTER TABLE [dbo].[caipi_redemptionTransactions] CHECK CONSTRAINT [caipi_redemptionTransactions_caipi_RedemptionTransactionTypes_FK]
GO
ALTER TABLE [dbo].[caipi_redemptionTransactions]  WITH NOCHECK ADD  CONSTRAINT [caipi_redemptionTransactions_caipi_users_FK] FOREIGN KEY([idUser])
REFERENCES [dbo].[caipi_users] ([userid])
GO
ALTER TABLE [dbo].[caipi_redemptionTransactions] CHECK CONSTRAINT [caipi_redemptionTransactions_caipi_users_FK]
GO
ALTER TABLE [dbo].[caipi_redemptionTransactions]  WITH NOCHECK ADD  CONSTRAINT [caipi_redemptionTransactions_caipi_users_FK_1] FOREIGN KEY([idPerson])
REFERENCES [dbo].[caipi_users] ([userid])
GO
ALTER TABLE [dbo].[caipi_redemptionTransactions] CHECK CONSTRAINT [caipi_redemptionTransactions_caipi_users_FK_1]
GO
ALTER TABLE [dbo].[caipi_redemptionTransactions]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_redemptionTransactions_caipi_agreementTerms] FOREIGN KEY([idAgreementTerm])
REFERENCES [dbo].[caipi_agreementTerms] ([idagreementTerm])
GO
ALTER TABLE [dbo].[caipi_redemptionTransactions] CHECK CONSTRAINT [FK_caipi_redemptionTransactions_caipi_agreementTerms]
GO
ALTER TABLE [dbo].[caipi_redemptionTransactions]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_redemptionTransactions_caipi_redemptions] FOREIGN KEY([idRedemption])
REFERENCES [dbo].[caipi_redemptions] ([idRedemptions])
GO
ALTER TABLE [dbo].[caipi_redemptionTransactions] CHECK CONSTRAINT [FK_caipi_redemptionTransactions_caipi_redemptions]
GO
ALTER TABLE [dbo].[caipi_reminders]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_payment_reminders_notificationmethods] FOREIGN KEY([notificationmethods_notificationmethodid])
REFERENCES [dbo].[caipi_notificationmethods] ([notificationmethodid])
GO
ALTER TABLE [dbo].[caipi_reminders] CHECK CONSTRAINT [FK_caipi_payment_reminders_notificationmethods]
GO
ALTER TABLE [dbo].[caipi_reminders]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_payment_reminders_payment_remindertypes] FOREIGN KEY([remindertypeid])
REFERENCES [dbo].[caipi_remindertypes] ([remindertypeid])
GO
ALTER TABLE [dbo].[caipi_reminders] CHECK CONSTRAINT [FK_caipi_payment_reminders_payment_remindertypes]
GO
ALTER TABLE [dbo].[caipi_reminders]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_reminders_caipi_users] FOREIGN KEY([userid])
REFERENCES [dbo].[caipi_users] ([userid])
GO
ALTER TABLE [dbo].[caipi_reminders] CHECK CONSTRAINT [FK_caipi_reminders_caipi_users]
GO
ALTER TABLE [dbo].[caipi_rolesRestrictions]  WITH NOCHECK ADD  CONSTRAINT [caipi_rolesRestrictions_caipi_restrictions_FK] FOREIGN KEY([restrictionId])
REFERENCES [dbo].[caipi_restrictions] ([restrictionId])
GO
ALTER TABLE [dbo].[caipi_rolesRestrictions] CHECK CONSTRAINT [caipi_rolesRestrictions_caipi_restrictions_FK]
GO
ALTER TABLE [dbo].[caipi_rolesRestrictions]  WITH NOCHECK ADD  CONSTRAINT [caipi_rolesRestrictions_caipi_roles_FK] FOREIGN KEY([roleId])
REFERENCES [dbo].[caipi_roles] ([roleId])
GO
ALTER TABLE [dbo].[caipi_rolesRestrictions] CHECK CONSTRAINT [caipi_rolesRestrictions_caipi_roles_FK]
GO
ALTER TABLE [dbo].[caipi_scheduleDetails]  WITH NOCHECK ADD  CONSTRAINT [caipi_scheduleDetails_caipi_schedules_FK] FOREIGN KEY([scheduleId])
REFERENCES [dbo].[caipi_schedules] ([scheduleId])
GO
ALTER TABLE [dbo].[caipi_scheduleDetails] CHECK CONSTRAINT [caipi_scheduleDetails_caipi_schedules_FK]
GO
ALTER TABLE [dbo].[caipi_services]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_services_caipi_mediaFileType] FOREIGN KEY([image])
REFERENCES [dbo].[caipi_mediaFiles] ([idmediaFile])
GO
ALTER TABLE [dbo].[caipi_services] CHECK CONSTRAINT [FK_caipi_services_caipi_mediaFileType]
GO
ALTER TABLE [dbo].[caipi_services]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_services_caipi_serviceTypes] FOREIGN KEY([idServiceType])
REFERENCES [dbo].[caipi_serviceTypes] ([idServiceType])
GO
ALTER TABLE [dbo].[caipi_services] CHECK CONSTRAINT [FK_caipi_services_caipi_serviceTypes]
GO
ALTER TABLE [dbo].[caipi_states]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_states_caipi_countries] FOREIGN KEY([countryId])
REFERENCES [dbo].[caipi_countries] ([countryId])
GO
ALTER TABLE [dbo].[caipi_states] CHECK CONSTRAINT [FK_caipi_states_caipi_countries]
GO
ALTER TABLE [dbo].[caipi_subscription_freeze]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_subscription_freeze_caipi_subscriptions] FOREIGN KEY([subscriptionid])
REFERENCES [dbo].[caipi_subscriptions] ([subscriptionid])
GO
ALTER TABLE [dbo].[caipi_subscription_freeze] CHECK CONSTRAINT [FK_caipi_subscription_freeze_caipi_subscriptions]
GO
ALTER TABLE [dbo].[caipi_subscription_payments]  WITH NOCHECK ADD  CONSTRAINT [caipi_subscription_payments_caipi_payments_FK] FOREIGN KEY([idPayment])
REFERENCES [dbo].[caipi_payments] ([paymentId])
GO
ALTER TABLE [dbo].[caipi_subscription_payments] CHECK CONSTRAINT [caipi_subscription_payments_caipi_payments_FK]
GO
ALTER TABLE [dbo].[caipi_subscription_payments]  WITH NOCHECK ADD  CONSTRAINT [caipi_subscription_payments_caipi_subscriptions_FK] FOREIGN KEY([idSuscription])
REFERENCES [dbo].[caipi_subscriptions] ([subscriptionid])
GO
ALTER TABLE [dbo].[caipi_subscription_payments] CHECK CONSTRAINT [caipi_subscription_payments_caipi_subscriptions_FK]
GO
ALTER TABLE [dbo].[caipi_subscription_settings]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_subscription_settings_caipi_subscriptions] FOREIGN KEY([subscriptionid])
REFERENCES [dbo].[caipi_subscriptions] ([subscriptionid])
GO
ALTER TABLE [dbo].[caipi_subscription_settings] CHECK CONSTRAINT [FK_caipi_subscription_settings_caipi_subscriptions]
GO
ALTER TABLE [dbo].[caipi_subscription_settings]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_subscription_settings_caipi_suscriptionSettingTypes] FOREIGN KEY([sucriptionSettingTypeId])
REFERENCES [dbo].[caipi_suscriptionSettingTypes] ([sucriptionSettingTypeId])
GO
ALTER TABLE [dbo].[caipi_subscription_settings] CHECK CONSTRAINT [FK_caipi_subscription_settings_caipi_suscriptionSettingTypes]
GO
ALTER TABLE [dbo].[caipi_subscription_transfer]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_subscription_transfer_caipi_subscriptions] FOREIGN KEY([subscriptionid])
REFERENCES [dbo].[caipi_subscriptions] ([subscriptionid])
GO
ALTER TABLE [dbo].[caipi_subscription_transfer] CHECK CONSTRAINT [FK_caipi_subscription_transfer_caipi_subscriptions]
GO
ALTER TABLE [dbo].[caipi_subscription_transfer]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_subscription_transfer_caipi_users] FOREIGN KEY([subscriptionid])
REFERENCES [dbo].[caipi_users] ([userid])
GO
ALTER TABLE [dbo].[caipi_subscription_transfer] CHECK CONSTRAINT [FK_caipi_subscription_transfer_caipi_users]
GO
ALTER TABLE [dbo].[caipi_subscriptions]  WITH NOCHECK ADD  CONSTRAINT [caipi_subscriptions_caipi_plans_FK] FOREIGN KEY([idPlan])
REFERENCES [dbo].[caipi_plans] ([idPlan])
GO
ALTER TABLE [dbo].[caipi_subscriptions] CHECK CONSTRAINT [caipi_subscriptions_caipi_plans_FK]
GO
ALTER TABLE [dbo].[caipi_subscriptions]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_subscriptions_caipi_schedules] FOREIGN KEY([scheduleId])
REFERENCES [dbo].[caipi_schedules] ([scheduleId])
GO
ALTER TABLE [dbo].[caipi_subscriptions] CHECK CONSTRAINT [FK_caipi_subscriptions_caipi_schedules]
GO
ALTER TABLE [dbo].[caipi_subscriptions]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_subscriptions_caipi_subscription_status] FOREIGN KEY([statusid])
REFERENCES [dbo].[caipi_subscription_status] ([statusid])
GO
ALTER TABLE [dbo].[caipi_subscriptions] CHECK CONSTRAINT [FK_caipi_subscriptions_caipi_subscription_status]
GO
ALTER TABLE [dbo].[caipi_subscriptions]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_subscriptions_suscription_type] FOREIGN KEY([suscription_typeid])
REFERENCES [dbo].[caipi_subscription_types] ([suscription_typeid])
GO
ALTER TABLE [dbo].[caipi_subscriptions] CHECK CONSTRAINT [FK_caipi_subscriptions_suscription_type]
GO
ALTER TABLE [dbo].[caipi_subscriptions]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_subscriptions_users] FOREIGN KEY([userid])
REFERENCES [dbo].[caipi_users] ([userid])
GO
ALTER TABLE [dbo].[caipi_subscriptions] CHECK CONSTRAINT [FK_caipi_subscriptions_users]
GO
ALTER TABLE [dbo].[caipi_supplierBranches]  WITH NOCHECK ADD  CONSTRAINT [caipi_supplierBranches_caipi_suppliers_FK] FOREIGN KEY([supplierId])
REFERENCES [dbo].[caipi_suppliers] ([idSupplier])
GO
ALTER TABLE [dbo].[caipi_supplierBranches] CHECK CONSTRAINT [caipi_supplierBranches_caipi_suppliers_FK]
GO
ALTER TABLE [dbo].[caipi_supplierBranches]  WITH NOCHECK ADD  CONSTRAINT [caipi_supplierBranches_caipi_typesBranch_FK] FOREIGN KEY([idTypesBranch])
REFERENCES [dbo].[caipi_typesBranch] ([idTypesBranch])
GO
ALTER TABLE [dbo].[caipi_supplierBranches] CHECK CONSTRAINT [caipi_supplierBranches_caipi_typesBranch_FK]
GO
ALTER TABLE [dbo].[caipi_suppliers]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_suppliers_caipi_mediaFiles] FOREIGN KEY([idmediaFiles])
REFERENCES [dbo].[caipi_mediaFiles] ([idmediaFile])
GO
ALTER TABLE [dbo].[caipi_suppliers] CHECK CONSTRAINT [FK_caipi_suppliers_caipi_mediaFiles]
GO
ALTER TABLE [dbo].[caipi_suppliers]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_suppliers_caipi_mediaFiles1] FOREIGN KEY([idmediaFiles])
REFERENCES [dbo].[caipi_mediaFiles] ([idmediaFile])
GO
ALTER TABLE [dbo].[caipi_suppliers] CHECK CONSTRAINT [FK_caipi_suppliers_caipi_mediaFiles1]
GO
ALTER TABLE [dbo].[caipi_suppliers]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_suppliers_caipi_supplierCategories] FOREIGN KEY([idsupplierCategories])
REFERENCES [dbo].[caipi_supplierCategories] ([idsupplierCategories])
GO
ALTER TABLE [dbo].[caipi_suppliers] CHECK CONSTRAINT [FK_caipi_suppliers_caipi_supplierCategories]
GO
ALTER TABLE [dbo].[caipi_transactions]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_transactions_caipi_currencies] FOREIGN KEY([currencyId])
REFERENCES [dbo].[caipi_currencies] ([currencyId])
GO
ALTER TABLE [dbo].[caipi_transactions] CHECK CONSTRAINT [FK_caipi_transactions_caipi_currencies]
GO
ALTER TABLE [dbo].[caipi_transactions]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_transactions_caipi_ExchangeRates] FOREIGN KEY([exchangeRateId])
REFERENCES [dbo].[caipi_ExchangeRates] ([exchangeRateId])
GO
ALTER TABLE [dbo].[caipi_transactions] CHECK CONSTRAINT [FK_caipi_transactions_caipi_ExchangeRates]
GO
ALTER TABLE [dbo].[caipi_transactions]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_transactions_caipi_payments] FOREIGN KEY([paymentId])
REFERENCES [dbo].[caipi_payments] ([paymentId])
GO
ALTER TABLE [dbo].[caipi_transactions] CHECK CONSTRAINT [FK_caipi_transactions_caipi_payments]
GO
ALTER TABLE [dbo].[caipi_transactions]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_transactions_caipi_transSubTypes] FOREIGN KEY([transactionSubTypeId])
REFERENCES [dbo].[caipi_transSubTypes] ([transactionSubTypeId])
GO
ALTER TABLE [dbo].[caipi_transactions] CHECK CONSTRAINT [FK_caipi_transactions_caipi_transSubTypes]
GO
ALTER TABLE [dbo].[caipi_transactions]  WITH NOCHECK ADD  CONSTRAINT [FK_caipi_transactions_caipi_transTypes] FOREIGN KEY([transTypeId])
REFERENCES [dbo].[caipi_transTypes] ([transTypeId])
GO
ALTER TABLE [dbo].[caipi_transactions] CHECK CONSTRAINT [FK_caipi_transactions_caipi_transTypes]
GO
ALTER TABLE [dbo].[caipi_userRoles]  WITH NOCHECK ADD  CONSTRAINT [caipi_userRoles_caipi_roles_FK] FOREIGN KEY([roleId])
REFERENCES [dbo].[caipi_roles] ([roleId])
GO
ALTER TABLE [dbo].[caipi_userRoles] CHECK CONSTRAINT [caipi_userRoles_caipi_roles_FK]
GO
ALTER TABLE [dbo].[caipi_userRoles]  WITH NOCHECK ADD  CONSTRAINT [caipi_userRoles_caipi_users_FK] FOREIGN KEY([userId])
REFERENCES [dbo].[caipi_users] ([userid])
GO
ALTER TABLE [dbo].[caipi_userRoles] CHECK CONSTRAINT [caipi_userRoles_caipi_users_FK]
GO
ALTER TABLE [dbo].[caipi_usersRestrictions]  WITH NOCHECK ADD  CONSTRAINT [caipi_usersRestrictions_caipi_restrictions_FK] FOREIGN KEY([restrictionId])
REFERENCES [dbo].[caipi_restrictions] ([restrictionId])
GO
ALTER TABLE [dbo].[caipi_usersRestrictions] CHECK CONSTRAINT [caipi_usersRestrictions_caipi_restrictions_FK]
GO
ALTER TABLE [dbo].[caipi_usersRestrictions]  WITH NOCHECK ADD  CONSTRAINT [caipi_usersRestrictions_caipi_users_FK] FOREIGN KEY([userId])
REFERENCES [dbo].[caipi_users] ([userid])
GO
ALTER TABLE [dbo].[caipi_usersRestrictions] CHECK CONSTRAINT [caipi_usersRestrictions_caipi_users_FK]
GO
