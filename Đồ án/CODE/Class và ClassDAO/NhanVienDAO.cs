using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO_Login;
using System.Data;
using System.Data.SqlClient;

namespace DAO_Login
{
    public class NhanVienDAO: DBConnection
    {
        public NhanVienDAO(): base(){ }

        public bool addNhanVien(NhanVien _nhanVien)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("NHANVIEN_Insert", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("_maNV", SqlDbType.NChar, 20));
                cmd.Parameters.Add(new SqlParameter("_hoTen", SqlDbType.NVarChar, 50));
                cmd.Parameters.Add(new SqlParameter("_namSinh", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("_gioiTinh", SqlDbType.Bit));
                cmd.Parameters.Add(new SqlParameter("_soDT", SqlDbType.NChar, 15));
                cmd.Parameters.Add(new SqlParameter("_email", SqlDbType.NChar, 20));
                cmd.Parameters.Add(new SqlParameter("_username", SqlDbType.NChar, 20));
                cmd.Parameters.Add(new SqlParameter("_password", SqlDbType.NChar, 20));


                if (conn.State != ConnectionState.Open)
                    conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            catch(Exception e)
            {
                conn.Close();
                return false;
            }
        }

        public bool deleteNhanVien(string _maNhanVien)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("NHANVIEN_Del", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("_maNV", SqlDbType.NChar, 20));


                if (conn.State != ConnectionState.Open)
                    conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            catch (Exception e)
            {
                conn.Close();
                return false;
            }
        }

        public bool updateNhanVien(NhanVien _nhanVien)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("NHANVIEN_Update", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("_maNV", SqlDbType.NChar, 20));
                cmd.Parameters.Add(new SqlParameter("_hoTen", SqlDbType.NVarChar, 50));
                cmd.Parameters.Add(new SqlParameter("_namSinh", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("_gioiTinh", SqlDbType.Bit));
                cmd.Parameters.Add(new SqlParameter("_soDT", SqlDbType.NChar, 15));
                cmd.Parameters.Add(new SqlParameter("_email", SqlDbType.NChar, 20));
                cmd.Parameters.Add(new SqlParameter("_username", SqlDbType.NChar, 20));
                cmd.Parameters.Add(new SqlParameter("_password", SqlDbType.NChar, 20));


                if (conn.State != ConnectionState.Open)
                    conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            catch (Exception e)
            {
                conn.Close();
                return false;
            }
        }

        public NhanVien getNhanVien(string _maNhanVien)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("NHANVIEN_getNhanVien", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("_maNV", SqlDbType.NChar, 20));


                if (conn.State != ConnectionState.Open)
                    conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                NhanVien nhanVien = null;
                if(dr.Read())
                {
                    nhanVien = new NhanVien();
                    nhanVien.maNhanVien = dr["MaNV"].ToString();
                    nhanVien.hoTen = dr["HoTen"].ToString();
                    nhanVien.namSinh = (int)dr["NamSinh"];
                    if ((int)dr["GioiTinh"] == 1)
                        nhanVien.gioiTinh = "Nam";
                    else
                        nhanVien.gioiTinh = "Nữ";
                    nhanVien.soDienThoai = dr["SoDT"].ToString();
                    nhanVien.email = dr["Email"].ToString();
                }
                conn.Close();
                return nhanVien;
            }
            catch (Exception e)
            {
                conn.Close();
                return null;
            }
        }
    }
}
