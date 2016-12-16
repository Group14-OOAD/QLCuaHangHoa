USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[PHIEUCHI_Insert]    Script Date: 12/16/2016 9:37:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PHIEUCHI_Insert]
	(
		@maPhieuChi VARCHAR(10),
		@ngayLap date,
		@maKhachHang varchar(10),
		@maNhanVien varchar(10),
		@SoTienNo int,
		@SoTienChi int
	)
AS
BEGIN
	INSERT INTO PhieuChi VALUES(@maPhieuChi, @ngayLap, @maKhachHang,
								@maNhanVien, @SoTienNo, @SoTienChi)
END




GO
