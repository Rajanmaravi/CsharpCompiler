USE [Demo]
GO
/****** Object:  Table [dbo].[tblMstCity]    Script Date: 5/10/2024 4:27:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMstCity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
	[StateId] [int] NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMstCountry]    Script Date: 5/10/2024 4:27:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMstCountry](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMstState]    Script Date: 5/10/2024 4:27:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMstState](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
	[CountryId] [int] NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblMstCity] ON 

INSERT [dbo].[tblMstCity] ([Id], [Description], [StateId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (1, N'EkamraKanana', 1, N'Kalyan', CAST(N'2024-05-08T18:09:08.523' AS DateTime), N'Kalyan', CAST(N'2024-05-08T18:11:52.913' AS DateTime), 1, 0)
INSERT [dbo].[tblMstCity] ([Id], [Description], [StateId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (2, N'Jajpur', 1, N'Kalyan', CAST(N'2024-05-09T17:19:06.743' AS DateTime), NULL, NULL, 1, 0)
INSERT [dbo].[tblMstCity] ([Id], [Description], [StateId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (3, N'Berhampur', 1, N'Kalyan', CAST(N'2024-05-09T17:19:28.403' AS DateTime), N'Aniruddha', CAST(N'2024-05-09T17:41:14.113' AS DateTime), 1, 0)
INSERT [dbo].[tblMstCity] ([Id], [Description], [StateId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (4, N'Nabarangpur', 1, N'Kalyan', CAST(N'2024-05-09T17:40:48.217' AS DateTime), NULL, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[tblMstCity] OFF
GO
SET IDENTITY_INSERT [dbo].[tblMstCountry] ON 

INSERT [dbo].[tblMstCountry] ([Id], [Description], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (1, N'Bharat', N'Kalyan', CAST(N'2024-05-08T18:34:34.520' AS DateTime), N'Kalyan', CAST(N'2024-05-08T18:37:00.220' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[tblMstCountry] OFF
GO
SET IDENTITY_INSERT [dbo].[tblMstState] ON 

INSERT [dbo].[tblMstState] ([Id], [Description], [CountryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (1, N'Kalinga', 1, N'Kalyan', CAST(N'2024-05-08T18:38:08.397' AS DateTime), N'Kalyan', CAST(N'2024-05-08T18:39:03.610' AS DateTime), 1, 0)
INSERT [dbo].[tblMstState] ([Id], [Description], [CountryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (2, N'Chattishgarh', 1, N'Kalyan', CAST(N'2024-05-09T17:58:55.823' AS DateTime), N'Anshuman', CAST(N'2024-05-09T18:01:22.273' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[tblMstState] OFF
GO
ALTER TABLE [dbo].[tblMstCity] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tblMstCity] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblMstCity] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblMstCountry] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tblMstCountry] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblMstCountry] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblMstState] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tblMstState] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblMstState] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  StoredProcedure [dbo].[USP_Create_City]    Script Date: 5/10/2024 4:27:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_Create_City]
@Description varchar(100),
@StateId int ,
@LoggedInUser varchar(100)

AS BEGIN
SET NOCOUNT OFF;
BEGIN TRY

	  INSERT INTO [dbo].[tblMstCity]
	  (Description,StateId,CreatedBy)
	  select @Description,@StateId,@LoggedInUser
END TRY

BEGIN CATCH
	  SELECT
		ERROR_NUMBER() AS ErrorNumber,
		ERROR_STATE() AS ErrorState,
		ERROR_SEVERITY() AS ErrorSeverity,
		ERROR_PROCEDURE() AS ErrorProcedure,
		ERROR_LINE() AS ErrorLine,
		ERROR_MESSAGE() AS ErrorMessage;
END CATCH;	  
END
GO
/****** Object:  StoredProcedure [dbo].[USP_Create_Country]    Script Date: 5/10/2024 4:27:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_Create_Country]
@Description varchar(100),
@LoggedInUser varchar(100)

AS BEGIN
SET NOCOUNT OFF;
BEGIN TRY

	  INSERT INTO [dbo].[tblMstCountry]
	  (Description,CreatedBy)
	  select @Description,@LoggedInUser
END TRY

BEGIN CATCH
	  SELECT
		ERROR_NUMBER() AS ErrorNumber,
		ERROR_STATE() AS ErrorState,
		ERROR_SEVERITY() AS ErrorSeverity,
		ERROR_PROCEDURE() AS ErrorProcedure,
		ERROR_LINE() AS ErrorLine,
		ERROR_MESSAGE() AS ErrorMessage;
END CATCH;	  
END
GO
/****** Object:  StoredProcedure [dbo].[USP_Create_State]    Script Date: 5/10/2024 4:27:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_Create_State]
@Description varchar(100),
@CountryId int ,
@LoggedInUser varchar(100)

AS BEGIN
SET NOCOUNT OFF;
BEGIN TRY

	  INSERT INTO [dbo].[tblMstState]
	  (Description,CountryId,CreatedBy)
	  select @Description,@CountryId,@LoggedInUser
END TRY

BEGIN CATCH
	  SELECT
		ERROR_NUMBER() AS ErrorNumber,
		ERROR_STATE() AS ErrorState,
		ERROR_SEVERITY() AS ErrorSeverity,
		ERROR_PROCEDURE() AS ErrorProcedure,
		ERROR_LINE() AS ErrorLine,
		ERROR_MESSAGE() AS ErrorMessage;
END CATCH;	  
END
GO
/****** Object:  StoredProcedure [dbo].[USP_Delete_City]    Script Date: 5/10/2024 4:27:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_Delete_City]
 @Id int ,
@LoggedInUser varchar(100)

AS BEGIN
SET NOCOUNT OFF;
BEGIN TRY

	 UPDATE [dbo].[tblMstCity]
   SET IsActive=0,IsDeleted=1
      ,[ModifiedBy] = @LoggedInUser
      ,[ModifiedOn] = GETDATE()
     
 WHERE Id=@Id
END TRY

BEGIN CATCH
	  SELECT
		ERROR_NUMBER() AS ErrorNumber,
		ERROR_STATE() AS ErrorState,
		ERROR_SEVERITY() AS ErrorSeverity,
		ERROR_PROCEDURE() AS ErrorProcedure,
		ERROR_LINE() AS ErrorLine,
		ERROR_MESSAGE() AS ErrorMessage;
END CATCH;	  
END
GO
/****** Object:  StoredProcedure [dbo].[USP_Delete_Country]    Script Date: 5/10/2024 4:27:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Delete_Country]
 @Id int ,
@LoggedInUser varchar(100)

AS BEGIN
SET NOCOUNT OFF;
BEGIN TRY

	 UPDATE [dbo].[tblMstCountry]
   SET IsActive=0,IsDeleted=1
      ,[ModifiedBy] = @LoggedInUser
      ,[ModifiedOn] = GETDATE()
     
 WHERE Id=@Id
END TRY

BEGIN CATCH
	  SELECT
		ERROR_NUMBER() AS ErrorNumber,
		ERROR_STATE() AS ErrorState,
		ERROR_SEVERITY() AS ErrorSeverity,
		ERROR_PROCEDURE() AS ErrorProcedure,
		ERROR_LINE() AS ErrorLine,
		ERROR_MESSAGE() AS ErrorMessage;
END CATCH;	  
END
GO
/****** Object:  StoredProcedure [dbo].[USP_Delete_State]    Script Date: 5/10/2024 4:27:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_Delete_State]
 @Id int ,
@LoggedInUser varchar(100)

AS BEGIN
SET NOCOUNT OFF;
BEGIN TRY

	 UPDATE [dbo].[tblMstState]
   SET IsActive=0,IsDeleted=1
      ,[ModifiedBy] = @LoggedInUser
      ,[ModifiedOn] = GETDATE()
     
 WHERE Id=@Id
END TRY

BEGIN CATCH
	  SELECT
		ERROR_NUMBER() AS ErrorNumber,
		ERROR_STATE() AS ErrorState,
		ERROR_SEVERITY() AS ErrorSeverity,
		ERROR_PROCEDURE() AS ErrorProcedure,
		ERROR_LINE() AS ErrorLine,
		ERROR_MESSAGE() AS ErrorMessage;
END CATCH;	  
END
GO
/****** Object:  StoredProcedure [dbo].[USP_Search_City]    Script Date: 5/10/2024 4:27:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_Search_City]
 @Id int =null,
@SearchText varchar(100)=null,
@StateId int =NULL

AS BEGIN
SET NOCOUNT OFF;
BEGIN TRY

	 select Id,StateId,Description, ModifiedOn as LastModifiedOn from  [dbo].[tblMstCity]
	 where Id =ISNULL(@Id,Id)
	 AND Description like '%' + ISNULL(@SearchText,Description) + '%'
	 AND StateId =ISNULL(@StateId,StateId)
  
END TRY

BEGIN CATCH
	  SELECT
		ERROR_NUMBER() AS ErrorNumber,
		ERROR_STATE() AS ErrorState,
		ERROR_SEVERITY() AS ErrorSeverity,
		ERROR_PROCEDURE() AS ErrorProcedure,
		ERROR_LINE() AS ErrorLine,
		ERROR_MESSAGE() AS ErrorMessage;
END CATCH;	  
END
GO
/****** Object:  StoredProcedure [dbo].[USP_Search_Country]    Script Date: 5/10/2024 4:27:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_Search_Country]
 @Id int =null,
@SearchText varchar(100)=null

AS BEGIN
SET NOCOUNT OFF;
BEGIN TRY

	 select Id,Description, ModifiedOn as LastModifiedOn from  [dbo].[tblMstCountry]
	 where Id =ISNULL(@Id,Id)
	 AND Description like '%' + ISNULL(@SearchText,Description) + '%'
  
END TRY

BEGIN CATCH
	  SELECT
		ERROR_NUMBER() AS ErrorNumber,
		ERROR_STATE() AS ErrorState,
		ERROR_SEVERITY() AS ErrorSeverity,
		ERROR_PROCEDURE() AS ErrorProcedure,
		ERROR_LINE() AS ErrorLine,
		ERROR_MESSAGE() AS ErrorMessage;
END CATCH;	  
END
GO
/****** Object:  StoredProcedure [dbo].[USP_Search_State]    Script Date: 5/10/2024 4:27:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_Search_State]
 @Id int =null,
@SearchText varchar(100)=null,
@CountryId int =NULL

AS BEGIN
SET NOCOUNT OFF;
BEGIN TRY

	 select Id,CountryId,Description, ModifiedOn as LastModifiedOn from  [dbo].[tblMstState]
	 where Id =ISNULL(@Id,Id)
	 AND Description like '%' + ISNULL(@SearchText,Description) + '%'
	 AND CountryId =ISNULL(@CountryId,CountryId)
  
END TRY

BEGIN CATCH
	  SELECT
		ERROR_NUMBER() AS ErrorNumber,
		ERROR_STATE() AS ErrorState,
		ERROR_SEVERITY() AS ErrorSeverity,
		ERROR_PROCEDURE() AS ErrorProcedure,
		ERROR_LINE() AS ErrorLine,
		ERROR_MESSAGE() AS ErrorMessage;
END CATCH;	  
END
GO
/****** Object:  StoredProcedure [dbo].[USP_tblMstCountry]    Script Date: 5/10/2024 4:27:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ActionCode=@P_Action :I=Insert,U=Update,D=Delete,V=View,E=Edit,S=Search
CREATE PROCEDURE [dbo].[USP_tblMstCountry]
@P_MSG_OUT VARCHAR(100) = NULL OUTPUT, 
 @P_Action  CHAR(30),
@P_Id  int=NULL,
@P_Description  varchar(100)=NULL,
@P_CreatedBy  varchar(100)=NULL,
@P_CreatedOn  datetime=NULL,
@P_ModifiedBy  varchar(100)=NULL,
@P_ModifiedOn  datetime=NULL,
@P_IsActive  bit=NULL,
@P_IsDeleted  bit=NULL
AS BEGIN
SET NOCOUNT OFF;
IF (@P_Action = 'I') BEGIN
Insert into tblMstCountry(Description,CreatedBy,CreatedOn,ModifiedBy,ModifiedOn,IsActive,IsDeleted) values(@P_Description,@P_CreatedBy,@P_CreatedOn,@P_ModifiedBy,@P_ModifiedOn,@P_IsActive,@P_IsDeleted)
END
-------------------------------------------------------------------------
Else
IF (@P_Action = 'U') BEGIN
Update tblMstCountry set Description=@P_Description,CreatedBy=@P_CreatedBy,CreatedOn=@P_CreatedOn,ModifiedBy=@P_ModifiedBy,ModifiedOn=@P_ModifiedOn,IsActive=@P_IsActive,IsDeleted=@P_IsDeleted where Id=@P_Id
END
-------------------------------------------------------------------------
Else
IF (@P_Action = 'D') BEGIN
Delete from tblMstCountry where Id=@P_Id
END
-------------------------------------------------------------------------
Else
IF (@P_Action = 'V') BEGIN
select Id,Description,CreatedBy,CreatedOn,ModifiedBy,ModifiedOn,IsActive,IsDeleted from tblMstCountry
END
Else
IF (@P_Action = 'S') BEGIN
select Id,Description,CreatedBy,CreatedOn,ModifiedBy,ModifiedOn,IsActive,IsDeleted from tblMstCountry where 

    CASE
        WHEN
            (
          
(ISNULL(@P_Id, '0') = '0' OR tblMstCountry.Id = ISNULL(@P_Id, '0'))

AND
				

				(ISNULL(@P_Description, '') = '' OR tblMstCountry.Description LIKE '%' + @P_Description + '%')

AND
				

				(ISNULL(@P_CreatedBy, '') = '' OR tblMstCountry.CreatedBy LIKE '%' + @P_CreatedBy + '%')

AND
				

				(ISNULL(@P_ModifiedBy, '') = '' OR tblMstCountry.ModifiedBy LIKE '%' + @P_ModifiedBy + '%')

      
            )
        THEN 1
        ELSE 0
    END = 1;
	END
-------------------------------------------------------------------------
Else
IF (@P_Action = 'E') BEGIN
select Id,Description,CreatedBy,CreatedOn,ModifiedBy,ModifiedOn,IsActive,IsDeleted from tblMstCountry where Id=@P_Id
END
-------------------------------------------------------------------------
END
GO
/****** Object:  StoredProcedure [dbo].[USP_Update_City]    Script Date: 5/10/2024 4:27:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_Update_City]
 @Id int ,
@Description varchar(100),
@StateId int ,
@LoggedInUser varchar(100)

AS BEGIN
SET NOCOUNT OFF;
BEGIN TRY

	 UPDATE [dbo].[tblMstCity]
   SET [Description] = @Description
      ,[StateId] = @StateId
     
      ,[ModifiedBy] = @LoggedInUser
      ,[ModifiedOn] = GETDATE()
     
 WHERE Id=@Id
END TRY

BEGIN CATCH
	  SELECT
		ERROR_NUMBER() AS ErrorNumber,
		ERROR_STATE() AS ErrorState,
		ERROR_SEVERITY() AS ErrorSeverity,
		ERROR_PROCEDURE() AS ErrorProcedure,
		ERROR_LINE() AS ErrorLine,
		ERROR_MESSAGE() AS ErrorMessage;
END CATCH;	  
END
GO
/****** Object:  StoredProcedure [dbo].[USP_Update_Country]    Script Date: 5/10/2024 4:27:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_Update_Country]
 @Id int ,
@Description varchar(100),
@LoggedInUser varchar(100)

AS BEGIN
SET NOCOUNT OFF;
BEGIN TRY

	 UPDATE [dbo].[tblMstCountry]
   SET [Description] = @Description    
      ,[ModifiedBy] = @LoggedInUser
      ,[ModifiedOn] = GETDATE()
     
 WHERE Id=@Id
END TRY

BEGIN CATCH
	  SELECT
		ERROR_NUMBER() AS ErrorNumber,
		ERROR_STATE() AS ErrorState,
		ERROR_SEVERITY() AS ErrorSeverity,
		ERROR_PROCEDURE() AS ErrorProcedure,
		ERROR_LINE() AS ErrorLine,
		ERROR_MESSAGE() AS ErrorMessage;
END CATCH;	  
END
GO
/****** Object:  StoredProcedure [dbo].[USP_Update_State]    Script Date: 5/10/2024 4:27:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_Update_State]
 @Id int ,
@Description varchar(100),
@CountryId int ,
@LoggedInUser varchar(100)

AS BEGIN
SET NOCOUNT OFF;
BEGIN TRY

	 UPDATE [dbo].[tblMstState]
   SET [Description] = @Description
      ,CountryId = @CountryId
     
      ,[ModifiedBy] = @LoggedInUser
      ,[ModifiedOn] = GETDATE()
     
 WHERE Id=@Id
END TRY

BEGIN CATCH
	  SELECT
		ERROR_NUMBER() AS ErrorNumber,
		ERROR_STATE() AS ErrorState,
		ERROR_SEVERITY() AS ErrorSeverity,
		ERROR_PROCEDURE() AS ErrorProcedure,
		ERROR_LINE() AS ErrorLine,
		ERROR_MESSAGE() AS ErrorMessage;
END CATCH;	  
END
GO
