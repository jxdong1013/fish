using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace FishClient
{
    public partial class FormMain : FormBase
    {
        ThreadManager _threadManager = null;
        FormPushMessage _formPushMessage = null;
        MdiClient _mdiClient = null;
        public FormMain()
        {
            InitializeComponent();

            this.Location = new Point(-1000, -1000);    
        }                

        private void FormMain_Load(object sender, EventArgs e)
        {
            Login();                          
        }

        protected void GetUserRoles()
        {
            if (FishEntity.Variable.User == null) return;
            FishBll.Bll.PersonBll bll = new FishBll.Bll.PersonBll();
           FishEntity.Variable.Roles =   bll.GetPersionRoles(FishEntity.Variable.User.id);
        }

        protected void Login()
        {
            this.Hide();
            FormLogin form = new FormLogin();
            if (form.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                this.Location = new Point(0, 0);
                this.WindowState = FormWindowState.Maximized;
                this.Show();
                this.BringToFront();

                for (int i = 0; i < this.Controls.Count; i++)
                {
                    MdiClient client = this.Controls[i] as MdiClient;
                    if (client == null) continue;
                    _mdiClient = client;
                    _mdiClient.BackColor = Color.White;
                    break;                                         
                }

                GetUserRoles();

                LoadTreeMenu();

                ShowMenuByRoles();

                tSSLUser.Text =FishEntity.Variable.User==null ? string.Empty: FishEntity.Variable.User.realname;

                DrawMdiClientBackground();

                ShowPushMessageForm();

                StartBackThread();
                    
            }
            else
            {
                this.Close();
            }
        }

        /// <summary>
        /// 启动线程
        /// </summary>
        protected void StartBackThread()
        {
            _threadManager = new ThreadManager();
            _threadManager.UIAnnouncementCallBackEvent += _threadManager_UIAnnouncementCallBackEvent;
            _threadManager.StartThread();
          
        }

        /// <summary>
        /// 发现有新的信息，这在右下方弹出窗口
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void _threadManager_UIAnnouncementCallBackEvent(object sender, AnnouncementEventArgs e)
        {
            if (e.Announcement == null) return;
            if (this.InvokeRequired)
            {
                this.Invoke(new EventHandler<AnnouncementEventArgs>(_threadManager_UIAnnouncementCallBackEvent), new object[] { sender, e });
            }
            else
            {
                if (_formPushMessage == null)
                {
                    _formPushMessage = new FormPushMessage();
                    _formPushMessage.Location = new Point(-1000, 0);
                }
                else
                {
                    _formPushMessage.OpenFormEvent -= _formPushMessage_OpenFormEvent;
                    _formPushMessage.OpenFormEvent += _formPushMessage_OpenFormEvent;
                    _formPushMessage.SetPosition();
                }

                _formPushMessage.SetCustomer(e.Announcement);

                Utility.NativeMethods.ShowWindow(new System.Runtime.InteropServices.HandleRef(_formPushMessage, _formPushMessage.Handle), 4);         
            }
        }

        void _formPushMessage_OpenFormEvent(object sender, AnnouncementEventArgs e)
        {
            if ( e==null || e.Announcement == null) return;

            buttom_Click(btnTip, EventArgs.Empty);


            //buttom_Click(btnLinkman, EventArgs.Empty);

            //if (btnLinkman.Form != null && btnLinkman.Form is FormLinkman)
            //{
            //   (btnLinkman.Form as FormLinkman).SetCustomer(e.Announcement);
            //}                 
        }

        /// <summary>
        /// 停止线程
        /// </summary>
        public void StopBackThread()
        {
            if (_threadManager == null) return;
            _threadManager.StopThread();
        }  

        /// <summary>
        /// 显示主界面时，把消息弹出框隐藏在最左边
        /// </summary>
        protected void ShowPushMessageForm()
        {
            try
            {
                if (_formPushMessage == null)
                {
                    _formPushMessage = new FormPushMessage();
                }
                _formPushMessage.Show();
                _formPushMessage.Location = new Point(-1000, 0);
            }
            catch (Exception ex)
            {
                Utility.LogHelper.WriteException(ex);
            }
        }  

        protected void LoadTreeMenu()
        {
            btnRole.FormType = typeof(FormRoles);
            btnSystemData.FormType = typeof( FormSystemDataSet);
            btnProductData.FormType = typeof(FormProductDataSet);
            btnUserData.FormType = typeof(FormUserList);
            btnCompany.FormType = typeof(FormCompany);
            btnLinkman.FormType = typeof(FormLinkman);
            btnFish.FormType = typeof(FormFish);
            btnQuote.FormType = typeof(FormQuote);
            btnStorageBills.FormType = typeof(FormStorageBills);
            btnCallRecords.FormType = typeof(FormCallRecords);
            btnhomemadebill.FormType = typeof(FormHomemadeStorage);
            btnCheck.FormType = typeof(FormCheck);
            btnStorageOut.FormType = typeof(FormFoodOut);
            btngoods.FormType = typeof(FormLoadingBills);            

            btnCallRecordReport.FormType = typeof(FormCallRecordsTable);
            btnRequiredReport.FormType = typeof(FormRequredForecastReport);
            btnFlowingReport.FormType = typeof(FormSelftStorageFlowingReport);
            btnStorageReport.FormType = typeof(FormStorageReport);
            //btnCustomerAnsyleReport.FormType = typeof(FormCustomerAnalysisReport);
            btnCustomerAnsyleReport.FormType = typeof(FormCustomerAnalysisTable);

            btnInventoryAccount.FormType = typeof(FormInventory);
            btnTip.FormType = typeof(FormRemindMessage);

            btnFurtureContract.FormType = typeof(Contract.FormFuturesContract);
            btnProductContract1.FormType = typeof(Contract.FormProductContract1);
            btnProductContract2.FormType = typeof(Contract.FormProductContract2);

            btnConfirm.FormType=typeof(FormConfirm);
            btnSpot.FormType = typeof(FormSpot);
            btnSelfSale.FormType = typeof(FormSelfSale);
            btnSelfMake.FormType = typeof(FormSelfMake);
            btnSaleRecord.FormType = typeof(FormSaleRecordReport);
            btnFinish.FormType = typeof(FormFinish);
            
            btnRole.Image =  btnSystemData.Image = btnProductData.Image = btnUserData.Image = btnCompany.Image = btnLinkman.Image = btnFish.Image =   
            btnCallRecords.Image = btnCheck.Image = btngoods.Image = btnhomemadebill.Image = btnQuote.Image = btnStorageBills.Image = btnStorageOut.Image =
            btnCallRecordReport.Image = btnRequiredReport.Image = btnFlowingReport.Image = btnStorageReport.Image = btnCustomerAnsyleReport.Image = ImageUtil.ButtonLeftImageNormal; 
               
            btnFurtureContract.Image = btnProductContract1.Image = btnProductContract2.Image =
            btnConfirm.Image = btnSpot .Image =btnSelfSale.Image  = btnSelfMake.Image  = ImageUtil.ButtonLeftImageNormal;

            btnSaleRecord.Image = btnFinish.Image = ImageUtil.ButtonLeftImageNormal;
        }

        protected void ShowMenuByRoles()
        {
            if (FishEntity.Variable.Roles == null || FishEntity.Variable.Roles.Count < 1) return;

            ShowMenuByRoles(pushPanelItem1);
            ShowMenuByRoles(pushPanelItem2);
            ShowMenuByRoles(pushPanelItem3);
            ShowMenuByRoles(pushPanelItem4);
        }

        protected void ShowMenuByRoles(UILibrary.PushPanel.PushPanelItem pnl)
        {
            foreach (Control ctl in pnl.Controls)
            {
                UIControls.ButtonEx btn = ctl as UIControls.ButtonEx;
                if (btn == null) continue;
                if (string.IsNullOrEmpty(btn.FunctionCode))
                {
                    btn.Visible = false;
                    continue;
                }
                string code = btn.FunctionCode;
                bool isexist = FishEntity.Variable.Roles.Exists((i) => { return i.funcode.Equals(code, StringComparison.OrdinalIgnoreCase); });
                btn.Visible = isexist;
            }
        }

        protected Form ActivtorForm( Type formType)
        {
             return Activator.CreateInstance(formType) as Form;
        }

        private void DrawMdiClientBackground()
        {
            if (this.IsMdiContainer == false) return;
            if (_mdiClient == null) return;
            if (_mdiClient.ClientSize.Width <= 0 || _mdiClient.ClientSize.Height <= 0) return;
            string path = Application.StartupPath + "\\Images\\bgbar.jpg";
            if (System.IO.File.Exists(path) == false) return;
                    
            Image mdiBg_Image = Image.FromFile(path);
            System.Drawing.Bitmap myImg = new Bitmap(_mdiClient.ClientSize.Width, _mdiClient.ClientSize.Height);
            System.Drawing.Graphics myGraphics = System.Drawing.Graphics.FromImage(myImg);
            myGraphics.Clear( Color.White );

            int myX = 0;
            int myY = 0;
            myX = (myImg.Width - mdiBg_Image.Width) / 2;
            myY = (myImg.Height - mdiBg_Image.Height) / 2;

            myGraphics.DrawImage(mdiBg_Image, myX, myY, mdiBg_Image.Width, mdiBg_Image.Height);
            _mdiClient.BackgroundImage = myImg;
            myGraphics.Dispose();
        }

        private void FormMain_SizeChanged(object sender, EventArgs e)
        {
            DrawMdiClientBackground();
        }

        private void FormMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            StopBackThread();
        }

        private void buttom_Click(object sender, EventArgs e)
        {
            UIControls.ButtonEx currentBtn = sender as UIControls.ButtonEx;
            if (currentBtn == null) return;

            currentBtn.Image = ImageUtil.ButtomLeftImageSelected;

            foreach (UILibrary.PushPanel.PushPanelItem item in pushPanel1.Items)
            {
                foreach (Control ctl in item.Controls)
                {
                    UILibrary.SkinButtom btn = ctl as UILibrary.SkinButtom;
                    if (btn == null) continue;
                    if (btn.Equals(currentBtn)) continue;
                    btn.Image = ImageUtil.ButtonLeftImageNormal;
                }
            }


            if (currentBtn.Form == null) return;

            if (currentBtn.Form is FormFish)
            {
                FormFish form = currentBtn.Form as FormFish;
                form.ClickGBEvent += form_ClickGBEvent;
            }
            else if (currentBtn.Form is FormQuote )
            {
                FormQuote form = currentBtn.Form as FormQuote;
                form.ClickFishEvent += form_ClickFishEvent;
            }
            else if (currentBtn.Form is FormConfirm)
            {
                FormConfirm form = currentBtn.Form as FormConfirm;
                form.ClickFishEvent +=form_ClickFishEvent;
            }
            else if (currentBtn.Form is FormSpot)
            {
                FormSpot form = currentBtn.Form as FormSpot;
                form.ClickFishEvent+=form_ClickFishEvent;
            }
            else if (currentBtn.Form is FormSelfSale)
            {
                FormSelfSale form = currentBtn.Form as FormSelfSale;
                form.ClickFishEvent+=form_ClickFishEvent;
            }
            else if (currentBtn.Form is FormSelfMake)
            {
                FormSelfMake form = currentBtn.Form as FormSelfMake;
                form.ClickFishEvent+=form_ClickFishEvent;
            }
            else if (currentBtn.Form is FormRemindMessage)
            {
                FormRemindMessage form = currentBtn.Form as FormRemindMessage;
                form.ClickRemindEvent += form_ClickRemindEvent;
            }

            currentBtn.Form.MdiParent = this;
            currentBtn.Form.Show();
            if (currentBtn.Form.WindowState == FormWindowState.Minimized)
            {
                currentBtn.Form.WindowState = FormWindowState.Maximized;
            }
            currentBtn.Form.BringToFront();

        }

        void form_ClickRemindEvent(object sender, EventArgs e)
        {
            buttom_Click(btnCallRecords, EventArgs.Empty);
        }

        void form_ClickFishEvent(object sender, EventArgs e)
        {
            buttom_Click(btnFish, EventArgs.Empty);
        }

        void form_ClickGBEvent(object sender, EventArgs e)
        {
            buttom_Click(btnCheck, EventArgs.Empty);
        }      
    }
}
