using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace FishClient
{
    public partial class FormCustomerAnalysisTable : FormMenuBase
    {
        FishBll.Bll.CallRecordsBll _bll = new FishBll.Bll.CallRecordsBll();


        public FormCustomerAnalysisTable()
        {
            InitializeComponent();
        }

        private void txtCustomer_TextChanged(object sender, EventArgs e)
        {

        }

        public override int Query()
        {
            String where = "";
            if (string.IsNullOrEmpty(txtCustomer.Text))
            {
                MessageBox.Show("请选择客户名称");
                return 0;
            }

            where += "customer ='"+ txtCustomer.Text .Trim()+"'";
            //if (cmbLinkman.SelectedValue != null && cmbLinkman.SelectedValue.ToString() != "-1")
            //{
            //    where += " and linkmancode='"+ cmbLinkman.SelectedValue.ToString() +"'";
            //}
            //string where1 = where + " order by currentdate desc";

            string linkmanstr = "";
            foreach (Control ctl in panel2.Controls)
            {
                if (ctl is CheckBox)
                {
                    CheckBox chk = ctl as CheckBox;
                    if (chk.Checked == false) continue;
                    if (chk.Tag == null) continue;
                    FishEntity.CustomerEntity customer = chk.Tag as FishEntity.CustomerEntity;
                    if (customer == null) continue;
                    if (string.IsNullOrEmpty(linkmanstr) == false)
                    {
                        linkmanstr+=",";
                    }
                    linkmanstr += "'" + customer.code +"'";
                }
            }
            if (string.IsNullOrEmpty(linkmanstr) == false)
            {
                where += " and linkmancode in ( "+ linkmanstr+" )";
            }
            
            if (cmbStatus.Text != null && cmbStatus.Text.ToString().Trim() != "")
            {
                where += " and orderstate='" + cmbStatus.Text.ToString().Trim() + "'";
            }
            if (cmbQuote.Text != null && cmbQuote.Text.ToString().Trim() != "")
            {
                where += " and quoteprice>0 ";
            }


            FishBll.Bll.CallRecordsDetailBll bll = new FishBll.Bll.CallRecordsDetailBll();
            List<FishEntity.CallRecordDetailEntityEx> records = bll.GetRecordDetailListByWhere(where);
            //FishBll.Bll.CallRecordsDetailBll detailBll = new FishBll.Bll.CallRecordsDetailBll();

            //string where2 = " callrecordid in( select id from t_callrecords where "+ where+" ) ";
           

            //List<FishEntity.CallRecordsDetailEntnty> details = detailBll.GetRecordListByWhere(where2);

            //foreach (FishEntity.CallRecordsEntity item in records)
            //{
            //    string bj = "";
            //    string cg = "";
            //    string no="";

            //    if (details == null) continue;

            //    List<FishEntity.CallRecordsDetailEntnty> list = details.FindAll((i) => { return i.callrecordid == item.id; });
            //    if (list == null) continue;

            //    foreach (FishEntity.CallRecordsDetailEntnty de in list )
            //    {
            //        string datestr2 = de.currentdate.ToString("MM.dd");

            //        if ( de.quoteprice > 0)
            //        {
            //            if (string.IsNullOrEmpty(bj) == false)
            //            {
            //                bj += "，\r\n";
            //            }

            //            bj += datestr2 + " " + de.specification + de.quoteprice + de.brand;
            //        }


            //        if ( de.quoteprice > 0)
            //        {
            //            if (string.IsNullOrEmpty(cg) == false)
            //            {
            //                cg += "\r\n";
            //            }

            //            cg += datestr2 + " " + de.orderstate + ":" + de.weight + de.specification + de.saleprice;
            //        }

            //       if( string.IsNullOrEmpty( no )==false )
            //       {
            //           no +="\r\n";
            //       }
            //        no +=de.no;

            //    }
            //    item.buyInfo = cg;
            //    item.quoteInfo = bj;
            //    item.orderNo = no;
            //}

            dataGridView1.AutoGenerateColumns = false;
            dataGridView1.DataSource = records;

            if (records == null || records.Count < 1)
            {
                MessageBox.Show("查无数据");
            }
            
            
            return base.Query();
        }

        private void txtCustomer_Click(object sender, EventArgs e)
        {
            FormCompanyList form = new FormCompanyList();
            form.StartPosition = FormStartPosition.CenterParent;
            if (form.ShowDialog() != System.Windows.Forms.DialogResult.OK) return;
            if (form.SelectCompany == null) return;
            txtCustomer.Text = form.SelectCompany.fullname;
            txtCustomer.Tag = form.SelectCompany.code;

            FishBll.Bll.CustomerBll bll = new FishBll.Bll.CustomerBll();
            List<FishEntity.CustomerEntity> mans = bll.GetCustomerOfCompany(form.SelectCompany.id);
            if (mans == null)
            {
                mans = new List<FishEntity.CustomerEntity>();
            }

            //FishEntity.CustomerEntity empty = new FishEntity.CustomerEntity();
            //empty.code = "-1";
            //empty.name="";
            //mans.Insert(0,empty );

            //cmbLinkman.DataSource = mans;
            //cmbLinkman.ValueMember = "code";
            //cmbLinkman.DisplayMember = "name";

            txtMan.Text = form.SelectCompany.salesman;
            txtMan.Tag = form.SelectCompany.salesmancode;


            panel2.Controls.Clear();
            foreach( FishEntity.CustomerEntity item in mans)
            {
                CheckBox chk = new CheckBox();
                chk.Text = item.name.Trim();
                chk.Tag = item;
                chk.AutoSize = true;
                chk.Checked = false;
                chk.Dock = DockStyle.Left;
                panel2.Controls.Add(chk);
            }
        }
    }
}
