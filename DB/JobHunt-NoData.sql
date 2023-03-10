USE [master]
GO
/****** Object:  Database [JobHunt]    Script Date: 06-05-2019 14:49:26 ******/
CREATE DATABASE [JobHunt]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JobHunt', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\JobHunt.mdf' , SIZE = 5184KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'JobHunt_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\JobHunt_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [JobHunt] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JobHunt].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JobHunt] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JobHunt] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JobHunt] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JobHunt] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JobHunt] SET ARITHABORT OFF 
GO
ALTER DATABASE [JobHunt] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [JobHunt] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [JobHunt] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JobHunt] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JobHunt] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JobHunt] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JobHunt] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JobHunt] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JobHunt] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JobHunt] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JobHunt] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JobHunt] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JobHunt] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JobHunt] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JobHunt] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JobHunt] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JobHunt] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JobHunt] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JobHunt] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JobHunt] SET  MULTI_USER 
GO
ALTER DATABASE [JobHunt] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JobHunt] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JobHunt] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JobHunt] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [JobHunt]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Advertisement]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advertisement](
	[AdvertisementId] [int] IDENTITY(1,1) NOT NULL,
	[AdStartDate] [date] NOT NULL,
	[AdEndDate] [date] NOT NULL,
	[AdPosition] [int] NOT NULL,
	[AdStatus] [int] NOT NULL,
	[AdName] [nvarchar](200) NOT NULL,
	[AdPhone] [nvarchar](20) NOT NULL,
	[AdEmail] [nvarchar](100) NOT NULL,
	[AdAddress] [ntext] NOT NULL,
	[AdLink] [ntext] NOT NULL,
	[AdImage] [ntext] NOT NULL,
 CONSTRAINT [PK_Advertisement] PRIMARY KEY CLUSTERED 
(
	[AdvertisementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidate](
	[CandidateId] [int] IDENTITY(1,1) NOT NULL,
	[Cdd_AspNetUserId] [nvarchar](128) NULL,
	[CP_ProfessionId] [int] NULL,
	[CP_LevelId] [int] NULL,
	[CP_ExperienceId] [int] NULL,
	[CP_SalaryId] [int] NULL,
	[CP_WorkTypeId] [int] NULL,
	[CddUserName] [nvarchar](50) NULL,
	[CddPassword] [nvarchar](max) NULL,
	[CddFullName] [nvarchar](255) NULL,
	[CPAvatar] [nvarchar](255) NULL,
	[CddSex] [int] NULL,
	[CddAbout] [ntext] NULL,
	[CddAddress] [nvarchar](255) NULL,
	[CPPosition] [nvarchar](255) NULL,
	[CPExperience] [ntext] NULL,
	[CPSpeciality] [ntext] NULL,
	[CPPostDate] [datetime] NULL,
	[CPStatus] [int] NULL,
	[Cdd_CityId] [int] NULL,
	[CddPhone] [nvarchar](20) NULL,
	[CddEmail] [nvarchar](255) NULL,
	[CddAge] [int] NULL,
	[CddRegisterDate] [datetime] NULL,
	[CddFacebook] [nvarchar](500) NULL,
	[CddGoogle] [nvarchar](500) NULL,
	[Cdd_DistrictId] [int] NULL,
	[Cdd_WardId] [int] NULL,
	[CddPathCV] [nvarchar](1000) NULL,
	[CddDescribeCV] [ntext] NULL,
	[CddBirthday] [datetime] NULL,
 CONSTRAINT [PK__Candidat__DF539B9CA9CB417F] PRIMARY KEY CLUSTERED 
(
	[CandidateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CandidatePostResume]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidatePostResume](
	[CandidatePostResumeId] [int] IDENTITY(1,1) NOT NULL,
	[CPR_CandidateId] [int] NULL,
	[CPR_RecruitJobId] [int] NULL,
	[CPRPostDate] [datetime] NULL,
	[CPRStatus] [bit] NULL,
	[CddPhone] [nvarchar](20) NULL,
	[CddPathFileCV] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[CandidatePostResumeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Career]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Career](
	[CareerId] [int] IDENTITY(1,1) NOT NULL,
	[CareerName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CareerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[City]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompanySize]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanySize](
	[CompanySizeId] [int] IDENTITY(1,1) NOT NULL,
	[CSMin] [int] NULL,
	[CSMax] [int] NULL,
	[CSShow] [nvarchar](255) NULL,
 CONSTRAINT [PK_CompanySize] PRIMARY KEY CLUSTERED 
(
	[CompanySizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[District]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[DistrictId] [int] IDENTITY(1,1) NOT NULL,
	[DistrictName] [nvarchar](255) NULL,
	[DT_CityId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Experience]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Experience](
	[ExperienceId] [int] IDENTITY(1,1) NOT NULL,
	[EMin] [float] NULL,
	[EMax] [float] NULL,
	[EShow] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ExperienceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LevelInfo]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LevelInfo](
	[LevelInfoId] [int] IDENTITY(1,1) NOT NULL,
	[LIName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[LevelInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[New]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[New](
	[NewsId] [int] IDENTITY(1,1) NOT NULL,
	[NTitle] [nvarchar](250) NULL,
	[NQuote] [ntext] NULL,
	[NDetail] [nvarchar](max) NULL,
	[NPostDate] [datetime] NULL,
	[NPublicDate] [datetime] NULL,
	[NType] [int] NULL,
	[N_WebmasterInfoId] [int] NULL,
	[N_CategoryId] [int] NULL,
	[Nstatus] [int] NULL,
	[NAvatar] [ntext] NULL,
 CONSTRAINT [PK__New__954EBDF36DDFBCF5] PRIMARY KEY CLUSTERED 
(
	[NewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profession]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profession](
	[ProfessionId] [int] IDENTITY(1,1) NOT NULL,
	[PFCareerId] [int] NULL,
	[PFName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProfessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Recruit]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recruit](
	[RecruitId] [int] IDENTITY(1,1) NOT NULL,
	[RI_AspNetUserId] [nvarchar](128) NULL,
	[RIUserName] [nvarchar](50) NULL,
	[RIPassword] [nvarchar](max) NULL,
	[RIFullName] [nvarchar](255) NULL,
	[RIEmail] [nvarchar](255) NULL,
	[RICompanyName] [nvarchar](255) NULL,
	[RIAbout] [ntext] NULL,
	[RILogo] [nvarchar](255) NULL,
	[RIAddress] [ntext] NULL,
	[RIPhone] [nvarchar](20) NULL,
	[RIRegisterDate] [datetime] NULL,
	[RIStatus] [int] NULL,
	[RIWebsite] [nvarchar](255) NULL,
	[RI_CityId] [int] NULL,
	[RI_DistrictId] [int] NULL,
	[RI_WardId] [int] NULL,
	[FoundedYear] [datetime] NULL,
	[RI_CompanySizeId] [int] NULL,
	[RI_ProfessionId] [int] NULL,
	[RICoverImage] [ntext] NULL,
	[RIAvatar] [ntext] NULL,
 CONSTRAINT [PK__Recruit__6203B6DF87A11597] PRIMARY KEY CLUSTERED 
(
	[RecruitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RecruitJob]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecruitJob](
	[RecruitJobId] [int] IDENTITY(1,1) NOT NULL,
	[RJTitle] [nvarchar](500) NULL,
	[RJPosition] [nvarchar](255) NULL,
	[RJAddress] [nvarchar](500) NULL,
	[RJAmount] [int] NULL,
	[RJ_Describe] [ntext] NULL,
	[RJ_Require] [ntext] NULL,
	[RJBenefit] [ntext] NULL,
	[RJ_WorkPlace] [ntext] NULL,
	[RJPostDate] [datetime] NULL,
	[RJExpirationDate] [datetime] NULL,
	[RJEmailContact] [nvarchar](255) NULL,
	[RJNameContact] [nvarchar](255) NULL,
	[RJPhoneContact] [nvarchar](20) NULL,
	[RJGender] [int] NULL,
	[RJStatus] [int] NULL,
	[RJType] [int] NULL,
	[RJ_SalaryId] [int] NULL,
	[RJ_ExperienceId] [int] NULL,
	[RJ_RecruitId] [int] NULL,
	[RJCityId] [int] NULL,
	[RJDistrictId] [int] NULL,
	[RJ_WardId] [int] NULL,
	[RJ_ProfessionId] [int] NULL,
	[RJ_LevelId] [int] NULL,
	[RJ_WorkTypeId] [int] NULL,
	[RJCount] [int] NULL,
 CONSTRAINT [PK__RecruitJ__C54E11E8ACC336B9] PRIMARY KEY CLUSTERED 
(
	[RecruitJobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Salary]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salary](
	[SalaryId] [int] IDENTITY(1,1) NOT NULL,
	[SMin] [float] NULL,
	[SMax] [float] NULL,
	[SShow] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[SalaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SaveCandidate]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaveCandidate](
	[SaveCandidateId] [int] IDENTITY(1,1) NOT NULL,
	[SC_RecruitId] [int] NULL,
	[SC_CandidateId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SaveCandidateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SaveJob]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaveJob](
	[SaveJobId] [int] IDENTITY(1,1) NOT NULL,
	[SJ_CandidateId] [int] NULL,
	[SJ_RecruitJobId] [int] NULL,
	[SJStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[SaveJobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SignUpNewsletter]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SignUpNewsletter](
	[RegisterID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CheckNew] [bit] NOT NULL,
	[CheckPost] [bit] NOT NULL,
	[IdProfession] [int] NULL,
 CONSTRAINT [PK_SignUpNewsletter] PRIMARY KEY CLUSTERED 
(
	[RegisterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ward]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ward](
	[WardId] [int] IDENTITY(1,1) NOT NULL,
	[WardName] [nvarchar](255) NULL,
	[W_DistrictId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[WardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WebmasterInfo]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebmasterInfo](
	[WebmasterInfoId] [int] IDENTITY(1,1) NOT NULL,
	[WI_AspNetUserId] [nvarchar](128) NULL,
	[WIUserName] [nvarchar](50) NULL,
	[WIPassword] [nvarchar](max) NULL,
	[WIFullName] [nvarchar](255) NULL,
	[WIType] [int] NULL,
	[WIStatus] [int] NULL,
	[WIGender] [int] NULL,
	[WIBirthDay] [date] NULL,
	[WIDateStart] [datetime] NULL,
	[WIAddress] [ntext] NULL,
	[WIPosition] [int] NULL,
 CONSTRAINT [PK__Webmaste__931DBCE35162A001] PRIMARY KEY CLUSTERED 
(
	[WebmasterInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Website]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Website](
	[WebsiteId] [int] IDENTITY(1,1) NOT NULL,
	[WBanner] [ntext] NULL,
	[WFacebook] [nvarchar](255) NULL,
	[WYoutube] [nvarchar](255) NULL,
	[WEmail] [nvarchar](255) NULL,
	[WPhone] [nvarchar](20) NULL,
	[WBanner2] [ntext] NULL,
	[WBanner3] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[WebsiteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkType]    Script Date: 06-05-2019 14:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkType](
	[WorkTypeId] [int] IDENTITY(1,1) NOT NULL,
	[WTName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[WorkTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 06-05-2019 14:49:26 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 06-05-2019 14:49:26 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 06-05-2019 14:49:26 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 06-05-2019 14:49:26 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 06-05-2019 14:49:26 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 06-05-2019 14:49:26 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_Candidate_AspNetUsers] FOREIGN KEY([Cdd_AspNetUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_Candidate_AspNetUsers]
GO
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_Candidate_City] FOREIGN KEY([Cdd_CityId])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_Candidate_City]
GO
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_Candidate_District] FOREIGN KEY([Cdd_DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_Candidate_District]
GO
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_Candidate_Experience] FOREIGN KEY([CP_ExperienceId])
REFERENCES [dbo].[Experience] ([ExperienceId])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_Candidate_Experience]
GO
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_Candidate_LevelInfo] FOREIGN KEY([CP_LevelId])
REFERENCES [dbo].[LevelInfo] ([LevelInfoId])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_Candidate_LevelInfo]
GO
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_Candidate_Profession] FOREIGN KEY([CP_ProfessionId])
REFERENCES [dbo].[Profession] ([ProfessionId])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_Candidate_Profession]
GO
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_Candidate_Salary] FOREIGN KEY([CP_SalaryId])
REFERENCES [dbo].[Salary] ([SalaryId])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_Candidate_Salary]
GO
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_Candidate_Ward] FOREIGN KEY([Cdd_WardId])
REFERENCES [dbo].[Ward] ([WardId])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_Candidate_Ward]
GO
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_Candidate_WorkType] FOREIGN KEY([CP_WorkTypeId])
REFERENCES [dbo].[WorkType] ([WorkTypeId])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_Candidate_WorkType]
GO
ALTER TABLE [dbo].[CandidatePostResume]  WITH CHECK ADD  CONSTRAINT [FK_CandidatePostResume_Candidate] FOREIGN KEY([CPR_CandidateId])
REFERENCES [dbo].[Candidate] ([CandidateId])
GO
ALTER TABLE [dbo].[CandidatePostResume] CHECK CONSTRAINT [FK_CandidatePostResume_Candidate]
GO
ALTER TABLE [dbo].[CandidatePostResume]  WITH CHECK ADD  CONSTRAINT [FK_CandidatePostResume_RecruitJob] FOREIGN KEY([CPR_RecruitJobId])
REFERENCES [dbo].[RecruitJob] ([RecruitJobId])
GO
ALTER TABLE [dbo].[CandidatePostResume] CHECK CONSTRAINT [FK_CandidatePostResume_RecruitJob]
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_District__City] FOREIGN KEY([DT_CityId])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_District__City]
GO
ALTER TABLE [dbo].[New]  WITH CHECK ADD  CONSTRAINT [FK_New__Category] FOREIGN KEY([N_CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[New] CHECK CONSTRAINT [FK_New__Category]
GO
ALTER TABLE [dbo].[New]  WITH CHECK ADD  CONSTRAINT [FK_New__WebmasterInfo] FOREIGN KEY([N_WebmasterInfoId])
REFERENCES [dbo].[WebmasterInfo] ([WebmasterInfoId])
GO
ALTER TABLE [dbo].[New] CHECK CONSTRAINT [FK_New__WebmasterInfo]
GO
ALTER TABLE [dbo].[Profession]  WITH CHECK ADD  CONSTRAINT [FK_Profession__Career] FOREIGN KEY([PFCareerId])
REFERENCES [dbo].[Career] ([CareerId])
GO
ALTER TABLE [dbo].[Profession] CHECK CONSTRAINT [FK_Profession__Career]
GO
ALTER TABLE [dbo].[Recruit]  WITH CHECK ADD  CONSTRAINT [FK_Recruit_AspNetUsers] FOREIGN KEY([RI_AspNetUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Recruit] CHECK CONSTRAINT [FK_Recruit_AspNetUsers]
GO
ALTER TABLE [dbo].[Recruit]  WITH CHECK ADD  CONSTRAINT [FK_Recruit_City] FOREIGN KEY([RI_CityId])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[Recruit] CHECK CONSTRAINT [FK_Recruit_City]
GO
ALTER TABLE [dbo].[Recruit]  WITH CHECK ADD  CONSTRAINT [FK_Recruit_CompanySize] FOREIGN KEY([RI_CompanySizeId])
REFERENCES [dbo].[CompanySize] ([CompanySizeId])
GO
ALTER TABLE [dbo].[Recruit] CHECK CONSTRAINT [FK_Recruit_CompanySize]
GO
ALTER TABLE [dbo].[Recruit]  WITH CHECK ADD  CONSTRAINT [FK_Recruit_District] FOREIGN KEY([RI_DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[Recruit] CHECK CONSTRAINT [FK_Recruit_District]
GO
ALTER TABLE [dbo].[Recruit]  WITH CHECK ADD  CONSTRAINT [FK_Recruit_Profession] FOREIGN KEY([RI_ProfessionId])
REFERENCES [dbo].[Profession] ([ProfessionId])
GO
ALTER TABLE [dbo].[Recruit] CHECK CONSTRAINT [FK_Recruit_Profession]
GO
ALTER TABLE [dbo].[Recruit]  WITH CHECK ADD  CONSTRAINT [FK_Recruit_Ward] FOREIGN KEY([RI_WardId])
REFERENCES [dbo].[Ward] ([WardId])
GO
ALTER TABLE [dbo].[Recruit] CHECK CONSTRAINT [FK_Recruit_Ward]
GO
ALTER TABLE [dbo].[RecruitJob]  WITH CHECK ADD  CONSTRAINT [FK_RecruitJob__Recruit] FOREIGN KEY([RJ_RecruitId])
REFERENCES [dbo].[Recruit] ([RecruitId])
GO
ALTER TABLE [dbo].[RecruitJob] CHECK CONSTRAINT [FK_RecruitJob__Recruit]
GO
ALTER TABLE [dbo].[RecruitJob]  WITH CHECK ADD  CONSTRAINT [FK_RecruitJob_City] FOREIGN KEY([RJCityId])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[RecruitJob] CHECK CONSTRAINT [FK_RecruitJob_City]
GO
ALTER TABLE [dbo].[RecruitJob]  WITH CHECK ADD  CONSTRAINT [FK_RecruitJob_District] FOREIGN KEY([RJDistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[RecruitJob] CHECK CONSTRAINT [FK_RecruitJob_District]
GO
ALTER TABLE [dbo].[RecruitJob]  WITH CHECK ADD  CONSTRAINT [FK_RecruitJob_Experience] FOREIGN KEY([RJ_ExperienceId])
REFERENCES [dbo].[Experience] ([ExperienceId])
GO
ALTER TABLE [dbo].[RecruitJob] CHECK CONSTRAINT [FK_RecruitJob_Experience]
GO
ALTER TABLE [dbo].[RecruitJob]  WITH CHECK ADD  CONSTRAINT [FK_RecruitJob_LevelInfo] FOREIGN KEY([RJ_LevelId])
REFERENCES [dbo].[LevelInfo] ([LevelInfoId])
GO
ALTER TABLE [dbo].[RecruitJob] CHECK CONSTRAINT [FK_RecruitJob_LevelInfo]
GO
ALTER TABLE [dbo].[RecruitJob]  WITH CHECK ADD  CONSTRAINT [FK_RecruitJob_Profession] FOREIGN KEY([RJ_ProfessionId])
REFERENCES [dbo].[Profession] ([ProfessionId])
GO
ALTER TABLE [dbo].[RecruitJob] CHECK CONSTRAINT [FK_RecruitJob_Profession]
GO
ALTER TABLE [dbo].[RecruitJob]  WITH CHECK ADD  CONSTRAINT [FK_RecruitJob_Salary] FOREIGN KEY([RJ_SalaryId])
REFERENCES [dbo].[Salary] ([SalaryId])
GO
ALTER TABLE [dbo].[RecruitJob] CHECK CONSTRAINT [FK_RecruitJob_Salary]
GO
ALTER TABLE [dbo].[RecruitJob]  WITH CHECK ADD  CONSTRAINT [FK_RecruitJob_WorkType] FOREIGN KEY([RJ_WorkTypeId])
REFERENCES [dbo].[WorkType] ([WorkTypeId])
GO
ALTER TABLE [dbo].[RecruitJob] CHECK CONSTRAINT [FK_RecruitJob_WorkType]
GO
ALTER TABLE [dbo].[SaveCandidate]  WITH CHECK ADD  CONSTRAINT [FK_SaveCandidate__Recruit] FOREIGN KEY([SC_RecruitId])
REFERENCES [dbo].[Recruit] ([RecruitId])
GO
ALTER TABLE [dbo].[SaveCandidate] CHECK CONSTRAINT [FK_SaveCandidate__Recruit]
GO
ALTER TABLE [dbo].[SaveCandidate]  WITH CHECK ADD  CONSTRAINT [FK_SaveCandidate_Candidate] FOREIGN KEY([SC_CandidateId])
REFERENCES [dbo].[Candidate] ([CandidateId])
GO
ALTER TABLE [dbo].[SaveCandidate] CHECK CONSTRAINT [FK_SaveCandidate_Candidate]
GO
ALTER TABLE [dbo].[SaveJob]  WITH CHECK ADD  CONSTRAINT [FK_SaveJob_Candidate] FOREIGN KEY([SJ_CandidateId])
REFERENCES [dbo].[Candidate] ([CandidateId])
GO
ALTER TABLE [dbo].[SaveJob] CHECK CONSTRAINT [FK_SaveJob_Candidate]
GO
ALTER TABLE [dbo].[SaveJob]  WITH CHECK ADD  CONSTRAINT [FK_SaveJob_RecruitJob] FOREIGN KEY([SJ_RecruitJobId])
REFERENCES [dbo].[RecruitJob] ([RecruitJobId])
GO
ALTER TABLE [dbo].[SaveJob] CHECK CONSTRAINT [FK_SaveJob_RecruitJob]
GO
ALTER TABLE [dbo].[Ward]  WITH CHECK ADD  CONSTRAINT [FK_Ward__District] FOREIGN KEY([W_DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[Ward] CHECK CONSTRAINT [FK_Ward__District]
GO
ALTER TABLE [dbo].[WebmasterInfo]  WITH CHECK ADD  CONSTRAINT [FK_WebmasterInfo_AspNetUsers] FOREIGN KEY([WI_AspNetUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WebmasterInfo] CHECK CONSTRAINT [FK_WebmasterInfo_AspNetUsers]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã quảng cáo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Advertisement', @level2type=N'COLUMN',@level2name=N'AdvertisementId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày bắt đầu QC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Advertisement', @level2type=N'COLUMN',@level2name=N'AdStartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày kết thúc QC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Advertisement', @level2type=N'COLUMN',@level2name=N'AdEndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vị trí quảng cáo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Advertisement', @level2type=N'COLUMN',@level2name=N'AdPosition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái QC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Advertisement', @level2type=N'COLUMN',@level2name=N'AdStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên bên QC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Advertisement', @level2type=N'COLUMN',@level2name=N'AdName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Điện thoại bên QC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Advertisement', @level2type=N'COLUMN',@level2name=N'AdPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email bên QC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Advertisement', @level2type=N'COLUMN',@level2name=N'AdEmail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ liên hệ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Advertisement', @level2type=N'COLUMN',@level2name=N'AdAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link website QC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Advertisement', @level2type=N'COLUMN',@level2name=N'AdLink'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link ảnh QC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Advertisement', @level2type=N'COLUMN',@level2name=N'AdImage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã quyền' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AspNetRoles', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên quyền' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AspNetRoles', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tài khoản' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AspNetUserRoles', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã quyền' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AspNetUserRoles', @level2type=N'COLUMN',@level2name=N'RoleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tài khoản trong hệ thống' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AspNetUsers', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AspNetUsers', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Xác nhận email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AspNetUsers', @level2type=N'COLUMN',@level2name=N'EmailConfirmed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AspNetUsers', @level2type=N'COLUMN',@level2name=N'PasswordHash'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số điện thoại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AspNetUsers', @level2type=N'COLUMN',@level2name=N'PhoneNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Xác nhận số điện thoại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AspNetUsers', @level2type=N'COLUMN',@level2name=N'PhoneNumberConfirmed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tài khoản đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AspNetUsers', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã người tìm việc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CandidateId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã người đăng ký trong hệ thống' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'Cdd_AspNetUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã ngành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CP_ProfessionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã trình độ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CP_LevelId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã kinh nghiệm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CP_ExperienceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã lương' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CP_SalaryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã thể loại làm việc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CP_WorkTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CddUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CddPassword'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên đầy đủ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CddFullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ảnh đại diện' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CPAvatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giới tính' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CddSex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giới thiệu bản thân' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CddAbout'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CddAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vị trí' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CPPosition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả kinh nghiệm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CPExperience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CPStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tỉnh/Thành phố' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'Cdd_CityId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số điện thoại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CddPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CddEmail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tuổi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CddAge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đăng ký' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CddRegisterDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link facebook' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CddFacebook'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link google' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CddGoogle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Quận/Huyện' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'Cdd_DistrictId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phường/Xã' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'Cdd_WardId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link CV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CddPathCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả CV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CddDescribeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sinh nhật' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Candidate', @level2type=N'COLUMN',@level2name=N'CddBirthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã ứng tuyển' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CandidatePostResume', @level2type=N'COLUMN',@level2name=N'CandidatePostResumeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã người ứng tuyển' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CandidatePostResume', @level2type=N'COLUMN',@level2name=N'CPR_CandidateId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tuyển người tuyển dụng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CandidatePostResume', @level2type=N'COLUMN',@level2name=N'CPR_RecruitJobId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày ứng tuyển' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CandidatePostResume', @level2type=N'COLUMN',@level2name=N'CPRPostDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CandidatePostResume', @level2type=N'COLUMN',@level2name=N'CPRStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số điện thoại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CandidatePostResume', @level2type=N'COLUMN',@level2name=N'CddPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link CV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CandidatePostResume', @level2type=N'COLUMN',@level2name=N'CddPathFileCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã ngành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Career', @level2type=N'COLUMN',@level2name=N'CareerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên ngành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Career', @level2type=N'COLUMN',@level2name=N'CareerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã ngành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên ngành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'CName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tỉnh/thành phố' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'City', @level2type=N'COLUMN',@level2name=N'CityId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tỉnh/thành phố' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'City', @level2type=N'COLUMN',@level2name=N'CName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã quy mô' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CompanySize', @level2type=N'COLUMN',@level2name=N'CompanySizeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá trị quy mô min' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CompanySize', @level2type=N'COLUMN',@level2name=N'CSMin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá trị quy mô max' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CompanySize', @level2type=N'COLUMN',@level2name=N'CSMax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá trị quy mô hiển thị' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CompanySize', @level2type=N'COLUMN',@level2name=N'CSShow'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã huyện/quận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'District', @level2type=N'COLUMN',@level2name=N'DistrictId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên quận/huyện' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'District', @level2type=N'COLUMN',@level2name=N'DistrictName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tỉnh/thành phố' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'District', @level2type=N'COLUMN',@level2name=N'DT_CityId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã kinh nghiệm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Experience', @level2type=N'COLUMN',@level2name=N'ExperienceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá trị bé' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Experience', @level2type=N'COLUMN',@level2name=N'EMin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá trị lớn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Experience', @level2type=N'COLUMN',@level2name=N'EMax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá trị để hiển thị' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Experience', @level2type=N'COLUMN',@level2name=N'EShow'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã trình độ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LevelInfo', @level2type=N'COLUMN',@level2name=N'LevelInfoId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên trình độ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LevelInfo', @level2type=N'COLUMN',@level2name=N'LIName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tin tức' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'New', @level2type=N'COLUMN',@level2name=N'NewsId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tiêu đề' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'New', @level2type=N'COLUMN',@level2name=N'NTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả ngắn gọn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'New', @level2type=N'COLUMN',@level2name=N'NQuote'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chi tiết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'New', @level2type=N'COLUMN',@level2name=N'NDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đăng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'New', @level2type=N'COLUMN',@level2name=N'NPostDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày duyệt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'New', @level2type=N'COLUMN',@level2name=N'NPublicDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thể loại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'New', @level2type=N'COLUMN',@level2name=N'NType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã người đăng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'New', @level2type=N'COLUMN',@level2name=N'N_WebmasterInfoId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chuyên mục' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'New', @level2type=N'COLUMN',@level2name=N'N_CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'New', @level2type=N'COLUMN',@level2name=N'Nstatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ảnh đại diện' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'New', @level2type=N'COLUMN',@level2name=N'NAvatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã công việc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Profession', @level2type=N'COLUMN',@level2name=N'ProfessionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã ngành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Profession', @level2type=N'COLUMN',@level2name=N'PFCareerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên công việc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Profession', @level2type=N'COLUMN',@level2name=N'PFName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã người tuyển dụng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RecruitId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tài khoản trong hệ thống' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RI_AspNetUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RIUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RIPassword'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên đầy đủ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RIFullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RIEmail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên công ty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RICompanyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả về công ty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RIAbout'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Logo công ty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RILogo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RIAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số điện thoại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RIPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đăng ký' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RIRegisterDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RIStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Website' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RIWebsite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tỉnh/thành phố' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RI_CityId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã quận/huyên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RI_DistrictId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã xã/phường' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RI_WardId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian thành lập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'FoundedYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã quy mô công ty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RI_CompanySizeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã ngành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RI_ProfessionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ảnh bìa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RICoverImage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ảnh đại diện' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruit', @level2type=N'COLUMN',@level2name=N'RIAvatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã công việc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RecruitJobId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tiêu đề' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vị trí tuyển dụng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJPosition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả công việc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJ_Describe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả yêu cầu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJ_Require'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả lợi ích' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJBenefit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nơi làm việc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJ_WorkPlace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đăng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJPostDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày hết hạn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email liên hệ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJEmailContact'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên liên hệ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJNameContact'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số điện thoại liên hệ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJPhoneContact'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giới tính' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJGender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thể loại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã lương' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJ_SalaryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã kinh nghiệm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJ_ExperienceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã người tuyển dụng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJ_RecruitId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tỉnh/thành phố' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJCityId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã quận/huyện' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJDistrictId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã xã/phường' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJ_WardId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã ngành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJ_ProfessionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã trình độ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJ_LevelId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã thể loại làm việc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJ_WorkTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng xem tin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecruitJob', @level2type=N'COLUMN',@level2name=N'RJCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã lương' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Salary', @level2type=N'COLUMN',@level2name=N'SalaryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lương min' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Salary', @level2type=N'COLUMN',@level2name=N'SMin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lương max' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Salary', @level2type=N'COLUMN',@level2name=N'SMax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá trị hiển thị' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Salary', @level2type=N'COLUMN',@level2name=N'SShow'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã lưu việc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaveJob', @level2type=N'COLUMN',@level2name=N'SaveJobId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã người tìm việc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaveJob', @level2type=N'COLUMN',@level2name=N'SJ_CandidateId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã người tuyển dụng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaveJob', @level2type=N'COLUMN',@level2name=N'SJ_RecruitJobId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaveJob', @level2type=N'COLUMN',@level2name=N'SJStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã đăng ký tin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SignUpNewsletter', @level2type=N'COLUMN',@level2name=N'RegisterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email nhận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SignUpNewsletter', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên người nhận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SignUpNewsletter', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Có nhận tin tức hay không?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SignUpNewsletter', @level2type=N'COLUMN',@level2name=N'CheckNew'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Có nhân tin đăng tuyển dụng hay không?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SignUpNewsletter', @level2type=N'COLUMN',@level2name=N'CheckPost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã ngành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SignUpNewsletter', @level2type=N'COLUMN',@level2name=N'IdProfession'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã xã/phường' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ward', @level2type=N'COLUMN',@level2name=N'WardId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên xã/phường' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ward', @level2type=N'COLUMN',@level2name=N'WardName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã quận/huyện' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ward', @level2type=N'COLUMN',@level2name=N'W_DistrictId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tài khoản' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebmasterInfo', @level2type=N'COLUMN',@level2name=N'WebmasterInfoId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tài khoản trong hệ thống' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebmasterInfo', @level2type=N'COLUMN',@level2name=N'WI_AspNetUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebmasterInfo', @level2type=N'COLUMN',@level2name=N'WIUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebmasterInfo', @level2type=N'COLUMN',@level2name=N'WIPassword'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên đầy đủ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebmasterInfo', @level2type=N'COLUMN',@level2name=N'WIFullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thể loại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebmasterInfo', @level2type=N'COLUMN',@level2name=N'WIType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebmasterInfo', @level2type=N'COLUMN',@level2name=N'WIStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giới tính' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebmasterInfo', @level2type=N'COLUMN',@level2name=N'WIGender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sinh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebmasterInfo', @level2type=N'COLUMN',@level2name=N'WIBirthDay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày bắt đầu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebmasterInfo', @level2type=N'COLUMN',@level2name=N'WIDateStart'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebmasterInfo', @level2type=N'COLUMN',@level2name=N'WIAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vị trí làm việc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebmasterInfo', @level2type=N'COLUMN',@level2name=N'WIPosition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại hình làm việc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkType', @level2type=N'COLUMN',@level2name=N'WorkTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên loại hình làm việc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkType', @level2type=N'COLUMN',@level2name=N'WTName'
GO
USE [master]
GO
ALTER DATABASE [JobHunt] SET  READ_WRITE 
GO
