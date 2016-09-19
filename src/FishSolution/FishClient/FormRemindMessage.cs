using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace FishClient
{
    public partial class FormRemindMessage : FormMenuBase
    {
        public event EventHandler ClickRemindEvent = null;

        public FormRemindMessage()
        {
            InitializeComponent();

            tmiAdd.Visible = false;
            tmiModify.Visible = false;
            tmiPrevious.Visible = false;
            tmiNext.Visible = false;
            tmiExport.Visible = false;
            tmiDelete.Visible = false;
            tmiSave.Visible = false;
            tmiCancel.Visible = false;
            dataGridView1.AutoGenerateColumns = false;
            dataGridView1.BackgroundColor = this.BackColor;

            Query();
        }

        public override int Query()
        {
            string _rolewhere = string.Empty;
            if (FishEntity.Variable.User.roletype.Equals(FishEntity.Constant.Role_SalesMan))
            {
                _rolewhere = string.Format(" and salesmancode ='{0}'", FishEntity.Variable.User.id);
            }             

            FishBll.Bll.RemindBll bll = new FishBll.Bll.RemindBll();
            string where = " TO_DAYS(nextlinkdate) = TO_DAYS(now())";
            List<FishEntity.RemindEntity> list = bll.GetRemind(where + _rolewhere );
            dataGridView1.DataSource = list;
            return 1;
        }

        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if( e.RowIndex <0 || e.ColumnIndex < 0 ) return;

            if (ClickRemindEvent != null)
            {
                ClickRemindEvent(this, EventArgs.Empty);
            }   
        }
    }
}
