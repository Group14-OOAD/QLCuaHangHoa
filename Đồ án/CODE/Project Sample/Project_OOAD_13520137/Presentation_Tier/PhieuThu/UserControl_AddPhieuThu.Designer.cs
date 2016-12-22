namespace Presentation_Tier
{
    partial class UserControl_AddPhieuThu
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(UserControl_AddPhieuThu));
            this.btn_Huy = new DevExpress.XtraEditors.SimpleButton();
            this.btn_Luu = new DevExpress.XtraEditors.SimpleButton();
            this.comboBox_makH = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label_soTienNo = new DevExpress.XtraEditors.LabelControl();
            this.label_maPhieuThu = new DevExpress.XtraEditors.LabelControl();
            this.label_maKH = new DevExpress.XtraEditors.LabelControl();
            this.textEdit_soTienNo = new DevExpress.XtraEditors.TextEdit();
            this.textEdit_maPhieuThu = new DevExpress.XtraEditors.TextEdit();
            this.label_maNV = new DevExpress.XtraEditors.LabelControl();
            this.groupControl_EditUser = new DevExpress.XtraEditors.GroupControl();
            this.dateEdit_ngayLap = new DevExpress.XtraEditors.DateEdit();
            this.textEdit_maNV = new DevExpress.XtraEditors.TextEdit();
            this.textEdit_soTienThu = new DevExpress.XtraEditors.TextEdit();
            this.textEdit_TongTienNo = new DevExpress.XtraEditors.TextEdit();
            this.label_ngayLap = new DevExpress.XtraEditors.LabelControl();
            this.label_soTienThu = new DevExpress.XtraEditors.LabelControl();
            this.label_tongTienNo = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.comboBox_makH.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_soTienNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_maPhieuThu.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl_EditUser)).BeginInit();
            this.groupControl_EditUser.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_ngayLap.Properties.CalendarTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_ngayLap.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_maNV.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_soTienThu.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_TongTienNo.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // btn_Huy
            // 
            this.btn_Huy.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Huy.Appearance.Options.UseFont = true;
            this.btn_Huy.Image = ((System.Drawing.Image)(resources.GetObject("btn_Huy.Image")));
            this.btn_Huy.Location = new System.Drawing.Point(425, 267);
            this.btn_Huy.Name = "btn_Huy";
            this.btn_Huy.Size = new System.Drawing.Size(108, 38);
            this.btn_Huy.TabIndex = 8;
            this.btn_Huy.Text = "Hủy";
            this.btn_Huy.Click += new System.EventHandler(this.btn_Huy_Click);
            // 
            // btn_Luu
            // 
            this.btn_Luu.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Luu.Appearance.Options.UseFont = true;
            this.btn_Luu.Image = ((System.Drawing.Image)(resources.GetObject("btn_Luu.Image")));
            this.btn_Luu.Location = new System.Drawing.Point(425, 197);
            this.btn_Luu.Name = "btn_Luu";
            this.btn_Luu.Size = new System.Drawing.Size(108, 38);
            this.btn_Luu.TabIndex = 7;
            this.btn_Luu.Text = "Lưu";
            this.btn_Luu.Click += new System.EventHandler(this.btn_Luu_Click);
            // 
            // comboBox_makH
            // 
            this.comboBox_makH.Location = new System.Drawing.Point(152, 162);
            this.comboBox_makH.Name = "comboBox_makH";
            this.comboBox_makH.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBox_makH.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comboBox_makH.Size = new System.Drawing.Size(161, 20);
            this.comboBox_makH.TabIndex = 4;
            this.comboBox_makH.SelectedValueChanged += new System.EventHandler(this.comboBox_makH_SelectedValueChanged);
            // 
            // label_soTienNo
            // 
            this.label_soTienNo.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_soTienNo.Appearance.Options.UseFont = true;
            this.label_soTienNo.Location = new System.Drawing.Point(30, 228);
            this.label_soTienNo.Name = "label_soTienNo";
            this.label_soTienNo.Size = new System.Drawing.Size(98, 16);
            this.label_soTienNo.TabIndex = 17;
            this.label_soTienNo.Text = "Tiền Nợ Lần Này:";
            // 
            // label_maPhieuThu
            // 
            this.label_maPhieuThu.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_maPhieuThu.Appearance.Options.UseFont = true;
            this.label_maPhieuThu.Location = new System.Drawing.Point(30, 36);
            this.label_maPhieuThu.Name = "label_maPhieuThu";
            this.label_maPhieuThu.Size = new System.Drawing.Size(83, 16);
            this.label_maPhieuThu.TabIndex = 16;
            this.label_maPhieuThu.Text = "Mã Phiếu Thu:";
            // 
            // label_maKH
            // 
            this.label_maKH.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_maKH.Appearance.Options.UseFont = true;
            this.label_maKH.Location = new System.Drawing.Point(30, 163);
            this.label_maKH.Name = "label_maKH";
            this.label_maKH.Size = new System.Drawing.Size(93, 16);
            this.label_maKH.TabIndex = 14;
            this.label_maKH.Text = "Mã Khách Hàng:";
            // 
            // textEdit_soTienNo
            // 
            this.textEdit_soTienNo.EditValue = "0";
            this.textEdit_soTienNo.Location = new System.Drawing.Point(152, 225);
            this.textEdit_soTienNo.Name = "textEdit_soTienNo";
            this.textEdit_soTienNo.Properties.NullText = "0";
            this.textEdit_soTienNo.Size = new System.Drawing.Size(161, 20);
            this.textEdit_soTienNo.TabIndex = 5;
            this.textEdit_soTienNo.EditValueChanged += new System.EventHandler(this.textEdit_soTienNo_EditValueChanged);
            // 
            // textEdit_maPhieuThu
            // 
            this.textEdit_maPhieuThu.Location = new System.Drawing.Point(152, 33);
            this.textEdit_maPhieuThu.Name = "textEdit_maPhieuThu";
            this.textEdit_maPhieuThu.Properties.MaxLength = 10;
            this.textEdit_maPhieuThu.Size = new System.Drawing.Size(161, 20);
            this.textEdit_maPhieuThu.TabIndex = 1;
            // 
            // label_maNV
            // 
            this.label_maNV.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_maNV.Appearance.Options.UseFont = true;
            this.label_maNV.Location = new System.Drawing.Point(30, 129);
            this.label_maNV.Name = "label_maNV";
            this.label_maNV.Size = new System.Drawing.Size(84, 16);
            this.label_maNV.TabIndex = 21;
            this.label_maNV.Text = "Mã Nhân Viên:";
            // 
            // groupControl_EditUser
            // 
            this.groupControl_EditUser.Controls.Add(this.dateEdit_ngayLap);
            this.groupControl_EditUser.Controls.Add(this.label_maNV);
            this.groupControl_EditUser.Controls.Add(this.comboBox_makH);
            this.groupControl_EditUser.Controls.Add(this.textEdit_maNV);
            this.groupControl_EditUser.Controls.Add(this.textEdit_maPhieuThu);
            this.groupControl_EditUser.Controls.Add(this.textEdit_soTienThu);
            this.groupControl_EditUser.Controls.Add(this.textEdit_TongTienNo);
            this.groupControl_EditUser.Controls.Add(this.textEdit_soTienNo);
            this.groupControl_EditUser.Controls.Add(this.label_maKH);
            this.groupControl_EditUser.Controls.Add(this.label_ngayLap);
            this.groupControl_EditUser.Controls.Add(this.label_soTienThu);
            this.groupControl_EditUser.Controls.Add(this.label_tongTienNo);
            this.groupControl_EditUser.Controls.Add(this.label_maPhieuThu);
            this.groupControl_EditUser.Controls.Add(this.label_soTienNo);
            this.groupControl_EditUser.Location = new System.Drawing.Point(32, 4);
            this.groupControl_EditUser.Name = "groupControl_EditUser";
            this.groupControl_EditUser.Size = new System.Drawing.Size(372, 301);
            this.groupControl_EditUser.TabIndex = 24;
            this.groupControl_EditUser.Text = "Thông tin phiếu thu";
            // 
            // dateEdit_ngayLap
            // 
            this.dateEdit_ngayLap.EditValue = new System.DateTime(2016, 12, 10, 0, 0, 0, 0);
            this.dateEdit_ngayLap.Enabled = false;
            this.dateEdit_ngayLap.Location = new System.Drawing.Point(152, 72);
            this.dateEdit_ngayLap.Name = "dateEdit_ngayLap";
            this.dateEdit_ngayLap.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit_ngayLap.Properties.CalendarTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit_ngayLap.Properties.MaxValue = new System.DateTime(2016, 12, 10, 0, 0, 0, 0);
            this.dateEdit_ngayLap.Properties.MinValue = new System.DateTime(2000, 1, 1, 0, 0, 0, 0);
            this.dateEdit_ngayLap.Size = new System.Drawing.Size(161, 20);
            this.dateEdit_ngayLap.TabIndex = 2;
            // 
            // textEdit_maNV
            // 
            this.textEdit_maNV.Enabled = false;
            this.textEdit_maNV.Location = new System.Drawing.Point(152, 128);
            this.textEdit_maNV.Name = "textEdit_maNV";
            this.textEdit_maNV.Size = new System.Drawing.Size(161, 20);
            this.textEdit_maNV.TabIndex = 3;
            // 
            // textEdit_soTienThu
            // 
            this.textEdit_soTienThu.EditValue = "0";
            this.textEdit_soTienThu.Location = new System.Drawing.Point(152, 260);
            this.textEdit_soTienThu.Name = "textEdit_soTienThu";
            this.textEdit_soTienThu.Size = new System.Drawing.Size(161, 20);
            this.textEdit_soTienThu.TabIndex = 6;
            this.textEdit_soTienThu.EditValueChanged += new System.EventHandler(this.textEdit_soTienThu_EditValueChanged);
            // 
            // textEdit_TongTienNo
            // 
            this.textEdit_TongTienNo.EditValue = "0";
            this.textEdit_TongTienNo.Enabled = false;
            this.textEdit_TongTienNo.Location = new System.Drawing.Point(152, 190);
            this.textEdit_TongTienNo.Name = "textEdit_TongTienNo";
            this.textEdit_TongTienNo.Properties.NullText = "0";
            this.textEdit_TongTienNo.Size = new System.Drawing.Size(161, 20);
            this.textEdit_TongTienNo.TabIndex = 5;
            // 
            // label_ngayLap
            // 
            this.label_ngayLap.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_ngayLap.Appearance.Options.UseFont = true;
            this.label_ngayLap.Location = new System.Drawing.Point(30, 73);
            this.label_ngayLap.Name = "label_ngayLap";
            this.label_ngayLap.Size = new System.Drawing.Size(57, 16);
            this.label_ngayLap.TabIndex = 16;
            this.label_ngayLap.Text = "Ngày Lập:";
            // 
            // label_soTienThu
            // 
            this.label_soTienThu.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_soTienThu.Appearance.Options.UseFont = true;
            this.label_soTienThu.Location = new System.Drawing.Point(30, 263);
            this.label_soTienThu.Name = "label_soTienThu";
            this.label_soTienThu.Size = new System.Drawing.Size(75, 16);
            this.label_soTienThu.TabIndex = 17;
            this.label_soTienThu.Text = "Số Tiền Thu:";
            // 
            // label_tongTienNo
            // 
            this.label_tongTienNo.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_tongTienNo.Appearance.Options.UseFont = true;
            this.label_tongTienNo.Location = new System.Drawing.Point(30, 193);
            this.label_tongTienNo.Name = "label_tongTienNo";
            this.label_tongTienNo.Size = new System.Drawing.Size(82, 16);
            this.label_tongTienNo.TabIndex = 17;
            this.label_tongTienNo.Text = "Tổng Tiền Nợ:";
            // 
            // UserControl_AddPhieuThu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupControl_EditUser);
            this.Controls.Add(this.btn_Huy);
            this.Controls.Add(this.btn_Luu);
            this.Name = "UserControl_AddPhieuThu";
            this.Size = new System.Drawing.Size(1298, 618);
            ((System.ComponentModel.ISupportInitialize)(this.comboBox_makH.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_soTienNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_maPhieuThu.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl_EditUser)).EndInit();
            this.groupControl_EditUser.ResumeLayout(false);
            this.groupControl_EditUser.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_ngayLap.Properties.CalendarTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_ngayLap.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_maNV.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_soTienThu.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_TongTienNo.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btn_Huy;
        private DevExpress.XtraEditors.SimpleButton btn_Luu;
        private DevExpress.XtraEditors.ComboBoxEdit comboBox_makH;
        private DevExpress.XtraEditors.LabelControl label_soTienNo;
        private DevExpress.XtraEditors.LabelControl label_maPhieuThu;
        private DevExpress.XtraEditors.LabelControl label_maKH;
        private DevExpress.XtraEditors.TextEdit textEdit_soTienNo;
        private DevExpress.XtraEditors.TextEdit textEdit_maPhieuThu;
        private DevExpress.XtraEditors.LabelControl label_maNV;
        private DevExpress.XtraEditors.GroupControl groupControl_EditUser;
        private DevExpress.XtraEditors.DateEdit dateEdit_ngayLap;
        private DevExpress.XtraEditors.LabelControl label_ngayLap;
        private DevExpress.XtraEditors.TextEdit textEdit_maNV;
        private DevExpress.XtraEditors.TextEdit textEdit_soTienThu;
        private DevExpress.XtraEditors.LabelControl label_soTienThu;
        private DevExpress.XtraEditors.TextEdit textEdit_TongTienNo;
        private DevExpress.XtraEditors.LabelControl label_tongTienNo;
    }
}
