using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace FishClient.UIControls
{
    public partial class FishInfoControl : UILibrary.TCBaseControl
    {
        public FishInfoControl()
        {
            InitializeComponent();

            BindData();
        }

        protected void BindData()
        {
            try
            {
                if (this.DesignMode) return;

                InitDataUtil.BindComboBoxData(cmbBand, FishEntity.Constant.Brand, true);
                InitDataUtil.BindComboBoxData(cmbCountry, FishEntity.Constant.CountryType, true);
                InitDataUtil.BindComboBoxData(cmbFishType, FishEntity.Constant.FishClass, true);
                InitDataUtil.BindComboBoxData(cmborigin, FishEntity.Constant.Origin, true);
                InitDataUtil.BindComboBoxData(cmbquality, FishEntity.Constant.GoodsEvaluation, true);
                InitDataUtil.BindComboBoxData(cmbTechClass, FishEntity.Constant.TechClass, true);

                InitDataUtil.BindComboBoxData(cmbName, FishEntity.Constant.Goods, true);
                InitDataUtil.BindComboBoxData(cmbSpecification, FishEntity.Constant.Specification, true);
                InitDataUtil.BindComboBoxData(cmbmanufacturers, FishEntity.Constant.Manufacturers, true);
                InitDataUtil.BindComboBoxData(cmbgoodsinfo, FishEntity.Constant.GoodsInfo, true);

                cmbState.DataSource = FishEntity.Variable.StateList;
                cmbState.DisplayMember = "name";
                cmbState.ValueMember = "code";

                cmbvalidate.Text = "有效";
            }
            catch { }
        }

        public void GetFish(FishEntity.ProductEntity entity)
        {
            entity.code = txtCode.Text;
            entity.name = cmbName.SelectedValue==null?string.Empty : cmbName.SelectedValue.ToString();
            if (cmbBand.SelectedValue != null)
            {
                entity.brand = cmbBand.SelectedValue.ToString();
            }
            else
            {
                entity.brand = string.Empty;
            }

            if (cmbState.SelectedValue != null)
            {
                entity.state = cmbState.SelectedValue.ToString();
            }
            else
            {
                entity.state = string.Empty;
            }

            entity.nature = cmbCountry.SelectedValue.ToString();

            entity.origin = cmborigin.SelectedValue.ToString();

            entity.type = cmbFishType.SelectedValue.ToString();

            entity.getinfotime = dtpgetinfotime.Value;
            entity.endinfotime = dtpendinfotime.Value;

            entity.techtype = cmbTechClass.SelectedValue.ToString();

            entity.specification = cmbSpecification.SelectedValue==null? string.Empty : cmbSpecification.SelectedValue.ToString();
            entity.productdate = txtproductdate.Text.Trim();
            entity.shelflife = (int)nudlife.Value;

            entity.quality = cmbquality.SelectedValue.ToString();
            entity.manufacturers = cmbmanufacturers.SelectedValue==null?string.Empty:cmbmanufacturers.SelectedValue.ToString();
            entity.factoryaddress = txtfactoryaddress.Text;
            entity.remark = txtremark.Text;

            entity.isdelete = cmbvalidate.Text.Equals("有效") ? 1 : 0;
            entity.shipno = txtshipno.Text.Trim();
            entity.billofgoods = txtbillofgoods.Text.Trim();
            entity.warehouse = txtwarehouse.Text.Trim();
            entity.cornerno = txtcornerno.Text.Trim();
            decimal temp = 0;
            decimal.TryParse(txtrate.Text , out temp );
            entity.tariffrate = temp;

            entity.goodsinfo = cmbgoodsinfo.SelectedValue == null ? string.Empty : cmbgoodsinfo.SelectedValue.ToString();
        }

        public void SetFish(FishEntity.ProductEntity entity)
        {
            if (entity == null) return;

            txtCode.Text = entity.code;
            txtfactoryaddress.Text = entity.factoryaddress;
            cmbmanufacturers.SelectedValue = entity.manufacturers;
            cmbName.SelectedValue = entity.name;
            cmborigin.SelectedValue = entity.origin;
            cmbquality.SelectedValue = entity.quality;
            txtremark.Text = entity.remark;
            cmbSpecification.SelectedValue = entity.specification;
            cmbBand.SelectedValue = entity.brand;
            cmbCountry.SelectedValue = entity.nature;
            cmbFishType.SelectedValue = entity.type;
            cmbState.SelectedValue = entity.state;
            cmbTechClass.SelectedValue = entity.techtype;
            if (entity.getinfotime != null)
            {
                dtpgetinfotime.Value = entity.getinfotime.Value;
            }
            if (entity.endinfotime != null)
            {
                dtpendinfotime.Value = entity.endinfotime.Value;
            }
            if (entity.productdate != null)
            {
               txtproductdate.Text  = entity.productdate;
            }
            if (entity.shelflife != null)
            {
                nudlife.Value = entity.shelflife;
            }

            txtshipno.Text = entity.shipno;
            txtbillofgoods.Text = entity.billofgoods;
            txtcornerno.Text = entity.cornerno;
            txtwarehouse.Text = entity.warehouse;
            txtrate.Text = entity.tariffrate.Value.ToString("f4");
            cmbvalidate.Text = entity.isdelete ==1? "有效":"无效";
            cmbgoodsinfo.SelectedValue = entity.goodsinfo;
        }

        public void Clear()
        {
            errorProvider1.Clear();

            txtCode.Text = string.Empty;
            txtfactoryaddress.Text = string.Empty;
            cmbmanufacturers.SelectedValue = string.Empty;
            cmbName.SelectedValue = string.Empty;
            txtremark.Text = string.Empty;
            cmbSpecification.SelectedValue = string.Empty;
            cmbBand.SelectedValue = string.Empty;
            cmbCountry.SelectedValue = string.Empty;
            cmbFishType.SelectedValue = string.Empty;
            cmborigin.SelectedValue = string.Empty;
            cmbquality.SelectedValue = string.Empty;
            cmbState.SelectedValue = FishEntity.Constant.STATE_QUOTE;
            cmbTechClass.SelectedValue = string.Empty;
            dtpendinfotime.Value = DateTime.Now;
            dtpgetinfotime.Value = DateTime.Now;
            txtproductdate.Text = string.Empty;
            nudlife.Value = 0;

            txtshipno.Text = string.Empty;
            txtbillofgoods.Text = string.Empty;
            txtwarehouse.Text = string.Empty;
            txtrate.Text = string.Empty;
            txtcornerno.Text = string.Empty;
            cmbvalidate.Text = "有效";
            cmbgoodsinfo.SelectedValue = string.Empty;

        }

        public bool Check()
        {
            errorProvider1.Clear();
            bool isok = true;
            if ( cmbName.SelectedValue == null || string.IsNullOrEmpty(cmbName.SelectedValue.ToString()))
            {
                errorProvider1.SetError(cmbName, "请选择品名");
                isok = false;
            }

            return isok;
        }
    }
}
