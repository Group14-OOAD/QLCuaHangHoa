USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[PHIEUCHI_Del]    Script Date: 12/16/2016 9:37:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PHIEUCHI_Del]
	(
		@maPhieuChi VARCHAR(10)
	)
AS
BEGIN
	DELETE FROM PhieuChi
	WHERE @maPhieuChi LIKE PhieuChi.MaPC
END




GO
