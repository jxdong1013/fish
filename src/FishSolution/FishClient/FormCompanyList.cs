using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace FishClient
{
    public partial class FormCompanyList : FormMenuBase
    {
        private FishEntity.CompanyEntity _selectCompany = null;

        public FishEntity.CompanyEntity SelectCompany
        {
            get
            {
                return _selectCompany;
            }
        }

        public FormCompanyList()
        {
            InitializeComponent();      
        }

        protected void AddMenuItem()
        {
            //tmiAdd.Visible = false;
            //tmiDelete.Visible = false;
            //tmiModify.Visible = false;
            //tmiExport.Visible = false;
            //tmiNext.Visible = false;
            //tmiPrevious.Visible = false;
            //tmiSave.Visible = false;
            //tmiCancel.Visible = false;

            dataGridView1.BackgroundColor = this.BackColor;
            dataGridView1.AutoGenerateColumns = false;
        }

        protected void InitData()
        {
            BindCheckBoxComboBoxData( FishEntity.Constant.Type);

            //BindData(cmbType, FishEntity.Constant.Type);

           InitDataUtil.BindComboBoxData(cmbGenerallevel, FishEntity.Constant.GeneralLevel, true  );

           InitDataUtil.BindComboBoxData(cmbactivelevel, FishEntity.Constant.ActiveLevel , true );

           InitDataUtil.BindComboBoxData(cmbCreditlevel, FishEntity.Constant.CreditLevel , true );

           InitDataUtil.BindComboBoxData(cmbrequiredlevel, FishEntity.Constant.RequiredLevel , true );

           InitDataUtil.BindComboBoxData(cmbloyalty, FishEntity.Constant.Loyalty , true );

           InitDataUtil.BindComboBoxData(cmbproducts, FishEntity.Constant.Products,true );

           InitDataUtil.BindComboBoxData(cmbManageSpecificate, FishEntity.Constant.ManageSpecificateDegree,true );

          InitDataUtil.BindComboBoxData(cmbmanageprojects, FishEntity.Constant.ManageProjects,true);

          InitDataUtil.BindComboBoxData(cmbCustomerProperty, FishEntity.Constant.CustomerProperty,true );

        }

        protected void BindCheckBoxComboBoxData(string key)
        {
            cmbType.Click += cmbType_Click;
            List<FishEntity.DictEntity> list = InitDataUtil.DictList.FindAll((i) => { return i.pcode.Equals(key); });
            UILibrary.CheckBoxComboBox.ListSelectionWrapper<FishEntity.DictEntity> listWraper = new UILibrary.CheckBoxComboBox.ListSelectionWrapper<FishEntity.DictEntity>(list, "name");
            cmbType.DataSource = listWraper;
            cmbType.DisplayMember = "nameConcatenated";
            cmbType.DisplayMemberSingleItem = "name";
            cmbType.ValueMember = "Selected";    
        }

        void cmbType_Click(object sender, EventArgs e)
        {
            cmbType.Focus();
        }

        protected void BindData(ComboBox cmb, string key)
        {
            List<FishEntity.DictEntity> list = InitDataUtil.DictList.FindAll((i) => { return i.pcode.Equals( key ); });
            cmb.DisplayMember = "name";
            cmb.ValueMember = "code";
            cmb.DataSource = list;
        }

        private void FormCompanyList_Load(object sender, EventArgs e)
        {
            AddMenuItem();

            InitData();

            menuStrip1.Visible = true;
            tmiAdd.Visible = true;
            tmiDelete.Visible = false;
            tmiModify.Visible = false;
            tmiExport.Visible = false;
            tmiNext.Visible = false;
            tmiPrevious.Visible = false;
            tmiSave.Visible = false;
            tmiCancel.Visible = false;
        }

        protected string GetQueryCondition()
        {
            string where = "1=1";

            if (FishEntity.Variable.User.roletype.Equals(FishEntity.Constant.Role_SalesMan))
            {//控制权限
                where += string.Format(" and salesmancode ='{0}'",FishEntity.Variable.User.id );
            }

            if (string.IsNullOrEmpty(txtcode.Text) == false)
            {
                where += string.Format(" and code like '%{0}%'", txtcode.Text.Trim());
            }

            if (string.IsNullOrEmpty(txtfullname.Text) == false)
            {
                where += string.Format(" and fullname like '%{0}%'", txtfullname.Text.Trim());
            }
            if (string.IsNullOrEmpty(txtShortName.Text) == false)
            {
                where += string.Format(" and shortname like'%{0}%'", txtShortName.Text.Trim());
            }

            foreach (UILibrary.CheckBoxComboBox.CheckBoxComboBoxItem item in cmbType.CheckBoxItems)
            {
                if (item.Checked)
                {
                    FishEntity.DictEntity kv = ((UILibrary.CheckBoxComboBox.ObjectSelectionWrapper<FishEntity.DictEntity>)item.ComboBoxItem).Item;

                    where += kv.code.Equals("国内供应商") ? " and type_suppliers = 1" : "";
                    where += kv.code.Equals("代理商") ? " and type_agents = 1" : "";
                    where += kv.code.Equals("客户") ? " and type_customer=1" : "";
                    where += kv.code.Equals("贸易商") ? " and type_merchants=1" : "";
                    where += kv.code.Equals("货代商") ? " and type_goods=1" : "";
                    where += kv.code.Equals("报盘商") ? " and type_quote=1" : "";
                }
            }

           
            if( cmbGenerallevel .SelectedValue !=null && cmbGenerallevel.SelectedValue.ToString() != string.Empty)
            {
                where += string.Format(" and generallevel='" + cmbGenerallevel.SelectedValue.ToString() +"'" );
            }
            if (cmbCreditlevel.SelectedValue != null && string.IsNullOrEmpty( cmbCreditlevel .SelectedValue.ToString() ) == false )
            {
                where += string.Format(" and creditlevel='" + cmbCreditlevel.SelectedValue.ToString() + "'");
            }
            if (cmbrequiredlevel.SelectedValue != null && string.IsNullOrEmpty ( cmbrequiredlevel.SelectedValue.ToString()) == false )
            {
                where += string.Format(" and requiredlevel='" + cmbrequiredlevel.SelectedValue.ToString() + "'");
            }
             if (cmbManageSpecificate.SelectedValue != null && string.IsNullOrEmpty( cmbManageSpecificate.SelectedValue.ToString() ) == false )
            {
                where += string.Format(" and managestandard='" + cmbManageSpecificate.SelectedValue.ToString() + "'");
            }
             if (cmbactivelevel.SelectedValue != null && string.IsNullOrEmpty( cmbactivelevel.SelectedValue.ToString() ) == false  )
            {
                where += string.Format(" and activelevel='" + cmbactivelevel.SelectedValue.ToString() + "'");
            }
              if (cmbloyalty.SelectedValue != null && string.IsNullOrEmpty( cmbloyalty .SelectedValue.ToString()) == false  )
            {
                where += string.Format(" and loyalty='" + cmbloyalty.SelectedValue.ToString() + "'");
            }
               if (cmbproducts.SelectedValue != null && string.IsNullOrEmpty( cmbproducts.SelectedValue.ToString() )==false  )
            {
                where += string.Format(" and products='" + cmbproducts.SelectedValue.ToString() + "'");
            }
            //if ( string.IsNullOrEmpty ( txtsalesman.Text ) == false )
            //{
            //    where += string.Format(" and salesman ='" + txtsalesman.Text.Trim() + "'");
            //}
            if ( string.IsNullOrEmpty ( txtarea.Text ) == false )
            {
                where += string.Format(" and area like'%" + txtarea.Text.Trim() + "%'");
            }
             if ( string.IsNullOrEmpty ( txtaddress.Text ) == false )
            {
                where += string.Format(" and address like'%" + txtaddress.Text.Trim() + "%'");
            }

            if ( cmbNature.SelectedValue !=null && string.IsNullOrEmpty( cmbNature.SelectedValue.ToString()) ==false  )
            {
                where += string.Format(" and nature ='" + cmbNature.SelectedValue.ToString () + "'");
            }
             if ( cmbmanageprojects.SelectedValue !=null  && string.IsNullOrEmpty( cmbmanageprojects.SelectedValue.ToString() ) ==false )
            {
                where += string.Format(" and manageprojects ='" + cmbmanageprojects.SelectedValue.ToString () + "'");
            }

            // if ( string.IsNullOrEmpty ( txtregistermoney.Text ) == false )
            //{
            //    where += string.Format(" and registermoney like '%" + txtregistermoney.Text.Trim() + "%'");
            //}
            if ( string.IsNullOrEmpty ( txtzip.Text ) == false )
            {
                where += string.Format(" and zip like '%" + txtzip.Text.Trim() + "%'");
            }
               if ( string.IsNullOrEmpty ( txtfox.Text ) == false )
            {
                where += string.Format(" and fox like '%" + txtfox.Text.Trim() + "%'");
            }
              if ( cmbCustomerProperty.SelectedValue !=null && string.IsNullOrEmpty( cmbCustomerProperty.SelectedValue.ToString() ) == false  )
            {
                where += string.Format(" and customerproperty ='" + cmbCustomerProperty.SelectedValue.ToString () + "'");
            }
                if ( string.IsNullOrEmpty ( txtCustomerGroup.Text ) == false )
            {
                where += string.Format(" and customergroup like '%" + txtCustomerGroup.Text.Trim() + "%'");
            }

            //if ( string.IsNullOrEmpty ( txtlinkman.Text ) == false )
            //{
            //    where += string.Format(" and linkman like '%" + txtlinkman.Text.Trim() + "%'");
            //}

            return where;
        }

        public override int Query()
        {
            string where = GetQueryCondition();
            FishBll.Bll.CompanyBll bll = new FishBll.Bll.CompanyBll();
            List<FishEntity.CompanyEntity> list = bll.GetModelList( where );

            dataGridView1.DataSource = list;

            return 1;
        }

        private void dataGridView1_CellMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            if (e.RowIndex < 0) return;

            if (dataGridView1.CurrentRow == null)
            {
                return;
            }
            this._selectCompany = dataGridView1.CurrentRow.DataBoundItem as FishEntity.CompanyEntity;
            this.DialogResult = System.Windows.Forms.DialogResult.OK;
        }

        public override int Add()
        {
            FormCompany form = new FormCompany();
            form.ShowDialog();

            return 1;
        }
    
    }
}
