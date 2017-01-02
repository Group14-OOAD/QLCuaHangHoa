USE [QuanLiCuaHangHoa]
GO

/****** Object:  StoredProcedure [dbo].[NHACUNGCAP_Insert]    Script Date: 1/3/2017 2:52:13 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[NHACUNGCAP_Insert]
	(
		@maNCC VARCHAR(10),
		@ten NVARCHAR(50),
		@diaChi NVARCHAR(50),
		@soDT VARCHAR(15),
		@ghiChu nvarchar(100),
		@isActive bit
		)
AS
BEGIN
	INSERT INTO NhaCungCap VALUES(@maNCC, @ten, @diaChi,
								@soDT, @ghiChu,@isActive)
END




GO


