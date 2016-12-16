USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[NHACUNGCAP_Update]    Script Date: 12/16/2016 9:37:17 PM ******/
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
		@ghiChu nvarchar(100)
	)
AS
BEGIN
	UPDATE NhaCungCap
	SET MaNCC = @maNCC,
		Ten= @ten,
		DiaChi = @diaChi,
		SoDT = @soDT,
		GhiChu = @ghiChu
		
	WHERE @maNCC = MaNCC
END



GO
