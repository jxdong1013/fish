using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace FishClient
{
    public partial class FormMenuBase : FormBase ,IOperate
    {
        private string _menuCode = "";
        public event Action<EventArgs> ClosingEvent = null;
        protected bool _isControlRole = true;

        public string MenuCode
        {
            get { return _menuCode; }
            set
            {
                _menuCode = value;
                SetButtonFunCode();
            }
        }

        private void SetButtonFunCode()
        {
            foreach ( UIControls.ToolStripMenuItemEx item in this.menuStrip1.Items)
            {
                if (item == null)
                {
                    MessageBox.Show("菜单类型不对");
                    continue;
                }
                string code = item.FunCode;
                item.Tag = _menuCode + code;
            }
        }

        public FormMenuBase()
        {
            InitializeComponent();
        }

        private void tmiAdd_Click(object sender, EventArgs e)
        {
            this.Add();            
        }

        private void tmiQuery_Click(object sender, EventArgs e)
        {
            this.Query();
        }

        private void tmiModify_Click(object sender, EventArgs e)
        {
            this.Modify();
        }

        private void tmiDelete_Click(object sender, EventArgs e)
        {
            this.Delete();
        }

       
        public virtual  int Add()
        {
            return 0;
        }

        public virtual int Query()
        {
            return 0;
        }

        public virtual int Modify()
        {
            return 0;
        }

        public virtual int Delete()
        {
            return 0;
        }

        private void FormMenuBase_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (ClosingEvent != null)
            {
                ClosingEvent(e);
            }
        }

        private void tmiExport_Click(object sender, EventArgs e)
        {
            this.Export();
        }

        public virtual int Export()
        {
            return 0;
        }

        public virtual void Previous()
        {
   
        }
        public virtual void Next()
        {
  
        }

        public virtual void Save()
        {
        }

        public virtual void Cancel()
        {
        }

        private void tmiPrevious_Click(object sender, EventArgs e)
        {
            Previous();
        }

        private void tmiNext_Click(object sender, EventArgs e)
        {
            Next();
        }

        private void tmiClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void tmiCancel_Click(object sender, EventArgs e)
        {
            Cancel();
        }

        private void tmiSave_Click(object sender, EventArgs e)
        {
            Save();
        }

        private void FormMenuBase_Load(object sender, EventArgs e)
        {
            if (_isControlRole)
            {
                ControlButtomRoles();
            }
        }
        

        protected void ControlButtomRoles()
        {
            if (FishEntity.Variable.Roles == null || FishEntity.Variable.Roles.Count < 1)
            {
                this.menuStrip1.Visible = false;
            }
            else
            {
                FishEntity.PersonRole role = FishEntity.Variable.Roles.Find( (i)=>{return i.funcode.Equals( _menuCode, StringComparison.OrdinalIgnoreCase);});
                if( role == null ) 
                {
                    this.menuStrip1 .Visible =false;
                    return;
                }
                List<FishEntity.PersonRole> roles = FishEntity.Variable.Roles.FindAll((i) => { return i.pid == role.funid; });
                if (roles == null || roles.Count < 1)
                {
                    this.menuStrip1.Visible = false;
                    return;
                }

                foreach (ToolStripMenuItem item in this.menuStrip1.Items)
                {
                    string code = item.Tag == null ? "" : item.Tag.ToString();
                    bool isExist = roles.Exists((i) => { return i.funcode.Equals(code, StringComparison.OrdinalIgnoreCase); });
                    item.Visible = isExist;                    
                }
            }
        }
    }


    public interface IOperate
    {
        int Add();
        int Query();
        int Modify();
        int Delete();
        int Export();
        void Previous();
        void Next();
        void Save();
        void Cancel();
    }
}
