namespace Presentation_Tier
{
    partial class UserControl_ListPhieuChi
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(UserControl_ListPhieuChi));
            this.gridControl_DSPhieuChi = new DevExpress.XtraGrid.GridControl();
            this.gridView_DSPhieuChi = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.btn_TimKiem = new DevExpress.XtraEditors.SimpleButton();
            this.label_maPhieuChi = new DevExpress.XtraEditors.LabelControl();
            this.textEdit_findMaPhieuChi = new DevExpress.XtraEditors.TextEdit();
            this.label_ngayLap = new DevExpress.XtraEditors.LabelControl();
            this.btn_reset = new DevExpress.XtraEditors.SimpleButton();
            this.comboBox_ngayLap = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label_notification = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_DSPhieuChi)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView_DSPhieuChi)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_findMaPhieuChi.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBox_ngayLap.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // gridControl_DSPhieuChi
            // 
            gridLevelNode1.RelationName = "Level1";
            this.gridControl_DSPhieuChi.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.gridControl_DSPhieuChi.Location = new System.Drawing.Point(43, 90);
            this.gridControl_DSPhieuChi.MainView = this.gridView_DSPhieuChi;
            this.gridControl_DSPhieuChi.Name = "gridControl_DSPhieuChi";
            this.gridControl_DSPhieuChi.Size = new System.Drawing.Size(1082, 287);
            this.gridControl_DSPhieuChi.TabIndex = 1;
            this.gridControl_DSPhieuChi.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView_DSPhieuChi});
            this.gridControl_DSPhieuChi.Load += new System.EventHandler(this.gridControl_DSPhieuChi_Load);
            // 
            // gridView_DSPhieuChi
            // 
            this.gridView_DSPhieuChi.Appearance.ColumnFilterButton.Options.UseTextOptions = true;
            this.gridView_DSPhieuChi.Appearance.ColumnFilterButton.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView_DSPhieuChi.Appearance.FocusedCell.Options.UseTextOptions = true;
            this.gridView_DSPhieuChi.Appearance.FocusedCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView_DSPhieuChi.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.gridView_DSPhieuChi.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView_DSPhieuChi.Appearance.Preview.Options.UseTextOptions = true;
            this.gridView_DSPhieuChi.Appearance.Preview.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView_DSPhieuChi.GridControl = this.gridControl_DSPhieuChi;
            this.gridView_DSPhieuChi.Name = "gridView_DSPhieuChi";
            this.gridView_DSPhieuChi.OptionsBehavior.Editable = false;
            this.gridView_DSPhieuChi.OptionsFind.AlwaysVisible = true;
            this.gridView_DSPhieuChi.OptionsFind.FindNullPrompt = "Nhập thông tin bất kỳ để tìm kiếm...";
            this.gridView_DSPhieuChi.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.gridView_DSPhieuChi.RowClick += new DevExpress.XtraGrid.Views.Grid.RowClickEventHandler(this.gridView_DSPhieuChi_RowClick);
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
            // label_maPhieuChi
            // 
            this.label_maPhieuChi.Appearance.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_maPhieuChi.Appearance.Options.UseFont = true;
            this.label_maPhieuChi.Location = new System.Drawing.Point(43, 7);
            this.label_maPhieuChi.Name = "label_maPhieuChi";
            this.label_maPhieuChi.Size = new System.Drawing.Size(79, 16);
            this.label_maPhieuChi.TabIndex = 28;
            this.label_maPhieuChi.Text = "Mã Phiếu Chi:";
            // 
            // textEdit_findMaPhieuChi
            // 
            this.textEdit_findMaPhieuChi.Location = new System.Drawing.Point(145, 6);
            this.textEdit_findMaPhieuChi.Name = "textEdit_findMaPhieuChi";
            this.textEdit_findMaPhieuChi.Size = new System.Drawing.Size(149, 20);
            this.textEdit_findMaPhieuChi.TabIndex = 0;
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
            // UserControl_ListPhieuChi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.comboBox_ngayLap);
            this.Controls.Add(this.label_notification);
            this.Controls.Add(this.label_maPhieuChi);
            this.Controls.Add(this.textEdit_findMaPhieuChi);
            this.Controls.Add(this.label_ngayLap);
            this.Controls.Add(this.btn_reset);
            this.Controls.Add(this.btn_TimKiem);
            this.Controls.Add(this.gridControl_DSPhieuChi);
            this.Name = "UserControl_ListPhieuChi";
            this.Size = new System.Drawing.Size(1298, 482);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_DSPhieuChi)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView_DSPhieuChi)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_findMaPhieuChi.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBox_ngayLap.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private DevExpress.XtraEditors.SimpleButton btn_TimKiem;
        public DevExpress.XtraGrid.GridControl gridControl_DSPhieuChi;
        public DevExpress.XtraGrid.Views.Grid.GridView gridView_DSPhieuChi;
        private DevExpress.XtraEditors.LabelControl label_maPhieuChi;
        private DevExpress.XtraEditors.TextEdit textEdit_findMaPhieuChi;
        private DevExpress.XtraEditors.LabelControl label_ngayLap;
        private DevExpress.XtraEditors.SimpleButton btn_reset;
        private DevExpress.XtraEditors.ComboBoxEdit comboBox_ngayLap;
        public System.Windows.Forms.Label label_notification;
    }
}
