using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace FishClient
{
    public partial class FormCallRecordOfCompnay : FormBase
    {
        public FormCallRecordOfCompnay(string companycode )
        {
            InitializeComponent();


            dataGridView1.BackgroundColor = this.BackColor;
            dataGridView1.AutoGenerateColumns = false;
            string where = string.Format( "customercode='{0}'", companycode ) ;
            FishBll.Bll.CallRecordsBll bll = new FishBll.Bll.CallRecordsBll();
            List<FishEntity.CallRecordsEntity> list = bll.GetModelList(where);
            dataGridView1.DataSource = list;                        
        }
    }
}
