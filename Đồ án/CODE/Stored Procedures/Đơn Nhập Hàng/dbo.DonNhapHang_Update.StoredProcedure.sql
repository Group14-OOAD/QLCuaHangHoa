USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[DonNhapHang_Update]    Script Date: 12/16/2016 9:37:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[DonNhapHang_Update]
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
	UPDATE DonNhapHang
	SET MaDNH = @maDNH,
		NgayLap= @NgayLap,
		MaNV = @maNV,
		MaNCC = @maNCC,
		TongTien = @tongTien,
		NgayGiaoDuKien = @ngayGiaoDuKien,
		GhiChu = @ghiChu
		
	WHERE @maDNH = MaDNH
END



GO
