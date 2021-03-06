﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Text.RegularExpressions;
using DevExpress.XtraEditors;
using DTO;
using BUS;

namespace Presentation_Tier
{
    public partial class UserControl_AddBCCongNoKH : UserControl
    {
        private static UserControl_AddBCCongNoKH _instance;
        public static UserControl_AddBCCongNoKH Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new UserControl_AddBCCongNoKH();
                return _instance;
            }
        }
        public static KhachHangBUS objKHBus = new KhachHangBUS();
        public static DataTable tableKhachHang = new DataTable();
        public UserControl_AddBCCongNoKH()
        {
            InitializeComponent();

            tableKhachHang = objKHBus.Load_DSKhachHang();
            //Khởi tạo item cho comboBox mã KH:
            foreach (DataRow dr in tableKhachHang.Rows)
                if (!comboBox_makH.Properties.Items.Contains(dr["MaKH"].ToString()))
                    comboBox_makH.Properties.Items.Add(dr["MaKH"].ToString());

            //Khởi tạo gán giá trị cho mã NV:
            textEdit_maNV.Text = UserControl_Login.login_User.maNhanVien;

            //
            dateEdit_ngayLap.Focus();
        }
        
        private void btn_Huy_Click(object sender, EventArgs e)
        {
            Form parentForm = this.FindForm();
            ((MainForm)parentForm).mainPanel.Controls.Add(UserControl_ListBCCongNoKH.Instance);
            UserControl_ListBCCongNoKH.Instance.BringToFront();

            //Enable các btn:
            UserControl_ListButton_BCCongNoKH.Instance.btn_themMoi.Enabled = true;
            UserControl_ListButton_BCCongNoKH.Instance.btn_Edit.Enabled = false;
            UserControl_ListButton_BCCongNoKH.Instance.btn_Xoa.Enabled = false;
        }

        public void resetAllField()
        {
            dateEdit_ngayLap.Reset();
            comboBox_makH.Text = null;
            textEdit_noKyDau.Text = "0";
            textEdit_phatSinh.Text = "0";
            textEdit_noKyCuoi.Text = "0";
            richTextBox_ghiChu.Text = null;

        }

        //Tạo các biến lưu giá trị trên màn hình:
        string tempNgayLap, tempMaKH, tempMaNV, tempNoKyDau, tempPhatSinh, tempNoKyCuoi, tempGhiChu;

        string maKHSelected;
        DateTime ngayLapSelected;

        private void textEdit_phatSinh_EditValueChanged(object sender, EventArgs e)
        {
            tinhNoKyCuoi_PhatSinh();
        }

        public BCCongNoKHBUS objBCBUS = new BCCongNoKHBUS();

        private void dateEdit_ngayLap_EditValueChanged(object sender, EventArgs e)
        {
            tinhNoKyCuoi_PhatSinh();
        }

        public PhieuThuBUS objPTBUS = new PhieuThuBUS();
        int noKyDau = 0;
        private void comboBox_makH_SelectedIndexChanged(object sender, EventArgs e)
        {
            maKHSelected = comboBox_makH.Text;
            tinhNoKyCuoi_PhatSinh();
        }

        private void tinhNoKyCuoi_PhatSinh()
        {
            ngayLapSelected = Convert.ToDateTime(dateEdit_ngayLap.Text);
            if (ngayLapSelected.Month == 1)
            {
                noKyDau = objBCBUS.getNoKyCuoi(maKHSelected, 12, ngayLapSelected.Year - 1);
            }
            else
            {
                noKyDau = objBCBUS.getNoKyCuoi(maKHSelected, ngayLapSelected.Month - 1, ngayLapSelected.Year);
            }
            textEdit_noKyDau.Text = noKyDau.ToString();
            int phatSinhThangNay = objPTBUS.getTongTienNoTrongThang(maKHSelected, ngayLapSelected.Month, ngayLapSelected.Year);
            textEdit_phatSinh.Text = phatSinhThangNay.ToString();
            if (textEdit_phatSinh.Text.Length > 0)
            {
                textEdit_noKyCuoi.Text = (noKyDau + Convert.ToInt32(textEdit_phatSinh.Text)).ToString();
            }
        }
        private void btn_Luu_Click(object sender, EventArgs e)
        {
            if(checkAddNewInformation())
            {
                //XtraMessageBox.Show("Các thông tin đã hợp lệ");
                BCCongNoKH tempBaoCao = new BCCongNoKH(Convert.ToDateTime(tempNgayLap), tempMaKH, tempMaNV, Convert.ToInt32(tempNoKyDau), Convert.ToInt32(tempPhatSinh), Convert.ToInt32(tempNoKyCuoi), tempGhiChu);
                bool inserted = false;
                inserted = UserControl_ListBCCongNoKH.objBCBus.addBaoCao(tempBaoCao);
                if (inserted)
                {

                    Form parentForm = this.FindForm();
                    UserControl_ListBCCongNoKH.Instance.loadDanhSachBaoCao();
                    if(!((MainForm)parentForm).mainPanel.Controls.Contains(UserControl_ListBCCongNoKH.Instance))
                        ((MainForm)parentForm).mainPanel.Controls.Add(UserControl_ListBCCongNoKH.Instance);
                    UserControl_ListBCCongNoKH.Instance.BringToFront();

                    UserControl_ListBCCongNoKH.Instance.label_notification.Text = "Thêm thành công!";

                    //Enable/Disable các btn:
                    UserControl_ListButton_BCCongNoKH.Instance.btn_themMoi.Enabled = true;
                    UserControl_ListButton_BCCongNoKH.Instance.btn_Edit.Enabled = false;
                    UserControl_ListButton_BCCongNoKH.Instance.btn_Xoa.Enabled = false;
                }
                else
                    XtraMessageBox.Show("Thêm không thành công!");
            }
            else
            {
                
            }
        }

        private bool checkAddNewInformation() //Kiểm tra các thông tin mới trên form:
        {
            try
            {
                //KIỂM TRA NGÀY LẬP VÀ MÃ KH:
                tempNgayLap = dateEdit_ngayLap.Text;
                tempMaKH = comboBox_makH.Text;
                foreach(DataRow dr in UserControl_ListBCCongNoKH.tableBCCongNoKH.Rows)
                    if(Convert.ToDateTime(dr["NgayLap"].ToString()).Month == Convert.ToDateTime(tempNgayLap).Month
                        && Convert.ToDateTime(dr["NgayLap"].ToString()).Year == Convert.ToDateTime(tempNgayLap).Year
                       && dr["MaKH"].ToString() == tempMaKH)
                    {
                        XtraMessageBox.Show("Khách Hàng có mã " + tempMaKH + " đã được tạo báo cáo doanh thu!");
                        return false;
                    }

                //KIỂM TRA MÃ NV:
                tempMaNV = textEdit_maNV.Text;

                //KIỂM TRA TIỀN NỢ KỲ ĐẦU:
                tempNoKyDau = textEdit_noKyDau.Text;

                //KIỂM TRA TIỀN PHÁT SINH: (tự tính bằng tổng tiền trong các phiếu thu)
                tempPhatSinh = textEdit_phatSinh.Text;

                //KIỂM TRA TIỀN NỢ KỲ CUỐI:
                tempNoKyCuoi = textEdit_noKyCuoi.Text;
                if(Convert.ToInt32(tempNoKyCuoi) > 200000)
                {
                    XtraMessageBox.Show("Tổng tiền nợ không được vượt quá 200000đ!");
                    return false;
                }

                //GHI CHÚ:
                tempGhiChu = richTextBox_ghiChu.Text;
                return true;
            }
            catch (Exception ex)
            {
                XtraMessageBox.Show("Lỗi khi check thông tin: " + ex.Message);
                return false;
            }
        }
    }
}
