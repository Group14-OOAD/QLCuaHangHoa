USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[NHANVIEN_Update]    Script Date: 12/14/2016 9:53:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[NHANVIEN_Update]
	(
		@maNhanVien VARCHAR(10),
		@hoTen NVARCHAR(50),
		@namSinh INT,
		@gioiTinh BIT,
		@soDT VARCHAR(15),
		@email VARCHAR(50),
		@username VARCHAR(50),
		@password VARCHAR(50),
		@maLoaiNV VARCHAR(20),
		@isActive BIT
	)
AS
BEGIN
	UPDATE NHANVIEN
	SET HoTen = @hoTen,
		NamSinh= @namSinh,
		GioiTinh = @gioiTinh,
		SoDT = @soDT,
		Email = @email,
		Username = @username,
		[Password] = @password,
		MaLoaiNV = @maLoaiNV,
		IsActive = @isActive
	WHERE @maNhanVien = MaNV
END


GO
