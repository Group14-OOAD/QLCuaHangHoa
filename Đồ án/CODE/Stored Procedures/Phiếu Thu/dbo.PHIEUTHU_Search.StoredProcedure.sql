USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[PHIEUTHU_Search]    Script Date: 12/12/2016 10:03:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[PHIEUTHU_Search]
	(
		@MaPT VARCHAR(10) = '',
		@NgayLap VARCHAR(10) = ''
	)
AS
BEGIN
	select * from PhieuThu
	WHERE (MaPT LIKE '%'+ @MaPT + '%' OR @MaPT IS NULL or @MaPT = '')
		AND (CONVERT(VARCHAR(10), PhieuThu.NgayLap, 120) = @NgayLap OR @NgayLap is null OR @NgayLap = '')
END


GO
