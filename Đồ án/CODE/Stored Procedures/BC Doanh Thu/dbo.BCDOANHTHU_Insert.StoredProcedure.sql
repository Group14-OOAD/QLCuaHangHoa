USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[BCDOANHTHU_Insert]    Script Date: 12/23/2016 12:33:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BCDOANHTHU_Insert]
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
	INSERT INTO BaoCaoDoanhThu VALUES
	(
		@ngayLap,
		@maSP,
		@tongChi,
		@phatSinh,
		@tongThu,
		@loiNhuan,
		@ghiChu
	)
END


GO
