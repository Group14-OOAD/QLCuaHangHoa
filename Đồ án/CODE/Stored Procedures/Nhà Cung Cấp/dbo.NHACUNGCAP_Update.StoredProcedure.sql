USE [QuanLiCuaHangHoa]
GO

/****** Object:  StoredProcedure [dbo].[NHACUNGCAP_Update]    Script Date: 1/3/2017 1:22:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
Create PROCEDURE [dbo].[NHACUNGCAP_Update]
	(
		@maNCC VARCHAR(10),
		@ten NVARCHAR(50),
		@diaChi nvarchar(50),
		@soDT VARCHAR(15),
		@ghiChu nvarchar(100),
		@isActive bit
	)
AS
BEGIN
	UPDATE NhaCungCap
	SET 
		Ten= @ten,
		DiaChi = @diaChi,
		SoDT = @soDT,
		GhiChu = @ghiChu,
		isActive = @isActive
		
	WHERE @maNCC = MaNCC
END



GO


