USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[PHIEUTHU_getPhieuThu]    Script Date: 12/12/2016 10:03:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[PHIEUTHU_getPhieuThu]
	(
		@MaPT VARCHAR(10)
	)
AS
BEGIN
	SELECT * FROM PhieuThu
	WHERE @MaPT = MaNV
END


GO
