﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace FishClient
{
    public partial class FormCallRecordsTable : FormMenuBase
    {
        FishBll.Bll.CallRecordsBll _bll = new FishBll.Bll.CallRecordsBll();
        int _currentRowCompanyid = -1;
        string _currentcellname = "";
        List<FishEntity.CallRecordsEntity> _records = null;

        public FormCallRecordsTable()
        {
            InitializeComponent();

            menuStrip1.Items.Remove(tmiQuery);
            menuStrip1.Items.Remove(tmiAdd);
            menuStrip1.Items.Insert(menuStrip1.Items.IndexOf(tmiClose), tmiQuery);
            menuStrip1.Items.Insert( menuStrip1.Items.IndexOf (tmiClose) , tmiAdd );


            ReadColumnConfig( dataGridView1, "formcallrecordstables_1");
            ReadColumnConfig( dataGridView2 , "formcallrecordstables_2");

            cmbProvince.SelectedValueChanged -= cmbProvince_SelectedValueChanged;
            InitDataUtil.BindComboBoxData(cmbProvince, FishEntity.Constant.Province, true);
            cmbProvince.SelectedValueChanged+=cmbProvince_SelectedValueChanged;
            BindArea();

            List<FishEntity.DictEntity> list = InitDataUtil.DictList.FindAll((i) => { return i.pcode.Equals(FishEntity.Constant.Paymethod); });
            if (list == null)
            {
                list = new List<FishEntity.DictEntity>();
            }

           FishEntity.DictEntity  empty = new FishEntity.DictEntity();
            empty.name = "";
            empty.code = "-1";
            list.Insert(0, empty);

            cmbPayMethod.DataSource = list;
            cmbPayMethod.DisplayMember = "name";
            cmbPayMethod.ValueMember = "code";
        }

        void cmbProvince_SelectedValueChanged(object sender, EventArgs e)
        {
            BindArea();
        }

        protected void BindArea()
        {
            cmbArea.DataSource = null;
            if (cmbProvince.SelectedValue == null) return;
            string pcode = cmbProvince.SelectedValue.ToString();
            FishEntity.DictEntity pModel = InitDataUtil.DictList.Find((i) => { return i.code == pcode && i.pcode.Equals(FishEntity.Constant.Province); });
            int pid = 0;
            if (pModel != null)
            {
                pid = pModel.id;
            }


            List<FishEntity.DictEntity> list = InitDataUtil.DictList.FindAll((i) => { return i.pid == pid && i.pcode.Equals(FishEntity.Constant.Area); });
            if (list == null)
            {
                list = new List<FishEntity.DictEntity>();
            }

            FishEntity.DictEntity empty = new FishEntity.DictEntity();
            empty.code = "-1";
            empty.name = "";
            list.Insert(0, empty);


            cmbArea.ValueMember = "code";
            cmbArea.DisplayMember = "name";
            cmbArea.DataSource = list;

        }
        
        public override int Add()
        {
            if (dataGridView1.CurrentRow == null)
            {
                MessageBox.Show("请选择一条记录，再新增");
                return 0;
            }
            if (dataGridView1.CurrentRow.Cells["companyid"].Value == null) return 0;
            int companyid = 0;
            int.TryParse(dataGridView1.CurrentRow.Cells["companyid"].Value.ToString(), out companyid);

            _currentRowCompanyid = companyid;
            _currentcellname = dataGridView1.CurrentCell.OwningColumn.Name;

            FormCallRecords form = new FormCallRecords( companyid , false );
            form.MenuCode = "M111";
            form.RefreshDataEvent += form_RefreshDataEvent;
            form.ShowDialog() ;

            return base.Add();
        }

        void form_RefreshDataEvent(object sender, EventArgs e)
        {
            Query();

            try
            {
                foreach (DataGridViewRow row in dataGridView1.Rows)
                {
                    int companyid = 0;
                    int.TryParse(row.Cells["companyid"].Value.ToString(), out companyid);
                    if (companyid == _currentRowCompanyid)
                    {
                        dataGridView1.CurrentCell = row.Cells[_currentcellname];
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public override int Query()
        {
            string where =
                string.Format("  nextdate>='{0}' and nextdate<='{1}'",
                            dtpStart.Value.ToString("yyyy-MM-dd 00:00:00"),
                            dtpEnd.Value.ToString("yyyy-MM-dd 23:59:59"));

              string companyname = txtcompany.Text.Trim();
            if (string.IsNullOrEmpty(companyname) == false)
            {
                where += " and customer like '%"+ companyname+"%'";
            }


            //if( false == string.IsNullOrEmpty( txtZone.Text.Trim()))
            //{
            //    where +=" and zone like '%"+ txtZone.Text.Trim() +"%' ";
            //}
            if( cmbProvince.SelectedValue !=null && cmbProvince.SelectedValue.ToString() !="" )
            {
                where +=" and province='"+ cmbProvince.SelectedValue.ToString() +"'";
            }
            if( false == string.IsNullOrEmpty( txtRequire.Text.Trim()))
            {
                where += " and productrequire like '%"+ txtRequire.Text.Trim() +"%'";
            }
            if (false == string.IsNullOrEmpty(txtProducts.Text.Trim()))
            {
                where += " and temp.products like '%" + txtProducts.Text.Trim() + "%'";
            }
            if (cmbPayMethod.SelectedValue != null && cmbPayMethod.SelectedValue.ToString() != "-1")
            {
                where += " and paymethod ='" + cmbPayMethod.SelectedValue.ToString() + "'";
            }

            if (cmbArea.SelectedValue != null && cmbArea.SelectedValue.ToString()!="-1")
            {
                where+=" and zone ='"+ cmbArea.SelectedValue.ToString()+"'";
            }

            //if (rdbAsc.Checked)
            //{
            //    where += " order by nextdate asc ";
            //}
            //else
            //{
            //    where += " order by nextdate desc ";
            //}         

            _records = _bll.QueryCallRecordsTable(where );

            GetQinfo(_records);

            dataGridView1.AutoGenerateColumns = false;
            dataGridView1.DataSource = _records;

            dataGridView2.AutoGenerateColumns = false;
            dataGridView2.DataSource = _records;

            return base.Query();
        }

        protected void GetQinfo(List<FishEntity.CallRecordsEntity> list)
        {
            if (list == null) return;

            //string startdate = dtpStart.Value.ToString();
            //string enddate = dtpEnd.Value.ToShortDateString();

            FishBll.Bll.CallRecordsDetailBll detailBll = new FishBll.Bll.CallRecordsDetailBll();
            foreach (FishEntity.CallRecordsEntity item in list)
            {
                int count1 = 0;
                int count2 = 0;
                List<FishEntity.CallRecordsDetailEntnty> details = detailBll.GetRecordListByCompanyCode(item.customercode);
                if (details != null)
                {
                    string bj = "";
                    string cg = "";
                    //string datestr = "";
                    foreach (FishEntity.CallRecordsDetailEntnty de in details)
                    {
                        string datestr2 = de.currentdate.ToString("MM.dd");

                        if ( count1 <5 && de.quoteprice > 0)
                        {
                            count1++;
                            if (string.IsNullOrEmpty(bj) == false)
                            {
                                bj += "，\r\n";
                            }

                            bj += datestr2 + " " + de.specification + de.quoteprice+ de.brand;
                        }


                        if ( count2<5 && de.quoteprice > 0 )
                        {
                            count2++;
                            if (string.IsNullOrEmpty(cg) == false)
                            {
                                cg += "\r\n";
                            }

                            cg += datestr2 + " " + de.orderstate + ":" + de.weight + de.specification + de.saleprice;
                        }
                    }

                    item.quoteInfo = bj;
                    item.buyInfo = cg;
                }            
            }
        }

        protected void GetInfo( List<FishEntity.CallRecordsEntity> list)
        {
            if( list ==null ) return ;
            FishBll.Bll.CallRecordsDetailBll detailBll=new FishBll.Bll.CallRecordsDetailBll ();
            foreach (FishEntity.CallRecordsEntity item in list)
            {
                string bj = "";
                string cg = "";
                List<FishEntity.CallRecordsDetailEntnty> details = detailBll.GetModelList(" callrecordid=" + item.id);
                if (details != null)
                {
                    foreach (FishEntity.CallRecordsDetailEntnty de in details)
                    {
                        if (string.IsNullOrEmpty(bj) == false)
                        {
                            bj += "，";
                        }
                        bj += de.specification + de.quoteprice;
                        if (string.IsNullOrEmpty(cg) == false)
                        {
                            cg += "\r\n";
                        }
                        cg += de.orderstate + ":" + de.weight + de.specification + de.quoteprice;
                    }
                }

                item.quoteInfo = bj;
                item.buyInfo = cg;
            }
        }

        private void dataGridView2_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            if( e.ColumnIndex<0 || e.RowIndex<0) return ;

            if (dataGridView2.Columns[e.ColumnIndex].Name.Equals("maxcurrentdate", StringComparison.InvariantCultureIgnoreCase)||
                dataGridView2.Columns[e.ColumnIndex].Name.Equals("maxnextdate", StringComparison.InvariantCultureIgnoreCase)
                )
            {
                if (e.Value != null)
                {
                    try
                    {
                        DateTime dt = DateTime.Parse(e.Value.ToString());
                        e.Value = dt.ToString("MM.dd");
                    }
                    catch { }
                }
            }
        }

        private void dataGridView1_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            if (e.ColumnIndex < 0 || e.RowIndex < 0) return;
          
            string val = dataGridView1.Rows[e.RowIndex].Cells["cooperation"].Value.ToString();
            FishEntity.DictEntity dic  = InitDataUtil.DictList.Find((i) => { return i.pcode == FishEntity.Constant.Cooperation && i.code == val; });
            if (dic != null)
            {
                dataGridView1.Rows[e.RowIndex].Cells["cooperationstr"].Value = dic.name;
            }

            val = dataGridView1.Rows[e.RowIndex].Cells["paymethod"].Value.ToString();
            dic = InitDataUtil.DictList.Find((i) => {return i.pcode == FishEntity.Constant.Paymethod && i.code == val; });
            if (dic != null)
            {
                dataGridView1.Rows[e.RowIndex].Cells["paymethodstr"].Value = dic.name;
            }
            val = dataGridView1.Rows[e.RowIndex].Cells["customerproperty"].Value.ToString();
            dic = InitDataUtil.DictList.Find((i) => {return i.pcode == FishEntity.Constant.CustomerProperty && i.code == val; });
            if (dic != null)
            {
                dataGridView1.Rows[e.RowIndex].Cells["customerpropertystr"].Value = dic.name;
            }
            val = dataGridView1.Rows[e.RowIndex].Cells["products"].Value.ToString();
            dic = InitDataUtil.DictList.Find((i) => { return i.pcode == FishEntity.Constant.Products && i.code == val; });
            if (dic != null)
            {
                dataGridView1.Rows[e.RowIndex].Cells["productsstr"].Value = dic.name;
            }

            val = dataGridView1.Rows[e.RowIndex].Cells["requiredquantity"].Value.ToString();
            dic = InitDataUtil.DictList.Find((i) => { return i.pcode == FishEntity.Constant.RequiredProduct && i.code == val; });
            if (dic != null)
            {
                dataGridView1.Rows[e.RowIndex].Cells["requiredquantitystr"].Value = dic.name;
            }

        }

        private void 设置列宽度ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            UIForms.FormSetColumnWidth form = new UIForms.FormSetColumnWidth(dataGridView1.Columns,"formcallrecordstables_1");
            form.ShowDialog();

            ReadColumnConfig( dataGridView1 , "formcallrecordstables_1");
        }

        protected void ReadColumnConfig ( DataGridView dgv, string section )
        {
            string path = Application.StartupPath + "\\listconfig.ini";
            if (System.IO.File.Exists(path) == true)
            {
                foreach ( DataGridViewColumn col in dgv.Columns )
                {
                    string wstr = Utility.IniUtil.ReadIniValue(path, section , col.HeaderText);
                    int w = 0;
                    if (int.TryParse(wstr, out w))
                    {
                        col.Width = w;
                    }
                }
            }
        }

        private void dataGridView1_CellMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            if (e.ColumnIndex < 0 || e.RowIndex < 0) return;

            int companyid = 0;

            if (dataGridView1.Rows[e.RowIndex].Cells["companyid"].Value != null)
            {
                int.TryParse(dataGridView1.Rows[e.RowIndex].Cells["companyid"].Value.ToString(),out companyid );
            }
 
            FormCompany form = new FormCompany( companyid );
            form.MenuCode = "M005";
            form.ShowDialog();
        }

        private void 设置列宽ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            UIForms.FormSetColumnWidth form = new UIForms.FormSetColumnWidth(dataGridView2.Columns, "formcallrecordstables_2");
            form.ShowDialog();

            ReadColumnConfig( dataGridView2 , "formcallrecordstables_2");
        }

        private void FormCallRecordsTable_Load(object sender, EventArgs e)
        {
            dtpEnd.Value = DateTime.Now.AddMonths(1);
        }

        private void txtcompany_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                Query();
            }
        }

        private void rdbDesc_CheckedChanged(object sender, EventArgs e)
        {
            SortList( !rdbDesc.Checked);
        }

        private void SortList(bool asc)
        {
            _records.Sort(new DateSort(asc));
            dataGridView1.DataSource = null;
            dataGridView2.DataSource = null;
            dataGridView1.DataSource = _records;
            dataGridView2.DataSource = _records;
        }

        class DateSort : IComparer<FishEntity.CallRecordsEntity>
        {
            bool _asc = false;
            public DateSort(bool asc)
            {
                _asc = asc;
            }
            
            public int Compare(FishEntity.CallRecordsEntity obj1 , FishEntity.CallRecordsEntity obj2)
            {
                if (_asc)
                {
                    return obj1.maxnextdate.CompareTo(obj2.maxnextdate);
                }
                else
                {
                    return obj2.maxnextdate.CompareTo(obj1.maxnextdate);
                }
            }
        }
    }
}
