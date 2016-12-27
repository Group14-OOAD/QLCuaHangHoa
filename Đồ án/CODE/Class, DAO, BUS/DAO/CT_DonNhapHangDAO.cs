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
    public class CT_DonNhapHangDAO :DBConnection
    {

        public CT_DonNhapHangDAO(): base(){ }
        private SqlParameter _maDNH, _maSP, _soLuong, _thanhTien, _ghiChu, _isActive;

        public bool addCT_DonNhapHang(CT_DonNhapHang _CT_donNhapHang)
        {
            try
            {

                SqlCommand cmd = new SqlCommand("CT_DONHAPHANG_Insert", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                _maDNH = cmd.Parameters.Add(new SqlParameter("@maDNH", SqlDbType.VarChar, 10));
                _maSP = cmd.Parameters.Add(new SqlParameter("@maSP", SqlDbType.VarChar, 10));
                _soLuong = cmd.Parameters.Add(new SqlParameter("@maNV", SqlDbType.Int));
                _thanhTien = cmd.Parameters.Add(new SqlParameter("@thanhTien", SqlDbType.Int));
                _ghiChu = cmd.Parameters.Add(new SqlParameter("@ghiChu", SqlDbType.NVarChar, 100));
                _isActive = cmd.Parameters.Add(new SqlParameter("@isActive", SqlDbType.Bit));

                //Get value to parameters:
                _maDNH.Value = _CT_donNhapHang.MaDNH;
                _maSP.Value = _CT_donNhapHang.MaSP;
                _soLuong.Value = _CT_donNhapHang.SoLuong;
                _thanhTien.Value = _CT_donNhapHang.ThanhTien;
                _ghiChu.Value = _CT_donNhapHang.GhiChu;
                _isActive.Value = _CT_donNhapHang.IsActive;

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

        public bool deleteCT_DonNhapHang(string _maDNH)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("CT_DONNHAPHANG_DELETE", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@maDNH", SqlDbType.VarChar, 10)).Value = _maDNH;

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

        public bool updateCT_DonDatHang(CT_DonNhapHang _CT_donNhapHang)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("CT_HOADONHAPHANG_Update", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("@maDNH", SqlDbType.VarChar, 10)).Value = _CT_donNhapHang.MaDNH;
                cmd.Parameters.Add(new SqlParameter("@maSP", SqlDbType.Date)).Value = _CT_donNhapHang.MaSP;
                cmd.Parameters.Add(new SqlParameter("@soLuong", SqlDbType.Int)).Value = _CT_donNhapHang.SoLuong;
                cmd.Parameters.Add(new SqlParameter("@thanhTien", SqlDbType.Int)).Value = _CT_donNhapHang.ThanhTien;
                cmd.Parameters.Add(new SqlParameter("@ghiChu", SqlDbType.VarChar, 100)).Value = _CT_donNhapHang.GhiChu;
                cmd.Parameters.Add(new SqlParameter("@isActive", SqlDbType.Bit)).Value = _CT_donNhapHang.IsActive;

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

        public CT_DonNhapHang getCT_DonNhapHang(string _maDNH)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("CT_DONNHAPHANG_getDonNhapHang", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@maDNH", SqlDbType.VarChar, 10)).Value = _maDNH;

                if (conn.State != ConnectionState.Open)
                    conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                CT_DonNhapHang CT_donnhaphang = null;
                if (dr.Read())
                {
                    CT_donnhaphang = new CT_DonNhapHang();
                    CT_donnhaphang.MaDNH = dr["MaDNH"].ToString();
                    CT_donnhaphang.MaSP = dr["MaSP"].ToString();
                    CT_donnhaphang.SoLuong = (int)dr["SoLuong"];
                    CT_donnhaphang.ThanhTien = (int)dr["ThanhTien"];
                    CT_donnhaphang.GhiChu = dr["GhiChu"].ToString();
                    CT_donnhaphang.IsActive = (Convert.ToInt32(dr["IsActive"]) == 1) ? true : false;
                }
                conn.Close();
                return CT_donnhaphang;
            }
            catch (Exception e)
            {
                conn.Close();
                Console.WriteLine("Lỗi: " + e.Message);
                return null;
            }
        }

        public DataTable getAllCT_DonNhapHang()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("DONNHAPHANG_getAll", conn);
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

        public DataTable searchCT_DonNhapHang(string _maDNH)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("DONNHAPHANG_Search", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@maDNH", SqlDbType.VarChar, 10)).Value = _maDNH;
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
