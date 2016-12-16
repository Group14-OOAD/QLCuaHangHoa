USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[DONNHAPHANG_Del]    Script Date: 12/16/2016 9:37:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DONNHAPHANG_Del]
	(
		@maDNH VARCHAR(10)
	)
AS
BEGIN
	DELETE FROM DonNhapHang
	WHERE @maDNH LIKE DonNhapHang.MaDNH
END



GO
