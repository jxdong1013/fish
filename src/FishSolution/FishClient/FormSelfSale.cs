using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace FishClient
{
    public partial class FormSelfSale : FormMenuBase
    {
        FishBll.Bll.ProductSelfSaleBll _selfsaleBll = new FishBll.Bll.ProductSelfSaleBll();
        public event EventHandler ClickFishEvent = null;
        List<FishEntity.ProductSelfSaleVo> _list = null;

        protected void OnClickFish()
        {
            if (ClickFishEvent != null)
            {
                ClickFishEvent(this, EventArgs.Empty);
            }
        }

        public FormSelfSale()
        {
            InitializeComponent();            

            //tmiModify.Visible = false;
            //tmiDelete.Visible = false;
            //tmiPrevious.Visible = false;
            //tmiNext.Visible = false;
            //tmiSave.Visible = false;
            //tmiCancel.Visible = false;
            //tmiAdd.Visible = false;
            //tmiExport.Visible = false;

            dtpStart.Value = DateTime.Now.AddMonths(-2);
            dtpEnd.Value = DateTime.Now;

            UIControls.ToolStripMenuItemEx tmiQuoteImage = new UIControls.ToolStripMenuItemEx();
            tmiQuoteImage.Text = "报盘附件";
            tmiQuoteImage.FunCode = "50";
            tmiQuoteImage.Click += tmiQuoteImage_Click;
            menuStrip1.Items.Insert(menuStrip1.Items.IndexOf(tmiClose), tmiQuoteImage);

            UIControls.ToolStripMenuItemEx tmiAddFish = new UIControls.ToolStripMenuItemEx();
            tmiAddFish.Text = "新增鱼粉";
            tmiAddFish.FunCode = "51";
            tmiAddFish.Click += tmiAddFish_Click;
            menuStrip1.Items.Insert(menuStrip1.Items.IndexOf(tmiClose), tmiAddFish);

            FishEntity.SystemDataType item = new FishEntity.SystemDataType(string.Empty , string .Empty );
            List<FishEntity.SystemDataType> list = FishEntity.Variable.StateList.GetRange(0, FishEntity.Variable.StateList.Count);
            list.Insert(0, item);


            DealDataGridViewHeader();
        }

        protected void DealDataGridViewHeader()
        {
            UILibrary.TwoDimenDataGridView helper = new UILibrary.TwoDimenDataGridView(dataGridView1);
            UILibrary.TwoDimenDataGridView.TopHeader header1 = new UILibrary.TwoDimenDataGridView.TopHeader(1, 4, "自营");
            UILibrary.TwoDimenDataGridView.TopHeader header2 = new UILibrary.TwoDimenDataGridView.TopHeader(10, 8, "SGS指标");
            UILibrary.TwoDimenDataGridView.TopHeader header3 = new UILibrary.TwoDimenDataGridView.TopHeader(18,10,"实测化验指标");
            helper.Headers.Add(header1 );
            helper.Headers.Add(header2);
            helper.Headers.Add(header3);
        }


        void tmiQuoteImage_Click(object sender, EventArgs e)
        {
            if (dataGridView1.CurrentRow == null)
            {
                MessageBox.Show("请选择现货记录。");
                return;
            }

            int productid = 0;
            object obj = dataGridView1.CurrentRow.Cells["id"].Value;
            if (obj == null) return;
            if (int.TryParse(obj.ToString(), out productid) == false) return;

            FormImage form = new FormImage(productid, FishEntity.ImageTypeEnum.SGS);
            form.StartPosition = FormStartPosition.CenterParent;
            form.SetData(productid, FishEntity.ImageTypeEnum.SGS);
            form.ShowDialog();
        }

        void tmiAddFish_Click(object sender, EventArgs e)
        {
            OnClickFish();
        }

        private void FormQuote_Load(object sender, EventArgs e)
        {
            dataGridView1.BackgroundColor = this.BackColor;

            cmbValidate.Text = "有效";

        }

        protected string GetWhereCondition()
        {
            string where = string.Format(" 1= 1 ");
            if (false == string.IsNullOrEmpty(txtSupplier.Text))
            {
                where += string.Format(" and spotagent like '%{0}%'", txtSupplier.Text.Trim());
            }
            if (false == string.IsNullOrEmpty(txtFishCode.Text))
            {
                where += string.Format(" and code like '%{0}%'" ,txtFishCode.Text.Trim());
            }
            if (false == string.IsNullOrEmpty(txtLinkMan.Text))
            {
                where += string.Format(" and spotlinkman like '%{0}%'", txtLinkMan.Text.Trim());
            }
            if (false == string.IsNullOrEmpty(txtQuality.Text))
            {
                where += string.Format(" and quality like '%{0}%'", txtQuality.Text.Trim());
            }

            if (cmbValidate.Text.Equals("有效"))
            {
                where += string.Format(" and isdelete =1");
            }
            else if (cmbValidate.Text.Equals("无效"))
            {
                where += string.Format(" and isdelete= 0 ");
            }

            where += string.Format(" and createtime>='{0}' and createtime<='{1}'",
                dtpStart.Value.ToString("yyyy-MM-dd 00:00:00"),
                dtpEnd.Value.ToString("yyyy-MM-dd 23:59:59"));
           
            return where;
        }

        public override int Query()
        {
            menuStrip1.Focus();
            panel2.Controls.Clear();
            string where = GetWhereCondition();
            //List<FishEntity.ProductEntity> list = _bll.GetModelList(where);
            _list = _selfsaleBll.GetSelfSale(where);

            AddGroupRow(_list);

            dataGridView1.AutoGenerateColumns = false;
            dataGridView1.DataSource = _list;

            if (_list == null || _list.Count < 1 ) return 0;

            Add();

            return 1;
        }

        protected void AddGroupRow(List<FishEntity.ProductSelfSaleVo> list)
        {
            if (list == null || list .Count <1 ) return;
            IDictionary<string, FishEntity.ProductSelfSaleVo> groups = new Dictionary<string, FishEntity.ProductSelfSaleVo>();
            string specification = list[0].specification;
            foreach (FishEntity.ProductSelfSaleVo vo in list)
            {
                if (groups.ContainsKey(vo.specification))
                {
                    FishEntity.ProductSelfSaleVo group = groups[vo.specification];
                    group.saleremainweight += vo.saleremainweight;
                }
                else
                {
                    FishEntity.ProductSelfSaleVo newvo = new FishEntity.ProductSelfSaleVo();
                    newvo.specification = vo.specification;
                    newvo.saleremainweight = vo.saleremainweight;
                    newvo.code = "分组小计";
                    groups.Add(vo.specification, newvo );
                }
            }

            foreach (KeyValuePair<string, FishEntity.ProductSelfSaleVo> pair in groups)
            {
               int idx =  list.FindLastIndex( (i) => {return i.specification.Equals(pair.Key); });
               if (idx >= 0)
               {
                   list.Insert(idx+1, pair.Value);
               }
            }
        }


        public override int Add()
        {
            if (dataGridView1.CurrentRow == null)
            {
                MessageBox.Show("请选择要鱼粉记录。");
                return 0;
            }

            if (dataGridView1.CurrentRow.Cells["code"].Value !=null && dataGridView1.CurrentRow.Cells["code"].Value.ToString().Equals("分组小计"))
            {
                panel2.Controls.Clear();   
                return 0;
            }

       
            int productid = 0;

            //object obj = dataGridView1.CurrentRow.Cells["quotesuppliercode"].Value;
            //if (obj == null) return 0;
            //if ( string.IsNullOrEmpty( obj.ToString()) == true ) return 0;

            //obj = dataGridView1.CurrentRow.Cells["quotelinkmancode"].Value;
            //if (obj == null) return 0;
            //if ( string.IsNullOrEmpty( obj.ToString() ) == true ) return 0;

           object obj = dataGridView1.CurrentRow.Cells["id"].Value;
            if (obj == null) return 0;
            if (int.TryParse(obj.ToString(), out productid) == false) return 0;

            //companycode = dataGridView1.CurrentRow.Cells["quotesuppliercode"].Value.ToString();
            //linkmancode = dataGridView1.CurrentRow.Cells["quotelinkmancode"].Value.ToString();

            //string companyNameStr = dataGridView1.CurrentRow.Cells["quotesupplier"].Value.ToString();
            //string productcode = dataGridView1.CurrentRow.Cells["code"].Value.ToString();

            FormSelfSaleDetail form = new FormSelfSaleDetail(productid);
            form.ShowMenu(false);
            form.RefreshDataEvent += form_RefreshDataEvent;
            //form.ShowDialog();  
            form.TopLevel = false;
            //form.CaptionHeight = 0;
            form.ControlBox = false;
            form.Dock = DockStyle.Fill;
            form.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            panel2.Controls.Clear();
            panel2.Controls.Add(form);
            form.Show();

            return 1;
        }

        void form_RefreshDataEvent(object sender, ProductIdEventArgs e)
        {
            if (dataGridView1.CurrentRow == null) return;

            if (dataGridView1.CurrentRow.Cells["id"].Value == null) return;

            if( dataGridView1.CurrentRow.Cells["id"].Value .ToString().Equals( e.productid.ToString())==false ) return;

           //dataGridView1.CurrentRow.Cells["latestquote"].Value = e.latestedprice;

            //dataGridView1.CurrentRow.Cells["quotedollars"].Value = e.dollars;
            dataGridView1.CurrentRow.Cells["spotrmb"].Value = e.rmb;
           // dataGridView1.CurrentRow.Cells["rate"].Value = e.rate;
            dataGridView1.CurrentRow.Cells["spotstoragedate"].Value = e.latequotedate;

            dataGridView1.CurrentRow.Cells["spotagent"].Value = e.company;
            dataGridView1.CurrentRow.Cells["spotlinkman"].Value = e.customer;
        }

        private void dataGridView1_CellMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            //if (e.RowIndex < 0 || e.ColumnIndex < 0) return;
            //Add();
        }

        public override int Export()
        {
            //List<FishEntity.ProductEntity> list = dataGridView1.DataSource as List<FishEntity.ProductEntity>;
            //if (list == null || list.Count < 1) return 0;

            //SaveFileDialog dlg = new SaveFileDialog ();
            //dlg.Filter = "*.xls|*.xls";
            //if(dlg.ShowDialog()  != System.Windows.Forms.DialogResult.OK ) return 0;

            //string filepath = dlg.FileName;
            //ExportUtil.ExportQuote(list,filepath );


            return 1;
        }

        private void txtSupplier_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                Query();
            }
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            Add();

            SeeFishDetail(e.ColumnIndex, e.RowIndex);
        }

        private void SeeFishDetail(int colidx, int rowidx)
        {
            if (colidx < 0 || rowidx < 0) return;
            if (dataGridView1.Columns[colidx].Name.Equals("code"))
            {
                string productidStr = dataGridView1.Rows[rowidx].Cells["id"].Value.ToString();
                int productid = 0;
                int.TryParse(productidStr, out productid);
                if (productid < 1) return;
                FormFish form = new FormFish(productid);
                form.MenuCode = "M007";
                form.ShowDialog();
            }
        }

        private void dataGridView1_CellPainting(object sender, DataGridViewCellPaintingEventArgs e)
        {
            if (e.RowIndex < 0 || e.ColumnIndex < 0) return;
            if (dataGridView1.Rows[e.RowIndex].Cells["code"].Value == null) return;
            if (dataGridView1.Rows[e.RowIndex].Cells["code"].Value.ToString().Equals("分组小计"))
            {
                e.CellStyle.BackColor = Color.LightPink;
                e.CellStyle.SelectionBackColor = Color.LightPink;
                e.CellStyle.SelectionForeColor = e.CellStyle.ForeColor;                
            }
        }

        private void dataGridView1_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            if (e.RowIndex < 0 || e.ColumnIndex < 0) return;
            if (dataGridView1.Columns[e.ColumnIndex].Name.Equals("nature"))
            {
                if (e.Value != null)
                {
                    string natureid = e.Value.ToString();
                    FishEntity.DictEntity entity = InitDataUtil.DictList.Find((i) => { return i.code == natureid && i.pcode == FishEntity.Constant.CountryType; });
                    if (entity != null)
                    {
                        e.Value = entity.name;
                    }
                }
            }

            string fishcode = dataGridView1.Rows[e.RowIndex].Cells["code"].Value.ToString();
            if (fishcode.Equals("分组小计") == false)
            {
                SetValue(e.RowIndex, fishcode);
            }
        }


        private void SetValue(int rowidx, string code)
        {
            if (_list == null) return;
            FishEntity.ProductSelfSaleVo vo = _list.Find((i) => { return i.code == code; });
            if (vo == null) return;

            dataGridView1.Rows[rowidx].Cells["sgs_protein"].Value = vo.sgs_protein == 0 ? "" : vo.sgs_protein.ToString();
            dataGridView1.Rows[rowidx].Cells["sgs_tvn"].Value = vo.sgs_tvn == 0 ? "" : vo.sgs_tvn.ToString();
            dataGridView1.Rows[rowidx].Cells["sgs_fat"].Value = vo.sgs_fat == 0 ? "" : vo.sgs_fat.ToString();
            dataGridView1.Rows[rowidx].Cells["sgs_water"].Value = vo.sgs_water == 0 ? "" : vo.sgs_water.ToString();
            dataGridView1.Rows[rowidx].Cells["sgs_amine"].Value = vo.sgs_amine == 0 ? "" : vo.sgs_amine.ToString();
            dataGridView1.Rows[rowidx].Cells["sgs_ffa"].Value = vo.sgs_ffa == 0 ? "" : vo.sgs_ffa.ToString();
            dataGridView1.Rows[rowidx].Cells["sgs_sandsalt"].Value = vo.sgs_sandsalt == 0 ? "" : vo.sgs_sandsalt.ToString();
            dataGridView1.Rows[rowidx].Cells["sgs_graypart"].Value = vo.sgs_graypart == 0 ? "" : vo.sgs_graypart.ToString();

            dataGridView1.Rows[rowidx].Cells["domestic_protein"].Value = vo.domestic_protein == 0 ? "" : vo.domestic_protein.ToString();
            dataGridView1.Rows[rowidx].Cells["domestic_tvn"].Value = vo.domestic_tvn == 0 ? "" : vo.domestic_tvn.ToString();
            dataGridView1.Rows[rowidx].Cells["domestic_amine"].Value = vo.domestic_amine == 0 ? "" : vo.domestic_amine.ToString();
            dataGridView1.Rows[rowidx].Cells["domestic_sandsalt"].Value = vo.domestic_sandsalt == 0 ? "" : vo.domestic_sandsalt.ToString();
            dataGridView1.Rows[rowidx].Cells["domestic_graypart"].Value = vo.domestic_graypart == 0 ? "" : vo.domestic_graypart.ToString();
            dataGridView1.Rows[rowidx].Cells["domestic_fat"].Value = vo.domestic_fat == 0 ? "" : vo.domestic_fat.ToString();
            dataGridView1.Rows[rowidx].Cells["domestic_lysine"].Value = vo.domestic_lysine == 0 ? "" : vo.domestic_lysine.ToString();
            dataGridView1.Rows[rowidx].Cells["domestic_methionine"].Value = vo.domestic_methionine == 0 ? "" : vo.domestic_methionine.ToString();
            dataGridView1.Rows[rowidx].Cells["domestic_aminototal"].Value = vo.domestic_aminototal == 0 ? "" : vo.domestic_aminototal.ToString();
            dataGridView1.Rows[rowidx].Cells["domestic_sour"].Value = vo.domestic_sour == 0 ? "" : vo.domestic_sour.ToString();

        }
    
    

    }
}
