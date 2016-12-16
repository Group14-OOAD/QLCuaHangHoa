USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[NHACUNGCAP_Insert]    Script Date: 12/16/2016 9:37:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[NHACUNGCAP_Insert]
	(
		@maNCC VARCHAR(10),
		@ten NVARCHAR(50),
		@diaChi NVARCHAR(50),
		@soDT VARCHAR(15),
		@ghiChu nvarchar(100)
		)
AS
BEGIN
	INSERT INTO NhaCungCap VALUES(@maNCC, @ten, @diaChi,
								@soDT, @ghiChu)
END



GO
