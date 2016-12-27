USE [QuanLiCuaHangHoa]
GO

/****** Object:  StoredProcedure [dbo].[NHACUNGCAP_Search]    Script Date: 12/27/2016 10:13:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
CREATE PROCEDURE [dbo].[NHACUNGCAP_Search]
	(
	

		@maNCC VARCHAR(10)='',
		@tenNCC NVARCHAR(50)=''

	)
AS
BEGIN
	select * from NhaCungCap
	WHERE (MaNCC LIKE '%'+ @maNCC + '%' OR @maNCC IS NULL or @maNCC = '')
		AND (Ten LIKE '%' + @tenNCC + '%' or @tenNCC is null or @tenNCC = '')
		
END




GO

