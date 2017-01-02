USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[CONGNO_LAYCONGNO]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CONGNO_LAYCONGNO]
(
	@MAKH VARCHAR (10)
	
)

AS
BEGIN
	
	SELECT a.NoKyCuoi
	FROM BaoCaoCongNoKH A, KhachHang B
	WHERE A.MaKH = B.MaKH
	
END
GO
