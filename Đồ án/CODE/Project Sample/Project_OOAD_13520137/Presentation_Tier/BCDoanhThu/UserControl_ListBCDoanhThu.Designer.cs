namespace Presentation_Tier
{
    partial class UserControl_ListBCDoanhThu
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
            this.gridControl_DSBCDoanhThu = new DevExpress.XtraGrid.GridControl();
            this.gridView_DSBCDoanhThu = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.label_notification = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_DSBCDoanhThu)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView_DSBCDoanhThu)).BeginInit();
            this.SuspendLayout();
            // 
            // gridControl_DSBCDoanhThu
            // 
            gridLevelNode1.RelationName = "Level1";
            this.gridControl_DSBCDoanhThu.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.gridControl_DSBCDoanhThu.Location = new System.Drawing.Point(17, 3);
            this.gridControl_DSBCDoanhThu.MainView = this.gridView_DSBCDoanhThu;
            this.gridControl_DSBCDoanhThu.Name = "gridControl_DSBCDoanhThu";
            this.gridControl_DSBCDoanhThu.Size = new System.Drawing.Size(1082, 287);
            this.gridControl_DSBCDoanhThu.TabIndex = 1;
            this.gridControl_DSBCDoanhThu.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView_DSBCDoanhThu});
            this.gridControl_DSBCDoanhThu.Load += new System.EventHandler(this.gridControl_DSBCDoanhThu_Load);
            // 
            // gridView_DSBCDoanhThu
            // 
            this.gridView_DSBCDoanhThu.Appearance.ColumnFilterButton.Options.UseTextOptions = true;
            this.gridView_DSBCDoanhThu.Appearance.ColumnFilterButton.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView_DSBCDoanhThu.Appearance.FocusedCell.Options.UseTextOptions = true;
            this.gridView_DSBCDoanhThu.Appearance.FocusedCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView_DSBCDoanhThu.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.gridView_DSBCDoanhThu.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView_DSBCDoanhThu.Appearance.Preview.Options.UseTextOptions = true;
            this.gridView_DSBCDoanhThu.Appearance.Preview.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView_DSBCDoanhThu.GridControl = this.gridControl_DSBCDoanhThu;
            this.gridView_DSBCDoanhThu.Name = "gridView_DSBCDoanhThu";
            this.gridView_DSBCDoanhThu.OptionsBehavior.Editable = false;
            this.gridView_DSBCDoanhThu.OptionsFind.AlwaysVisible = true;
            this.gridView_DSBCDoanhThu.OptionsFind.FindMode = DevExpress.XtraEditors.FindMode.Always;
            this.gridView_DSBCDoanhThu.OptionsFind.FindNullPrompt = "Nhập thông tin bất kỳ để tìm kiếm...";
            this.gridView_DSBCDoanhThu.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.gridView_DSBCDoanhThu.RowHeight = 1;
            this.gridView_DSBCDoanhThu.RowClick += new DevExpress.XtraGrid.Views.Grid.RowClickEventHandler(this.gridView_DSBCTonKho_RowClick);
            // 
            // label_notification
            // 
            this.label_notification.AutoSize = true;
            this.label_notification.Location = new System.Drawing.Point(423, 300);
            this.label_notification.Name = "label_notification";
            this.label_notification.Size = new System.Drawing.Size(0, 13);
            this.label_notification.TabIndex = 32;
            // 
            // UserControl_ListBCDoanhThu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.label_notification);
            this.Controls.Add(this.gridControl_DSBCDoanhThu);
            this.Name = "UserControl_ListBCDoanhThu";
            this.Size = new System.Drawing.Size(1298, 618);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_DSBCDoanhThu)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView_DSBCDoanhThu)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        public DevExpress.XtraGrid.GridControl gridControl_DSBCDoanhThu;
        public DevExpress.XtraGrid.Views.Grid.GridView gridView_DSBCDoanhThu;
        public System.Windows.Forms.Label label_notification;
    }
}
