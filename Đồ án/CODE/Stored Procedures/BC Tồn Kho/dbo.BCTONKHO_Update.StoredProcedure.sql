USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[BCTONKHO_Update]    Script Date: 12/23/2016 12:33:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BCTONKHO_Update]
	(
		@ngayLap VARCHAR(10),
		@maSP VARCHAR(10),
		@slTonKyDau INT,
		@slNhap INT,
		@slXuat INT,
		@slPhatSinh INT,
		@slTonCuoiKy INT,
		@ghiChu NVARCHAR(100)
	)
AS
BEGIN
	UPDATE BaoCaoTonKho SET
		SLTonKyDau = @slTonKyDau,
		SLNhap = @slNhap,
		SLXuat = @slXuat,
		SLPhatSinh = @slPhatSinh,
		GhiChu = @ghiChu
		WHERE 
		(CONVERT(VARCHAR(10), NgayLap, 120) = @ngayLap)
		AND MaSP = @maSP
END


GO
