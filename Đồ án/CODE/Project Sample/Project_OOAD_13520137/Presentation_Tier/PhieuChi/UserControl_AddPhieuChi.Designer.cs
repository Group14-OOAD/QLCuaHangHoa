namespace Presentation_Tier
{
    partial class UserControl_AddPhieuChi
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(UserControl_AddPhieuChi));
            this.btn_Huy = new DevExpress.XtraEditors.SimpleButton();
            this.btn_Luu = new DevExpress.XtraEditors.SimpleButton();
            this.comboBox_maNCC = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label_soTienNo = new DevExpress.XtraEditors.LabelControl();
            this.label_maPhieuThu = new DevExpress.XtraEditors.LabelControl();
            this.label_maNCC = new DevExpress.XtraEditors.LabelControl();
            this.textEdit_soTienNo = new DevExpress.XtraEditors.TextEdit();
            this.textEdit_maPhieuChi = new DevExpress.XtraEditors.TextEdit();
            this.label_maNV = new DevExpress.XtraEditors.LabelControl();
            this.groupControl_EditUser = new DevExpress.XtraEditors.GroupControl();
            this.dateEdit_ngayLap = new DevExpress.XtraEditors.DateEdit();
            this.textEdit_maNV = new DevExpress.XtraEditors.TextEdit();
            this.textEdit_soTienChi = new DevExpress.XtraEditors.TextEdit();
            this.label_ngayLap = new DevExpress.XtraEditors.LabelControl();
            this.label_soTienChi = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.comboBox_maNCC.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_soTienNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_maPhieuChi.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl_EditUser)).BeginInit();
            this.groupControl_EditUser.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_ngayLap.Properties.CalendarTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_ngayLap.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_maNV.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_soTienChi.Properties)).BeginInit();
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
            // comboBox_maNCC
            // 
            this.comboBox_maNCC.Location = new System.Drawing.Point(152, 162);
            this.comboBox_maNCC.Name = "comboBox_maNCC";
            this.comboBox_maNCC.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBox_maNCC.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comboBox_maNCC.Size = new System.Drawing.Size(161, 20);
            this.comboBox_maNCC.TabIndex = 4;
            // 
            // label_soTienNo
            // 
            this.label_soTienNo.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_soTienNo.Appearance.Options.UseFont = true;
            this.label_soTienNo.Location = new System.Drawing.Point(30, 206);
            this.label_soTienNo.Name = "label_soTienNo";
            this.label_soTienNo.Size = new System.Drawing.Size(68, 16);
            this.label_soTienNo.TabIndex = 17;
            this.label_soTienNo.Text = "Số Tiền Nợ:";
            // 
            // label_maPhieuThu
            // 
            this.label_maPhieuThu.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_maPhieuThu.Appearance.Options.UseFont = true;
            this.label_maPhieuThu.Location = new System.Drawing.Point(30, 36);
            this.label_maPhieuThu.Name = "label_maPhieuThu";
            this.label_maPhieuThu.Size = new System.Drawing.Size(79, 16);
            this.label_maPhieuThu.TabIndex = 16;
            this.label_maPhieuThu.Text = "Mã Phiếu Chi:";
            // 
            // label_maNCC
            // 
            this.label_maNCC.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_maNCC.Appearance.Options.UseFont = true;
            this.label_maNCC.Location = new System.Drawing.Point(30, 163);
            this.label_maNCC.Name = "label_maNCC";
            this.label_maNCC.Size = new System.Drawing.Size(107, 16);
            this.label_maNCC.TabIndex = 14;
            this.label_maNCC.Text = "Mã Nhà Cung Cấp:";
            // 
            // textEdit_soTienNo
            // 
            this.textEdit_soTienNo.EditValue = "";
            this.textEdit_soTienNo.Location = new System.Drawing.Point(152, 203);
            this.textEdit_soTienNo.Name = "textEdit_soTienNo";
            this.textEdit_soTienNo.Properties.NullText = "0";
            this.textEdit_soTienNo.Size = new System.Drawing.Size(161, 20);
            this.textEdit_soTienNo.TabIndex = 5;
            // 
            // textEdit_maPhieuChi
            // 
            this.textEdit_maPhieuChi.Location = new System.Drawing.Point(152, 33);
            this.textEdit_maPhieuChi.Name = "textEdit_maPhieuChi";
            this.textEdit_maPhieuChi.Properties.MaxLength = 10;
            this.textEdit_maPhieuChi.Size = new System.Drawing.Size(161, 20);
            this.textEdit_maPhieuChi.TabIndex = 1;
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
            this.groupControl_EditUser.Controls.Add(this.comboBox_maNCC);
            this.groupControl_EditUser.Controls.Add(this.textEdit_maNV);
            this.groupControl_EditUser.Controls.Add(this.textEdit_maPhieuChi);
            this.groupControl_EditUser.Controls.Add(this.textEdit_soTienChi);
            this.groupControl_EditUser.Controls.Add(this.textEdit_soTienNo);
            this.groupControl_EditUser.Controls.Add(this.label_maNCC);
            this.groupControl_EditUser.Controls.Add(this.label_ngayLap);
            this.groupControl_EditUser.Controls.Add(this.label_soTienChi);
            this.groupControl_EditUser.Controls.Add(this.label_maPhieuThu);
            this.groupControl_EditUser.Controls.Add(this.label_soTienNo);
            this.groupControl_EditUser.Location = new System.Drawing.Point(32, 4);
            this.groupControl_EditUser.Name = "groupControl_EditUser";
            this.groupControl_EditUser.Size = new System.Drawing.Size(372, 312);
            this.groupControl_EditUser.TabIndex = 24;
            this.groupControl_EditUser.Text = "Thông tin phiếu chi";
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
            // textEdit_soTienChi
            // 
            this.textEdit_soTienChi.EditValue = "";
            this.textEdit_soTienChi.Location = new System.Drawing.Point(152, 238);
            this.textEdit_soTienChi.Name = "textEdit_soTienChi";
            this.textEdit_soTienChi.Size = new System.Drawing.Size(161, 20);
            this.textEdit_soTienChi.TabIndex = 6;
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
            // label_soTienChi
            // 
            this.label_soTienChi.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_soTienChi.Appearance.Options.UseFont = true;
            this.label_soTienChi.Location = new System.Drawing.Point(30, 241);
            this.label_soTienChi.Name = "label_soTienChi";
            this.label_soTienChi.Size = new System.Drawing.Size(71, 16);
            this.label_soTienChi.TabIndex = 17;
            this.label_soTienChi.Text = "Số Tiền Chi:";
            // 
            // UserControl_AddPhieuChi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupControl_EditUser);
            this.Controls.Add(this.btn_Huy);
            this.Controls.Add(this.btn_Luu);
            this.Name = "UserControl_AddPhieuChi";
            this.Size = new System.Drawing.Size(1298, 618);
            ((System.ComponentModel.ISupportInitialize)(this.comboBox_maNCC.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_soTienNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_maPhieuChi.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl_EditUser)).EndInit();
            this.groupControl_EditUser.ResumeLayout(false);
            this.groupControl_EditUser.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_ngayLap.Properties.CalendarTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_ngayLap.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_maNV.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_soTienChi.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btn_Huy;
        private DevExpress.XtraEditors.SimpleButton btn_Luu;
        private DevExpress.XtraEditors.ComboBoxEdit comboBox_maNCC;
        private DevExpress.XtraEditors.LabelControl label_soTienNo;
        private DevExpress.XtraEditors.LabelControl label_maPhieuThu;
        private DevExpress.XtraEditors.LabelControl label_maNCC;
        private DevExpress.XtraEditors.TextEdit textEdit_soTienNo;
        private DevExpress.XtraEditors.TextEdit textEdit_maPhieuChi;
        private DevExpress.XtraEditors.LabelControl label_maNV;
        private DevExpress.XtraEditors.GroupControl groupControl_EditUser;
        private DevExpress.XtraEditors.DateEdit dateEdit_ngayLap;
        private DevExpress.XtraEditors.LabelControl label_ngayLap;
        private DevExpress.XtraEditors.TextEdit textEdit_maNV;
        private DevExpress.XtraEditors.TextEdit textEdit_soTienChi;
        private DevExpress.XtraEditors.LabelControl label_soTienChi;
    }
}
