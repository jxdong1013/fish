using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace FishClient.UIForms
{
    public partial class FormSelectCustomer : FormBase
    {
        int _companyId = 0;
        string _companycode = string.Empty;

        public FishEntity.CustomerEntity SelectedCustomer
        {
            get
            {
                if (dataGridView1.CurrentRow != null)
                {
                    return dataGridView1.CurrentRow.DataBoundItem as FishEntity.CustomerEntity;
                }
                return null;
            }
        }

        public FormSelectCustomer(string companycode)
        {
            InitializeComponent();
            this.Text = "请选择联系人";
            _companycode = companycode;
            FishBll.Bll.CustomerBll bll = new FishBll.Bll.CustomerBll();
            List<FishEntity.CustomerEntity> list = bll.GetCustomerOfCompany(_companycode);
            dataGridView1.AutoGenerateColumns = false;
            dataGridView1.DataSource = list;

            dataGridView1.BackgroundColor = this.BackColor;
        }

        public FormSelectCustomer( int companyId )
        {
            InitializeComponent();

            this.Text = "请选择联系人";
            _companyId = companyId;   
            FishBll.Bll.CustomerBll bll = new FishBll.Bll.CustomerBll();
            List<FishEntity.CustomerEntity> list = bll.GetCustomerOfCompany(_companyId);
            dataGridView1.AutoGenerateColumns = false;
            dataGridView1.DataSource = list;

            dataGridView1.BackgroundColor = this.BackColor;
        }

        private void dataGridView1_CellMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            if (e.ColumnIndex < 0 || e.RowIndex < 0) return;      
            this.DialogResult = System.Windows.Forms.DialogResult.OK;
        }
    }
}
