namespace Presentation_Tier
{
    partial class UserControl_ListPhieuThu
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(UserControl_ListPhieuThu));
            this.gridControl_DSPhieuThu = new DevExpress.XtraGrid.GridControl();
            this.gridView_DSPhieuThu = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.btn_TimKiem = new DevExpress.XtraEditors.SimpleButton();
            this.label_maPhieuThu = new DevExpress.XtraEditors.LabelControl();
            this.textEdit_findMaPhieuThu = new DevExpress.XtraEditors.TextEdit();
            this.label_ngayLap = new DevExpress.XtraEditors.LabelControl();
            this.btn_reset = new DevExpress.XtraEditors.SimpleButton();
            this.comboBox_ngayLap = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label_notification = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_DSPhieuThu)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView_DSPhieuThu)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_findMaPhieuThu.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBox_ngayLap.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // gridControl_DSPhieuThu
            // 
            gridLevelNode1.RelationName = "Level1";
            this.gridControl_DSPhieuThu.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.gridControl_DSPhieuThu.Location = new System.Drawing.Point(43, 90);
            this.gridControl_DSPhieuThu.MainView = this.gridView_DSPhieuThu;
            this.gridControl_DSPhieuThu.Name = "gridControl_DSPhieuThu";
            this.gridControl_DSPhieuThu.Size = new System.Drawing.Size(1082, 287);
            this.gridControl_DSPhieuThu.TabIndex = 1;
            this.gridControl_DSPhieuThu.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView_DSPhieuThu});
            this.gridControl_DSPhieuThu.Load += new System.EventHandler(this.gridControl_DSPhieuThu_Load);
            // 
            // gridView_DSPhieuThu
            // 
            this.gridView_DSPhieuThu.Appearance.ColumnFilterButton.Options.UseTextOptions = true;
            this.gridView_DSPhieuThu.Appearance.ColumnFilterButton.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView_DSPhieuThu.Appearance.FocusedCell.Options.UseTextOptions = true;
            this.gridView_DSPhieuThu.Appearance.FocusedCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView_DSPhieuThu.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.gridView_DSPhieuThu.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView_DSPhieuThu.Appearance.Preview.Options.UseTextOptions = true;
            this.gridView_DSPhieuThu.Appearance.Preview.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView_DSPhieuThu.GridControl = this.gridControl_DSPhieuThu;
            this.gridView_DSPhieuThu.Name = "gridView_DSPhieuThu";
            this.gridView_DSPhieuThu.OptionsBehavior.Editable = false;
            this.gridView_DSPhieuThu.OptionsFind.AlwaysVisible = true;
            this.gridView_DSPhieuThu.OptionsFind.FindNullPrompt = "Nhập thông tin bất kỳ để tìm kiếm...";
            this.gridView_DSPhieuThu.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.gridView_DSPhieuThu.RowClick += new DevExpress.XtraGrid.Views.Grid.RowClickEventHandler(this.gridView_DSPhieuThu_RowClick);
            // 
            // btn_TimKiem
            // 
            this.btn_TimKiem.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_TimKiem.Appearance.Options.UseFont = true;
            this.btn_TimKiem.Image = ((System.Drawing.Image)(resources.GetObject("btn_TimKiem.Image")));
            this.btn_TimKiem.Location = new System.Drawing.Point(247, 46);
            this.btn_TimKiem.Name = "btn_TimKiem";
            this.btn_TimKiem.Size = new System.Drawing.Size(108, 38);
            this.btn_TimKiem.TabIndex = 4;
            this.btn_TimKiem.Text = "Tìm Kiếm";
            this.btn_TimKiem.Click += new System.EventHandler(this.btn_TimKiem_Click);
            // 
            // label_maPhieuThu
            // 
            this.label_maPhieuThu.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_maPhieuThu.Appearance.Options.UseFont = true;
            this.label_maPhieuThu.Location = new System.Drawing.Point(43, 7);
            this.label_maPhieuThu.Name = "label_maPhieuThu";
            this.label_maPhieuThu.Size = new System.Drawing.Size(83, 16);
            this.label_maPhieuThu.TabIndex = 28;
            this.label_maPhieuThu.Text = "Mã Phiếu Thu:";
            // 
            // textEdit_findMaPhieuThu
            // 
            this.textEdit_findMaPhieuThu.Location = new System.Drawing.Point(145, 6);
            this.textEdit_findMaPhieuThu.Name = "textEdit_findMaPhieuThu";
            this.textEdit_findMaPhieuThu.Size = new System.Drawing.Size(149, 20);
            this.textEdit_findMaPhieuThu.TabIndex = 0;
            // 
            // label_ngayLap
            // 
            this.label_ngayLap.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_ngayLap.Appearance.Options.UseFont = true;
            this.label_ngayLap.Location = new System.Drawing.Point(380, 7);
            this.label_ngayLap.Name = "label_ngayLap";
            this.label_ngayLap.Size = new System.Drawing.Size(57, 16);
            this.label_ngayLap.TabIndex = 31;
            this.label_ngayLap.Text = "Ngày Lập:";
            // 
            // btn_reset
            // 
            this.btn_reset.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_reset.Appearance.Options.UseFont = true;
            this.btn_reset.Image = ((System.Drawing.Image)(resources.GetObject("btn_reset.Image")));
            this.btn_reset.Location = new System.Drawing.Point(401, 46);
            this.btn_reset.Name = "btn_reset";
            this.btn_reset.Size = new System.Drawing.Size(108, 38);
            this.btn_reset.TabIndex = 5;
            this.btn_reset.Text = "Reset";
            this.btn_reset.Click += new System.EventHandler(this.btn_reset_Click);
            // 
            // comboBox_ngayLap
            // 
            this.comboBox_ngayLap.Location = new System.Drawing.Point(443, 6);
            this.comboBox_ngayLap.Name = "comboBox_ngayLap";
            this.comboBox_ngayLap.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBox_ngayLap.Size = new System.Drawing.Size(131, 20);
            this.comboBox_ngayLap.TabIndex = 33;
            // 
            // label_notification
            // 
            this.label_notification.AutoSize = true;
            this.label_notification.Location = new System.Drawing.Point(449, 387);
            this.label_notification.Name = "label_notification";
            this.label_notification.Size = new System.Drawing.Size(0, 13);
            this.label_notification.TabIndex = 32;
            // 
            // UserControl_ListPhieuThu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.comboBox_ngayLap);
            this.Controls.Add(this.label_notification);
            this.Controls.Add(this.label_maPhieuThu);
            this.Controls.Add(this.textEdit_findMaPhieuThu);
            this.Controls.Add(this.label_ngayLap);
            this.Controls.Add(this.btn_reset);
            this.Controls.Add(this.btn_TimKiem);
            this.Controls.Add(this.gridControl_DSPhieuThu);
            this.Name = "UserControl_ListPhieuThu";
            this.Size = new System.Drawing.Size(1298, 482);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_DSPhieuThu)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView_DSPhieuThu)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_findMaPhieuThu.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBox_ngayLap.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private DevExpress.XtraEditors.SimpleButton btn_TimKiem;
        public DevExpress.XtraGrid.GridControl gridControl_DSPhieuThu;
        public DevExpress.XtraGrid.Views.Grid.GridView gridView_DSPhieuThu;
        private DevExpress.XtraEditors.LabelControl label_maPhieuThu;
        private DevExpress.XtraEditors.TextEdit textEdit_findMaPhieuThu;
        private DevExpress.XtraEditors.LabelControl label_ngayLap;
        private DevExpress.XtraEditors.SimpleButton btn_reset;
        private DevExpress.XtraEditors.ComboBoxEdit comboBox_ngayLap;
        public System.Windows.Forms.Label label_notification;
    }
}
