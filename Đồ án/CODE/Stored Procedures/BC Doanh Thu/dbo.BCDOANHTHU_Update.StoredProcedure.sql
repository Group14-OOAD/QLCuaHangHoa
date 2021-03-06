USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[BCDOANHTHU_Update]    Script Date: 12/23/2016 12:33:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BCDOANHTHU_Update]
	(
		@ngayLap VARCHAR(10),
		@maSP VARCHAR(10),
		@tongChi INT,
		@phatSinh INT,
		@tongThu INT,
		@loiNhuan INT,
		@ghiChu NVARCHAR(100)
	)
AS
BEGIN
	UPDATE BaoCaoDoanhThu SET
		TongChi = @tongChi,
		PhatSinh = @phatSinh,
		TongThu = @tongThu,
		LoiNhuan = @loiNhuan,
		GhiChu = @ghiChu
		WHERE 
		(CONVERT(VARCHAR(10), NgayLap, 120) = @ngayLap)
		AND MaSP = @maSP
END


GO
