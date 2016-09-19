namespace FishClient
{
    partial class FormSaleRecordReport
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            this.label1 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txtCompanyCode = new System.Windows.Forms.TextBox();
            this.txtCompanyName = new System.Windows.Forms.TextBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.no = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nature = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.specification = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.quoteprice = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.brand = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.orderstate = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.weight = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.saleprice = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.paymethod = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.payperiod = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.domestic_protein = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.domestic_tvn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.domestic_amine = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.domestic_sandsalt = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.domestic_graypart = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.domestic_sour = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.domestic_fat = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.domestic_lysine = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.domestic_methionine = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.domestic_aminototal = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(22, 16);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(41, 12);
            this.label1.TabIndex = 1;
            this.label1.Text = "客户：";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.txtCompanyCode);
            this.panel1.Controls.Add(this.txtCompanyName);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(3, 54);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(858, 47);
            this.panel1.TabIndex = 2;
            // 
            // txtCompanyCode
            // 
            this.txtCompanyCode.Cursor = System.Windows.Forms.Cursors.Hand;
            this.txtCompanyCode.Location = new System.Drawing.Point(69, 13);
            this.txtCompanyCode.Name = "txtCompanyCode";
            this.txtCompanyCode.ReadOnly = true;
            this.txtCompanyCode.Size = new System.Drawing.Size(58, 21);
            this.txtCompanyCode.TabIndex = 39;
            // 
            // txtCompanyName
            // 
            this.txtCompanyName.Cursor = System.Windows.Forms.Cursors.Hand;
            this.txtCompanyName.Location = new System.Drawing.Point(130, 13);
            this.txtCompanyName.Name = "txtCompanyName";
            this.txtCompanyName.ReadOnly = true;
            this.txtCompanyName.Size = new System.Drawing.Size(183, 21);
            this.txtCompanyName.TabIndex = 40;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.ColumnHeadersHeight = 45;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.no,
            this.nature,
            this.specification,
            this.quoteprice,
            this.brand,
            this.orderstate,
            this.weight,
            this.saleprice,
            this.paymethod,
            this.payperiod,
            this.domestic_protein,
            this.domestic_tvn,
            this.domestic_amine,
            this.domestic_sandsalt,
            this.domestic_graypart,
            this.domestic_sour,
            this.domestic_fat,
            this.domestic_lysine,
            this.domestic_methionine,
            this.domestic_aminototal,
            this.id});
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridView1.DefaultCellStyle = dataGridViewCellStyle3;
            this.dataGridView1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dataGridView1.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnEnter;
            this.dataGridView1.EnableHeadersVisualStyles = false;
            this.dataGridView1.Location = new System.Drawing.Point(3, 101);
            this.dataGridView1.Name = "dataGridView1";
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle4.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            dataGridViewCellStyle4.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView1.RowHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.dataGridView1.RowHeadersWidth = 30;
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.dataGridView1.RowsDefaultCellStyle = dataGridViewCellStyle5;
            this.dataGridView1.RowTemplate.Height = 23;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(858, 328);
            this.dataGridView1.TabIndex = 53;
            // 
            // no
            // 
            this.no.DataPropertyName = "no";
            this.no.HeaderText = "序号";
            this.no.Name = "no";
            this.no.ReadOnly = true;
            this.no.Width = 55;
            // 
            // nature
            // 
            this.nature.DataPropertyName = "nature";
            this.nature.HeaderText = "国别";
            this.nature.Name = "nature";
            this.nature.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.nature.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            // 
            // specification
            // 
            this.specification.DataPropertyName = "specification";
            this.specification.HeaderText = "品质规格";
            this.specification.Name = "specification";
            this.specification.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            // 
            // quoteprice
            // 
            this.quoteprice.DataPropertyName = "quoteprice";
            this.quoteprice.HeaderText = "报价";
            this.quoteprice.Name = "quoteprice";
            this.quoteprice.Width = 80;
            // 
            // brand
            // 
            this.brand.DataPropertyName = "brand";
            this.brand.HeaderText = "品牌";
            this.brand.Name = "brand";
            this.brand.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.brand.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.brand.Width = 80;
            // 
            // orderstate
            // 
            this.orderstate.DataPropertyName = "orderstate";
            this.orderstate.HeaderText = "订单";
            this.orderstate.Items.AddRange(new object[] {
            "",
            "确定",
            "预计"});
            this.orderstate.Name = "orderstate";
            this.orderstate.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.orderstate.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.orderstate.Width = 70;
            // 
            // weight
            // 
            this.weight.DataPropertyName = "weight";
            dataGridViewCellStyle1.Format = "N2";
            dataGridViewCellStyle1.NullValue = "0.00";
            this.weight.DefaultCellStyle = dataGridViewCellStyle1;
            this.weight.HeaderText = "重量(吨)";
            this.weight.Name = "weight";
            // 
            // saleprice
            // 
            this.saleprice.DataPropertyName = "saleprice";
            dataGridViewCellStyle2.Format = "N2";
            dataGridViewCellStyle2.NullValue = "0.00";
            this.saleprice.DefaultCellStyle = dataGridViewCellStyle2;
            this.saleprice.HeaderText = "成交单价";
            this.saleprice.Name = "saleprice";
            // 
            // paymethod
            // 
            this.paymethod.DataPropertyName = "paymethod";
            this.paymethod.HeaderText = "付款方式";
            this.paymethod.Name = "paymethod";
            this.paymethod.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.paymethod.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.paymethod.Width = 120;
            // 
            // payperiod
            // 
            this.payperiod.DataPropertyName = "payperiod";
            this.payperiod.HeaderText = "付款周期(天)";
            this.payperiod.Name = "payperiod";
            this.payperiod.Width = 70;
            // 
            // domestic_protein
            // 
            this.domestic_protein.DataPropertyName = "domestic_protein";
            this.domestic_protein.HeaderText = "蛋白";
            this.domestic_protein.Name = "domestic_protein";
            this.domestic_protein.Width = 70;
            // 
            // domestic_tvn
            // 
            this.domestic_tvn.DataPropertyName = "domestic_tvn";
            this.domestic_tvn.HeaderText = "TVN";
            this.domestic_tvn.Name = "domestic_tvn";
            this.domestic_tvn.Width = 85;
            // 
            // domestic_amine
            // 
            this.domestic_amine.DataPropertyName = "domestic_amine";
            this.domestic_amine.HeaderText = "组胺";
            this.domestic_amine.Name = "domestic_amine";
            this.domestic_amine.Width = 85;
            // 
            // domestic_sandsalt
            // 
            this.domestic_sandsalt.DataPropertyName = "domestic_sandsalt";
            this.domestic_sandsalt.HeaderText = "盐";
            this.domestic_sandsalt.Name = "domestic_sandsalt";
            this.domestic_sandsalt.Width = 85;
            // 
            // domestic_graypart
            // 
            this.domestic_graypart.DataPropertyName = "domestic_graypart";
            this.domestic_graypart.HeaderText = "灰份";
            this.domestic_graypart.Name = "domestic_graypart";
            this.domestic_graypart.Width = 85;
            // 
            // domestic_sour
            // 
            this.domestic_sour.DataPropertyName = "domestic_sour";
            this.domestic_sour.HeaderText = "酸价";
            this.domestic_sour.Name = "domestic_sour";
            this.domestic_sour.Width = 85;
            // 
            // domestic_fat
            // 
            this.domestic_fat.DataPropertyName = "domestic_fat";
            this.domestic_fat.HeaderText = "脂肪";
            this.domestic_fat.Name = "domestic_fat";
            this.domestic_fat.Width = 85;
            // 
            // domestic_lysine
            // 
            this.domestic_lysine.DataPropertyName = "domestic_lysine";
            this.domestic_lysine.HeaderText = "赖氨酸";
            this.domestic_lysine.Name = "domestic_lysine";
            this.domestic_lysine.Width = 85;
            // 
            // domestic_methionine
            // 
            this.domestic_methionine.DataPropertyName = "domestic_methionine";
            this.domestic_methionine.HeaderText = "蛋氨酸";
            this.domestic_methionine.Name = "domestic_methionine";
            this.domestic_methionine.Width = 85;
            // 
            // domestic_aminototal
            // 
            this.domestic_aminototal.DataPropertyName = "domestic_aminototal";
            this.domestic_aminototal.HeaderText = "氨总和";
            this.domestic_aminototal.Name = "domestic_aminototal";
            this.domestic_aminototal.Width = 85;
            // 
            // id
            // 
            this.id.DataPropertyName = "id";
            this.id.HeaderText = "id";
            this.id.Name = "id";
            this.id.Visible = false;
            // 
            // FormSaleRecordReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(864, 432);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.panel1);
            this.Name = "FormSaleRecordReport";
            this.Text = "销售记录简表";
            this.Controls.SetChildIndex(this.panel1, 0);
            this.Controls.SetChildIndex(this.dataGridView1, 0);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox txtCompanyCode;
        private System.Windows.Forms.TextBox txtCompanyName;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn no;
        private System.Windows.Forms.DataGridViewComboBoxColumn nature;
        private System.Windows.Forms.DataGridViewComboBoxColumn specification;
        private System.Windows.Forms.DataGridViewTextBoxColumn quoteprice;
        private System.Windows.Forms.DataGridViewComboBoxColumn brand;
        private System.Windows.Forms.DataGridViewComboBoxColumn orderstate;
        private System.Windows.Forms.DataGridViewTextBoxColumn weight;
        private System.Windows.Forms.DataGridViewTextBoxColumn saleprice;
        private System.Windows.Forms.DataGridViewComboBoxColumn paymethod;
        private System.Windows.Forms.DataGridViewTextBoxColumn payperiod;
        private System.Windows.Forms.DataGridViewTextBoxColumn domestic_protein;
        private System.Windows.Forms.DataGridViewTextBoxColumn domestic_tvn;
        private System.Windows.Forms.DataGridViewTextBoxColumn domestic_amine;
        private System.Windows.Forms.DataGridViewTextBoxColumn domestic_sandsalt;
        private System.Windows.Forms.DataGridViewTextBoxColumn domestic_graypart;
        private System.Windows.Forms.DataGridViewTextBoxColumn domestic_sour;
        private System.Windows.Forms.DataGridViewTextBoxColumn domestic_fat;
        private System.Windows.Forms.DataGridViewTextBoxColumn domestic_lysine;
        private System.Windows.Forms.DataGridViewTextBoxColumn domestic_methionine;
        private System.Windows.Forms.DataGridViewTextBoxColumn domestic_aminototal;
        private System.Windows.Forms.DataGridViewTextBoxColumn id;
    }
}