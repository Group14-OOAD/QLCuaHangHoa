USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[NHANVIEN_Insert]    Script Date: 12/12/2016 10:03:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[NHANVIEN_Insert]
	(
		@maNhanVien VARCHAR(10),
		@hoTen NVARCHAR(50),
		@namSinh INT,
		@gioiTinh BIT,
		@soDT VARCHAR(15),
		@email VARCHAR(50),
		@username VARCHAR(50),
		@password VARCHAR(50),
		@maLoaiNV VARCHAR(20)
	)
AS
BEGIN
	INSERT INTO NhanVien VALUES(@maNhanVien, @hoTen, @namSinh,
								@gioiTinh, @soDT, @email, @username, @password, @maLoaiNV)
END


GO
