USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[DonNhapHang_Insert]    Script Date: 12/16/2016 9:37:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[DonNhapHang_Insert]
	(
		@maDNH VARCHAR(10),
		@NgayLap NVARCHAR(50),
		@maNV varchar,
		@maNCC varchar,
		@tongTien int,
		@ngayGiaoDuKien date,
		@ghiChu NVARCHAR(100)
	
	)
AS
BEGIN
	INSERT INTO DonNhapHang VALUES(@maDNH, @NgayLap, @maNV,
								@maNCC, @tongTien, @ngayGiaoDuKien, @ghiChu)
END


GO
