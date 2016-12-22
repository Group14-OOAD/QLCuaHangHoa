namespace Presentation_Tier
{
    partial class UserControl_EditBCDoanhThu
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(UserControl_EditBCDoanhThu));
            this.groupControl_EditUser = new DevExpress.XtraEditors.GroupControl();
            this.richTextBox_ghiChu = new System.Windows.Forms.RichTextBox();
            this.btn_Huy = new DevExpress.XtraEditors.SimpleButton();
            this.btn_Luu = new DevExpress.XtraEditors.SimpleButton();
            this.label_ghiChu = new DevExpress.XtraEditors.LabelControl();
            this.dateEdit_ngayLap = new DevExpress.XtraEditors.DateEdit();
            this.label_tongThu = new DevExpress.XtraEditors.LabelControl();
            this.comboBox_maSP = new DevExpress.XtraEditors.ComboBoxEdit();
            this.textEdit_tongThu = new DevExpress.XtraEditors.TextEdit();
            this.textEdit_phatSinh = new DevExpress.XtraEditors.TextEdit();
            this.textEdit_loiNhuan = new DevExpress.XtraEditors.TextEdit();
            this.textEdit_tongChi = new DevExpress.XtraEditors.TextEdit();
            this.label_maSP = new DevExpress.XtraEditors.LabelControl();
            this.label_ngayLap = new DevExpress.XtraEditors.LabelControl();
            this.label_loiNhuan = new DevExpress.XtraEditors.LabelControl();
            this.label_phatSinh = new DevExpress.XtraEditors.LabelControl();
            this.label_tongChi = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl_EditUser)).BeginInit();
            this.groupControl_EditUser.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_ngayLap.Properties.CalendarTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_ngayLap.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBox_maSP.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_tongThu.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_phatSinh.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_loiNhuan.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_tongChi.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // groupControl_EditUser
            // 
            this.groupControl_EditUser.Controls.Add(this.dateEdit_ngayLap);
            this.groupControl_EditUser.Controls.Add(this.label_tongThu);
            this.groupControl_EditUser.Controls.Add(this.comboBox_maSP);
            this.groupControl_EditUser.Controls.Add(this.textEdit_tongThu);
            this.groupControl_EditUser.Controls.Add(this.textEdit_phatSinh);
            this.groupControl_EditUser.Controls.Add(this.textEdit_loiNhuan);
            this.groupControl_EditUser.Controls.Add(this.textEdit_tongChi);
            this.groupControl_EditUser.Controls.Add(this.label_maSP);
            this.groupControl_EditUser.Controls.Add(this.label_ngayLap);
            this.groupControl_EditUser.Controls.Add(this.label_loiNhuan);
            this.groupControl_EditUser.Controls.Add(this.label_phatSinh);
            this.groupControl_EditUser.Controls.Add(this.label_tongChi);
            this.groupControl_EditUser.Controls.Add(this.richTextBox_ghiChu);
            this.groupControl_EditUser.Controls.Add(this.btn_Huy);
            this.groupControl_EditUser.Controls.Add(this.btn_Luu);
            this.groupControl_EditUser.Controls.Add(this.label_ghiChu);
            this.groupControl_EditUser.Location = new System.Drawing.Point(68, 3);
            this.groupControl_EditUser.Name = "groupControl_EditUser";
            this.groupControl_EditUser.Size = new System.Drawing.Size(787, 342);
            this.groupControl_EditUser.TabIndex = 28;
            this.groupControl_EditUser.Text = "Thông tin báo cáo công nợ khách hàng";
            // 
            // richTextBox_ghiChu
            // 
            this.richTextBox_ghiChu.Location = new System.Drawing.Point(531, 51);
            this.richTextBox_ghiChu.Name = "richTextBox_ghiChu";
            this.richTextBox_ghiChu.Size = new System.Drawing.Size(242, 136);
            this.richTextBox_ghiChu.TabIndex = 1;
            this.richTextBox_ghiChu.Text = "";
            // 
            // btn_Huy
            // 
            this.btn_Huy.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Huy.Appearance.Options.UseFont = true;
            this.btn_Huy.Image = ((System.Drawing.Image)(resources.GetObject("btn_Huy.Image")));
            this.btn_Huy.Location = new System.Drawing.Point(655, 282);
            this.btn_Huy.Name = "btn_Huy";
            this.btn_Huy.Size = new System.Drawing.Size(108, 38);
            this.btn_Huy.TabIndex = 3;
            this.btn_Huy.Text = "Hủy";
            this.btn_Huy.Click += new System.EventHandler(this.btn_Huy_Click);
            // 
            // btn_Luu
            // 
            this.btn_Luu.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Luu.Appearance.Options.UseFont = true;
            this.btn_Luu.Image = ((System.Drawing.Image)(resources.GetObject("btn_Luu.Image")));
            this.btn_Luu.Location = new System.Drawing.Point(655, 214);
            this.btn_Luu.Name = "btn_Luu";
            this.btn_Luu.Size = new System.Drawing.Size(108, 38);
            this.btn_Luu.TabIndex = 2;
            this.btn_Luu.Text = "Lưu";
            this.btn_Luu.Click += new System.EventHandler(this.btn_Luu_Click);
            // 
            // label_ghiChu
            // 
            this.label_ghiChu.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_ghiChu.Appearance.Options.UseFont = true;
            this.label_ghiChu.Location = new System.Drawing.Point(476, 58);
            this.label_ghiChu.Name = "label_ghiChu";
            this.label_ghiChu.Size = new System.Drawing.Size(49, 16);
            this.label_ghiChu.TabIndex = 17;
            this.label_ghiChu.Text = "Ghi Chú:";
            // 
            // dateEdit_ngayLap
            // 
            this.dateEdit_ngayLap.EditValue = new System.DateTime(2016, 12, 10, 0, 0, 0, 0);
            this.dateEdit_ngayLap.Location = new System.Drawing.Point(175, 57);
            this.dateEdit_ngayLap.Name = "dateEdit_ngayLap";
            this.dateEdit_ngayLap.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit_ngayLap.Properties.CalendarTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit_ngayLap.Properties.MaxValue = new System.DateTime(2016, 12, 10, 0, 0, 0, 0);
            this.dateEdit_ngayLap.Properties.MinValue = new System.DateTime(2000, 1, 1, 0, 0, 0, 0);
            this.dateEdit_ngayLap.Size = new System.Drawing.Size(161, 20);
            this.dateEdit_ngayLap.TabIndex = 22;
            // 
            // label_tongThu
            // 
            this.label_tongThu.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_tongThu.Appearance.Options.UseFont = true;
            this.label_tongThu.Location = new System.Drawing.Point(31, 196);
            this.label_tongThu.Name = "label_tongThu";
            this.label_tongThu.Size = new System.Drawing.Size(60, 16);
            this.label_tongThu.TabIndex = 33;
            this.label_tongThu.Text = "Tổng Thu:";
            // 
            // comboBox_maSP
            // 
            this.comboBox_maSP.Location = new System.Drawing.Point(175, 92);
            this.comboBox_maSP.Name = "comboBox_maSP";
            this.comboBox_maSP.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBox_maSP.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comboBox_maSP.Size = new System.Drawing.Size(161, 20);
            this.comboBox_maSP.TabIndex = 23;
            // 
            // textEdit_tongThu
            // 
            this.textEdit_tongThu.Enabled = false;
            this.textEdit_tongThu.Location = new System.Drawing.Point(175, 195);
            this.textEdit_tongThu.Name = "textEdit_tongThu";
            this.textEdit_tongThu.Size = new System.Drawing.Size(161, 20);
            this.textEdit_tongThu.TabIndex = 25;
            // 
            // textEdit_phatSinh
            // 
            this.textEdit_phatSinh.EditValue = "";
            this.textEdit_phatSinh.Location = new System.Drawing.Point(175, 164);
            this.textEdit_phatSinh.Name = "textEdit_phatSinh";
            this.textEdit_phatSinh.Size = new System.Drawing.Size(161, 20);
            this.textEdit_phatSinh.TabIndex = 24;
            // 
            // textEdit_loiNhuan
            // 
            this.textEdit_loiNhuan.EditValue = "";
            this.textEdit_loiNhuan.Enabled = false;
            this.textEdit_loiNhuan.Location = new System.Drawing.Point(175, 231);
            this.textEdit_loiNhuan.Name = "textEdit_loiNhuan";
            this.textEdit_loiNhuan.Properties.NullText = "0";
            this.textEdit_loiNhuan.Size = new System.Drawing.Size(161, 20);
            this.textEdit_loiNhuan.TabIndex = 26;
            // 
            // textEdit_tongChi
            // 
            this.textEdit_tongChi.EditValue = "";
            this.textEdit_tongChi.Enabled = false;
            this.textEdit_tongChi.Location = new System.Drawing.Point(175, 130);
            this.textEdit_tongChi.Name = "textEdit_tongChi";
            this.textEdit_tongChi.Properties.NullText = "0";
            this.textEdit_tongChi.Size = new System.Drawing.Size(161, 20);
            this.textEdit_tongChi.TabIndex = 27;
            // 
            // label_maSP
            // 
            this.label_maSP.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_maSP.Appearance.Options.UseFont = true;
            this.label_maSP.Location = new System.Drawing.Point(31, 93);
            this.label_maSP.Name = "label_maSP";
            this.label_maSP.Size = new System.Drawing.Size(84, 16);
            this.label_maSP.TabIndex = 28;
            this.label_maSP.Text = "Mã Sản Phẩm:";
            // 
            // label_ngayLap
            // 
            this.label_ngayLap.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_ngayLap.Appearance.Options.UseFont = true;
            this.label_ngayLap.Location = new System.Drawing.Point(31, 58);
            this.label_ngayLap.Name = "label_ngayLap";
            this.label_ngayLap.Size = new System.Drawing.Size(57, 16);
            this.label_ngayLap.TabIndex = 29;
            this.label_ngayLap.Text = "Ngày Lập:";
            // 
            // label_loiNhuan
            // 
            this.label_loiNhuan.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_loiNhuan.Appearance.Options.UseFont = true;
            this.label_loiNhuan.Location = new System.Drawing.Point(31, 234);
            this.label_loiNhuan.Name = "label_loiNhuan";
            this.label_loiNhuan.Size = new System.Drawing.Size(61, 16);
            this.label_loiNhuan.TabIndex = 30;
            this.label_loiNhuan.Text = "Lợi Nhuận:";
            // 
            // label_phatSinh
            // 
            this.label_phatSinh.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_phatSinh.Appearance.Options.UseFont = true;
            this.label_phatSinh.Location = new System.Drawing.Point(31, 167);
            this.label_phatSinh.Name = "label_phatSinh";
            this.label_phatSinh.Size = new System.Drawing.Size(102, 16);
            this.label_phatSinh.TabIndex = 31;
            this.label_phatSinh.Text = "Chi Phí Phát Sinh:";
            // 
            // label_tongChi
            // 
            this.label_tongChi.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_tongChi.Appearance.Options.UseFont = true;
            this.label_tongChi.Location = new System.Drawing.Point(31, 133);
            this.label_tongChi.Name = "label_tongChi";
            this.label_tongChi.Size = new System.Drawing.Size(56, 16);
            this.label_tongChi.TabIndex = 32;
            this.label_tongChi.Text = "Tổng Chi:";
            // 
            // UserControl_EditBCDoanhThu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupControl_EditUser);
            this.Name = "UserControl_EditBCDoanhThu";
            this.Size = new System.Drawing.Size(1298, 618);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl_EditUser)).EndInit();
            this.groupControl_EditUser.ResumeLayout(false);
            this.groupControl_EditUser.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_ngayLap.Properties.CalendarTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_ngayLap.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBox_maSP.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_tongThu.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_phatSinh.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_loiNhuan.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_tongChi.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.GroupControl groupControl_EditUser;
        private System.Windows.Forms.RichTextBox richTextBox_ghiChu;
        private DevExpress.XtraEditors.SimpleButton btn_Huy;
        private DevExpress.XtraEditors.SimpleButton btn_Luu;
        private DevExpress.XtraEditors.LabelControl label_ghiChu;
        private DevExpress.XtraEditors.DateEdit dateEdit_ngayLap;
        private DevExpress.XtraEditors.LabelControl label_tongThu;
        private DevExpress.XtraEditors.ComboBoxEdit comboBox_maSP;
        private DevExpress.XtraEditors.TextEdit textEdit_tongThu;
        private DevExpress.XtraEditors.TextEdit textEdit_phatSinh;
        private DevExpress.XtraEditors.TextEdit textEdit_loiNhuan;
        private DevExpress.XtraEditors.TextEdit textEdit_tongChi;
        private DevExpress.XtraEditors.LabelControl label_maSP;
        private DevExpress.XtraEditors.LabelControl label_ngayLap;
        private DevExpress.XtraEditors.LabelControl label_loiNhuan;
        private DevExpress.XtraEditors.LabelControl label_phatSinh;
        private DevExpress.XtraEditors.LabelControl label_tongChi;
    }
}
