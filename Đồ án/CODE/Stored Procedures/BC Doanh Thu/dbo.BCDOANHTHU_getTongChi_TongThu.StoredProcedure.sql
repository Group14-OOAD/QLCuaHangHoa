USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[BCDOANHTHU_getTongChi_TongThu]    Script Date: 12/23/2016 12:33:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BCDOANHTHU_getTongChi_TongThu]
	(
		@maSP VARCHAR(10),
		@month INT,
		@year INT
	)
AS
BEGIN
	DECLARE @TongChi INT, @TongThu INT
	DECLARE @Table TABLE (TongChi INT, TongThu INT)
	EXEC @TongChi = BCDOANHTHU_getTongChi @maSP, @month, @year
	EXEC @TongThu = BCDOANHTHU_getTongThu @maSP, @month, @year
	INSERT INTO @Table VALUES(@TongChi, @TongThu)
	SELECT * FROM @Table
END
GO
