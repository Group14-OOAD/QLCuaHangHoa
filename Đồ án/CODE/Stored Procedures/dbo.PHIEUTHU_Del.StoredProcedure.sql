USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[PHIEUTHU_Del]    Script Date: 12/12/2016 10:03:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[PHIEUTHU_Del]
	(
		@MaPT VARCHAR(10)
	)
AS
BEGIN
	DELETE FROM PhieuThu
	WHERE @MaPT LIKE PhieuThu.MaPT
END


GO
