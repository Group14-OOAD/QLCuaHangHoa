USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[DonNhapHang_getDonNhapHang]    Script Date: 12/16/2016 9:37:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[DonNhapHang_getDonNhapHang]
	(
		@maDNH VARCHAR(10)
	)
AS
BEGIN
	SELECT * FROM DonNhapHang
	WHERE @maDNH = MaDNH
END



GO
