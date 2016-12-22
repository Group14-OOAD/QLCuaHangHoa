USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[BCDOANHTHU_Update2]    Script Date: 12/23/2016 12:33:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BCDOANHTHU_Update2]
	(
		@ngayLap VARCHAR(10),
		@maSP VARCHAR(10),
		@phatSinh INT,
		@loiNhuan INT,
		@ghiChu NVARCHAR(100)
	)
AS
BEGIN
	UPDATE BaoCaoDoanhThu SET
		PhatSinh = @phatSinh,
		LoiNhuan = @loiNhuan,
		GhiChu = @ghiChu
		WHERE 
		(CONVERT(VARCHAR(10), NgayLap, 120) = @ngayLap)
		AND MaSP = @maSP
END


GO
