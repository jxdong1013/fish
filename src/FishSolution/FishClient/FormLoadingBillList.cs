using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace FishClient
{
    public partial class FormLoadingBillList : FormBase
    {
        protected int _companyid = 0;
        public FormLoadingBillList( int id )
        {
            InitializeComponent();

            dataGridView1.BackgroundColor = this.BackColor;
            dataGridView1.AutoGenerateColumns = false;

            _companyid = id;

            FishBll.Bll.LoadingDetailBll bll = new FishBll.Bll.LoadingDetailBll();
            List<FishEntity.LoadingDetailVo> list = bll.GetDetailOfCompanyId(_companyid);
            dataGridView1.DataSource = list;

        }
    }
}
