using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class CT_HoaDonNhapHangDAO : DBConnection
    {
        public CT_HoaDonNhapHangDAO(): base(){ }
        private SqlParameter _maHD, _maSP, _soLuong, _thanhTien, _ghiChu, _isActive;

        public bool addCT_HoaDonNhapHang(CT_HoaDonNhapHang _CT_hoaDonNhapHang)
        {
            try
            {

                SqlCommand cmd = new SqlCommand("CT_HOADONHAPHANG_Insert", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                _maHD = cmd.Parameters.Add(new SqlParameter("@maHD", SqlDbType.VarChar, 10));
                _maSP = cmd.Parameters.Add(new SqlParameter("@maSP", SqlDbType.VarChar,10));
                _soLuong = cmd.Parameters.Add(new SqlParameter("@maNV", SqlDbType.Int));
                _thanhTien = cmd.Parameters.Add(new SqlParameter("@thanhTien", SqlDbType.Int));
                _ghiChu = cmd.Parameters.Add(new SqlParameter("@ghiChu", SqlDbType.NVarChar, 100));
                _isActive = cmd.Parameters.Add(new SqlParameter("@isActive", SqlDbType.Bit));

                //Get value to parameters:
                _maHD.Value = _CT_hoaDonNhapHang.MaHD;
                _maSP.Value = _CT_hoaDonNhapHang.MaSP;
                _soLuong.Value = _CT_hoaDonNhapHang.SoLuong;               
                _thanhTien.Value = _CT_hoaDonNhapHang.ThanhTien;
                _ghiChu.Value = _CT_hoaDonNhapHang.GhiChu;
                _isActive.Value = _CT_hoaDonNhapHang.IsActive;

                if (conn.State != ConnectionState.Open)
                    conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            catch (Exception e)
            {
                conn.Close();
                Console.WriteLine("Lỗi: " + e.Message);
                return false;
            }
        }

        public bool deleteCT_HoaDonNhapHang(string _maHD)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("CT_HOADONNHAPHANG_DELETE", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@maHD", SqlDbType.VarChar, 10)).Value = _maHD;

                if (conn.State != ConnectionState.Open)
                    conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            catch (Exception e)
            {
                conn.Close();
                Console.WriteLine("Lỗi: " + e.Message);
                return false;
            }
        }

        public bool updateCT_HoaDonDatHang(CT_HoaDonNhapHang _CT_hoaDonNhapHang)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("CT_HOADONHAPHANG_Update", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("@maHD", SqlDbType.VarChar, 10)).Value = _CT_hoaDonNhapHang.MaHD;
                cmd.Parameters.Add(new SqlParameter("@maSP", SqlDbType.Date)).Value = _CT_hoaDonNhapHang.MaSP;
                cmd.Parameters.Add(new SqlParameter("@soLuong", SqlDbType.Int)).Value = _CT_hoaDonNhapHang.SoLuong;
                cmd.Parameters.Add(new SqlParameter("@thanhTien", SqlDbType.Int)).Value = _CT_hoaDonNhapHang.ThanhTien;
                cmd.Parameters.Add(new SqlParameter("@ghiChu", SqlDbType.VarChar, 100)).Value = _CT_hoaDonNhapHang.GhiChu;
                cmd.Parameters.Add(new SqlParameter("@isActive", SqlDbType.Bit)).Value = _CT_hoaDonNhapHang.IsActive;

                if (conn.State != ConnectionState.Open)
                    conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            catch (Exception e)
            {
                conn.Close();
                Console.WriteLine("Lỗi: " + e.Message);
                return false;
            }
        }

        public CT_HoaDonNhapHang getCT_HoaDonNhapHang(string _maHD)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("CT_HOADONNHAPHANG_getHoaDonNhapHang", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@maHD", SqlDbType.VarChar, 10)).Value = _maHD;

                if (conn.State != ConnectionState.Open)
                    conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                CT_HoaDonNhapHang CT_hoadonnhaphang = null;
                if (dr.Read())
                {
                    CT_hoadonnhaphang = new CT_HoaDonNhapHang();
                    CT_hoadonnhaphang.MaHD = dr["MaHD"].ToString();
                    CT_hoadonnhaphang.MaSP = dr["MaSP"].ToString();
                    CT_hoadonnhaphang.SoLuong = (int)dr["SoLuong"];                
                    CT_hoadonnhaphang.ThanhTien = (int)dr["ThanhTien"];
                    CT_hoadonnhaphang.GhiChu = dr["GhiChu"].ToString();
                    CT_hoadonnhaphang.IsActive = (Convert.ToInt32(dr["IsActive"]) == 1) ? true : false;
                }
                conn.Close();
                return CT_hoadonnhaphang;
            }
            catch (Exception e)
            {
                conn.Close();
                Console.WriteLine("Lỗi: " + e.Message);
                return null;
            }
        }

        public DataTable getAllCT_HoaDonNhapHang()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("HOADONNHAPHANG_getAll", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                if (conn.State != ConnectionState.Open)
                    conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                conn.Close();
                return dt;
            }
            catch (Exception e)
            {
                conn.Close();
                Console.WriteLine("Lỗi: " + e.Message);
                return null;
            }
        }

        public DataTable searchCT_HoaDonNhapHang(string _maHD)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("HOADONNHAPHANG_Search", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@maHD", SqlDbType.VarChar, 10)).Value = _maHD;
                if (conn.State != ConnectionState.Open)
                    conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                conn.Close();
                return dt;
            }
            catch (Exception e)
            {
                conn.Close();
                Console.WriteLine("Lỗi: " + e.Message);
                return null;
            }
        }
    }
}
