USE [QuanLiCuaHangHoa]
GO

/****** Object:  StoredProcedure [dbo].[PHIEUCHI_Search]    Script Date: 12/27/2016 10:18:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PHIEUCHI_Search]
	(
		@MaPC VARCHAR(10) = '',
		@ngayLap VARCHAR(10) = ''
	)
AS
BEGIN
	select * from PhieuChi
	WHERE (MaPC LIKE '%'+ @maPC + '%' OR @maPC IS NULL or @maPC = '')
		AND (NgayLap LIKE '%' + @ngayLap + '%' or @ngayLap is null or @ngayLap = '')
END



GO

