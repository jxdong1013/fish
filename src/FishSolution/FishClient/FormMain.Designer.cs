namespace FishClient
{
    partial class FormMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormMain));
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.tSSLUser = new System.Windows.Forms.ToolStripStatusLabel();
            this.tSSLCopyRight = new System.Windows.Forms.ToolStripStatusLabel();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.splitter1 = new System.Windows.Forms.Splitter();
            this.panelLeft = new System.Windows.Forms.Panel();
            this.pushPanel1 = new UILibrary.PushPanel.PushPanel();
            this.pushPanelItem1 = new UILibrary.PushPanel.PushPanelItem();
            this.btnFish = new FishClient.UIControls.ButtonEx();
            this.btnLinkman = new FishClient.UIControls.ButtonEx();
            this.btnCompany = new FishClient.UIControls.ButtonEx();
            this.btnRole = new FishClient.UIControls.ButtonEx();
            this.btnUserData = new FishClient.UIControls.ButtonEx();
            this.btnProductData = new FishClient.UIControls.ButtonEx();
            this.btnSystemData = new FishClient.UIControls.ButtonEx();
            this.pushPanelItem2 = new UILibrary.PushPanel.PushPanelItem();
            this.btnCheck = new FishClient.UIControls.ButtonEx();
            this.btnCallRecords = new FishClient.UIControls.ButtonEx();
            this.btngoods = new FishClient.UIControls.ButtonEx();
            this.btnStorageOut = new FishClient.UIControls.ButtonEx();
            this.btnhomemadebill = new FishClient.UIControls.ButtonEx();
            this.btnStorageBills = new FishClient.UIControls.ButtonEx();
            this.btnFinish = new FishClient.UIControls.ButtonEx();
            this.btnSelfMake = new FishClient.UIControls.ButtonEx();
            this.btnSelfSale = new FishClient.UIControls.ButtonEx();
            this.btnSpot = new FishClient.UIControls.ButtonEx();
            this.btnConfirm = new FishClient.UIControls.ButtonEx();
            this.btnQuote = new FishClient.UIControls.ButtonEx();
            this.pushPanelItem3 = new UILibrary.PushPanel.PushPanelItem();
            this.btnSaleRecord = new FishClient.UIControls.ButtonEx();
            this.btnCustomerAnsyleReport = new FishClient.UIControls.ButtonEx();
            this.btnStorageReport = new FishClient.UIControls.ButtonEx();
            this.btnFlowingReport = new FishClient.UIControls.ButtonEx();
            this.btnRequiredReport = new FishClient.UIControls.ButtonEx();
            this.btnCallRecordReport = new FishClient.UIControls.ButtonEx();
            this.pushPanelItem4 = new UILibrary.PushPanel.PushPanelItem();
            this.btnProductContract2 = new FishClient.UIControls.ButtonEx();
            this.btnProductContract1 = new FishClient.UIControls.ButtonEx();
            this.btnFurtureContract = new FishClient.UIControls.ButtonEx();
            this.btnTip = new FishClient.UIControls.ButtonEx();
            this.btnInventoryAccount = new FishClient.UIControls.ButtonEx();
            this.statusStrip1.SuspendLayout();
            this.panelLeft.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pushPanel1)).BeginInit();
            this.pushPanel1.SuspendLayout();
            this.pushPanelItem1.SuspendLayout();
            this.pushPanelItem2.SuspendLayout();
            this.pushPanelItem3.SuspendLayout();
            this.pushPanelItem4.SuspendLayout();
            this.SuspendLayout();
            // 
            // statusStrip1
            // 
            this.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tSSLUser,
            this.tSSLCopyRight});
            this.statusStrip1.Location = new System.Drawing.Point(3, 529);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(923, 22);
            this.statusStrip1.TabIndex = 3;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // tSSLUser
            // 
            this.tSSLUser.Name = "tSSLUser";
            this.tSSLUser.Size = new System.Drawing.Size(0, 17);
            // 
            // tSSLCopyRight
            // 
            this.tSSLCopyRight.Name = "tSSLCopyRight";
            this.tSSLCopyRight.Size = new System.Drawing.Size(908, 17);
            this.tSSLCopyRight.Spring = true;
            this.tSSLCopyRight.Text = "杭州瑞阁微科技有限公司  电话：（0571）86961522";
            this.tSSLCopyRight.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // imageList1
            // 
            this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            this.imageList1.Images.SetKeyName(0, "node_normal.png");
            this.imageList1.Images.SetKeyName(1, "node_hover.png");
            // 
            // splitter1
            // 
            this.splitter1.Location = new System.Drawing.Point(153, 30);
            this.splitter1.Name = "splitter1";
            this.splitter1.Size = new System.Drawing.Size(3, 499);
            this.splitter1.TabIndex = 7;
            this.splitter1.TabStop = false;
            // 
            // panelLeft
            // 
            this.panelLeft.Controls.Add(this.pushPanel1);
            this.panelLeft.Dock = System.Windows.Forms.DockStyle.Left;
            this.panelLeft.Location = new System.Drawing.Point(3, 30);
            this.panelLeft.Name = "panelLeft";
            this.panelLeft.Size = new System.Drawing.Size(150, 499);
            this.panelLeft.TabIndex = 9;
            // 
            // pushPanel1
            // 
            this.pushPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pushPanel1.Items.AddRange(new UILibrary.PushPanel.PushPanelItem[] {
            this.pushPanelItem1,
            this.pushPanelItem2,
            this.pushPanelItem3,
            this.pushPanelItem4});
            this.pushPanel1.Location = new System.Drawing.Point(0, 0);
            this.pushPanel1.Name = "pushPanel1";
            this.pushPanel1.RoundStyle = UILibrary.RoundStyle.All;
            this.pushPanel1.Size = new System.Drawing.Size(150, 499);
            this.pushPanel1.TabIndex = 6;
            // 
            // pushPanelItem1
            // 
            this.pushPanelItem1.CaptionFont = new System.Drawing.Font("微软雅黑", 9F);
            this.pushPanelItem1.Controls.Add(this.btnFish);
            this.pushPanelItem1.Controls.Add(this.btnLinkman);
            this.pushPanelItem1.Controls.Add(this.btnCompany);
            this.pushPanelItem1.Controls.Add(this.btnRole);
            this.pushPanelItem1.Controls.Add(this.btnUserData);
            this.pushPanelItem1.Controls.Add(this.btnProductData);
            this.pushPanelItem1.Controls.Add(this.btnSystemData);
            this.pushPanelItem1.Name = "pushPanelItem1";
            this.pushPanelItem1.Padding = new System.Windows.Forms.Padding(10, 10, 0, 0);
            this.pushPanelItem1.RoundStyle = UILibrary.RoundStyle.All;
            this.pushPanelItem1.Text = "数据设置";
            // 
            // btnFish
            // 
            this.btnFish.BackColor = System.Drawing.Color.Transparent;
            this.btnFish.ControlState = UILibrary.ControlState.Normal;
            this.btnFish.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnFish.DownBack = null;
            this.btnFish.DrawType = UILibrary.DrawStyle.None;
            this.btnFish.FormType = null;
            this.btnFish.FunctionCode = "M007";
            this.btnFish.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnFish.Location = new System.Drawing.Point(12, 202);
            this.btnFish.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnFish.MouseBack = null;
            this.btnFish.Name = "btnFish";
            this.btnFish.NormlBack = null;
            this.btnFish.Padding = new System.Windows.Forms.Padding(0, 0, 5, 0);
            this.btnFish.Size = new System.Drawing.Size(132, 28);
            this.btnFish.TabIndex = 11;
            this.btnFish.Text = "鱼粉资料";
            this.btnFish.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnFish.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnFish.UseVisualStyleBackColor = false;
            this.btnFish.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnLinkman
            // 
            this.btnLinkman.BackColor = System.Drawing.Color.Transparent;
            this.btnLinkman.ControlState = UILibrary.ControlState.Normal;
            this.btnLinkman.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnLinkman.DownBack = null;
            this.btnLinkman.DrawType = UILibrary.DrawStyle.None;
            this.btnLinkman.FormType = null;
            this.btnLinkman.FunctionCode = "M006";
            this.btnLinkman.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnLinkman.Location = new System.Drawing.Point(12, 174);
            this.btnLinkman.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnLinkman.MouseBack = null;
            this.btnLinkman.Name = "btnLinkman";
            this.btnLinkman.NormlBack = null;
            this.btnLinkman.Padding = new System.Windows.Forms.Padding(0, 0, 5, 0);
            this.btnLinkman.Size = new System.Drawing.Size(132, 28);
            this.btnLinkman.TabIndex = 10;
            this.btnLinkman.Text = "联系人";
            this.btnLinkman.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnLinkman.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnLinkman.UseVisualStyleBackColor = false;
            this.btnLinkman.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnCompany
            // 
            this.btnCompany.BackColor = System.Drawing.Color.Transparent;
            this.btnCompany.ControlState = UILibrary.ControlState.Normal;
            this.btnCompany.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnCompany.DownBack = null;
            this.btnCompany.DrawType = UILibrary.DrawStyle.None;
            this.btnCompany.FormType = null;
            this.btnCompany.FunctionCode = "M005";
            this.btnCompany.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCompany.Location = new System.Drawing.Point(12, 146);
            this.btnCompany.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnCompany.MouseBack = null;
            this.btnCompany.Name = "btnCompany";
            this.btnCompany.NormlBack = null;
            this.btnCompany.Padding = new System.Windows.Forms.Padding(0, 0, 5, 0);
            this.btnCompany.Size = new System.Drawing.Size(132, 28);
            this.btnCompany.TabIndex = 9;
            this.btnCompany.Text = "往来单位";
            this.btnCompany.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCompany.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCompany.UseVisualStyleBackColor = false;
            this.btnCompany.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnRole
            // 
            this.btnRole.BackColor = System.Drawing.Color.Transparent;
            this.btnRole.ControlState = UILibrary.ControlState.Normal;
            this.btnRole.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnRole.DownBack = null;
            this.btnRole.DrawType = UILibrary.DrawStyle.None;
            this.btnRole.FormType = null;
            this.btnRole.FunctionCode = "M004";
            this.btnRole.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRole.Location = new System.Drawing.Point(12, 118);
            this.btnRole.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnRole.MouseBack = null;
            this.btnRole.Name = "btnRole";
            this.btnRole.NormlBack = null;
            this.btnRole.Padding = new System.Windows.Forms.Padding(0, 0, 5, 0);
            this.btnRole.Size = new System.Drawing.Size(132, 28);
            this.btnRole.TabIndex = 12;
            this.btnRole.Text = "权限管理";
            this.btnRole.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRole.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnRole.UseVisualStyleBackColor = false;
            this.btnRole.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnUserData
            // 
            this.btnUserData.BackColor = System.Drawing.Color.Transparent;
            this.btnUserData.ControlState = UILibrary.ControlState.Normal;
            this.btnUserData.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnUserData.DownBack = null;
            this.btnUserData.DrawType = UILibrary.DrawStyle.None;
            this.btnUserData.FormType = null;
            this.btnUserData.FunctionCode = "M003";
            this.btnUserData.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnUserData.Location = new System.Drawing.Point(12, 90);
            this.btnUserData.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnUserData.MouseBack = null;
            this.btnUserData.Name = "btnUserData";
            this.btnUserData.NormlBack = null;
            this.btnUserData.Padding = new System.Windows.Forms.Padding(0, 0, 5, 0);
            this.btnUserData.Size = new System.Drawing.Size(132, 28);
            this.btnUserData.TabIndex = 8;
            this.btnUserData.Text = "人员数据";
            this.btnUserData.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnUserData.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnUserData.UseVisualStyleBackColor = false;
            this.btnUserData.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnProductData
            // 
            this.btnProductData.BackColor = System.Drawing.Color.Transparent;
            this.btnProductData.ControlState = UILibrary.ControlState.Normal;
            this.btnProductData.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnProductData.DownBack = null;
            this.btnProductData.DrawType = UILibrary.DrawStyle.None;
            this.btnProductData.FormType = null;
            this.btnProductData.FunctionCode = "M002";
            this.btnProductData.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnProductData.Location = new System.Drawing.Point(12, 62);
            this.btnProductData.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnProductData.MouseBack = null;
            this.btnProductData.Name = "btnProductData";
            this.btnProductData.NormlBack = null;
            this.btnProductData.Padding = new System.Windows.Forms.Padding(0, 0, 5, 0);
            this.btnProductData.Size = new System.Drawing.Size(132, 28);
            this.btnProductData.TabIndex = 7;
            this.btnProductData.Text = "产品数据";
            this.btnProductData.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnProductData.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnProductData.UseVisualStyleBackColor = false;
            this.btnProductData.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnSystemData
            // 
            this.btnSystemData.BackColor = System.Drawing.Color.Transparent;
            this.btnSystemData.ControlState = UILibrary.ControlState.Normal;
            this.btnSystemData.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnSystemData.DownBack = null;
            this.btnSystemData.DrawType = UILibrary.DrawStyle.None;
            this.btnSystemData.FormType = null;
            this.btnSystemData.FunctionCode = "M001";
            this.btnSystemData.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSystemData.Location = new System.Drawing.Point(12, 34);
            this.btnSystemData.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnSystemData.MouseBack = null;
            this.btnSystemData.Name = "btnSystemData";
            this.btnSystemData.NormlBack = null;
            this.btnSystemData.Padding = new System.Windows.Forms.Padding(0, 0, 5, 0);
            this.btnSystemData.Size = new System.Drawing.Size(132, 28);
            this.btnSystemData.TabIndex = 6;
            this.btnSystemData.Text = "系统数据";
            this.btnSystemData.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSystemData.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnSystemData.UseVisualStyleBackColor = false;
            this.btnSystemData.Click += new System.EventHandler(this.buttom_Click);
            // 
            // pushPanelItem2
            // 
            this.pushPanelItem2.CaptionFont = new System.Drawing.Font("微软雅黑", 9F);
            this.pushPanelItem2.Controls.Add(this.btnCheck);
            this.pushPanelItem2.Controls.Add(this.btnCallRecords);
            this.pushPanelItem2.Controls.Add(this.btngoods);
            this.pushPanelItem2.Controls.Add(this.btnStorageOut);
            this.pushPanelItem2.Controls.Add(this.btnhomemadebill);
            this.pushPanelItem2.Controls.Add(this.btnStorageBills);
            this.pushPanelItem2.Controls.Add(this.btnFinish);
            this.pushPanelItem2.Controls.Add(this.btnSelfMake);
            this.pushPanelItem2.Controls.Add(this.btnSelfSale);
            this.pushPanelItem2.Controls.Add(this.btnSpot);
            this.pushPanelItem2.Controls.Add(this.btnConfirm);
            this.pushPanelItem2.Controls.Add(this.btnQuote);
            this.pushPanelItem2.Name = "pushPanelItem2";
            this.pushPanelItem2.Padding = new System.Windows.Forms.Padding(10, 10, 0, 0);
            this.pushPanelItem2.RoundStyle = UILibrary.RoundStyle.All;
            this.pushPanelItem2.Text = "业务流程";
            // 
            // btnCheck
            // 
            this.btnCheck.BackColor = System.Drawing.Color.Transparent;
            this.btnCheck.ControlState = UILibrary.ControlState.Normal;
            this.btnCheck.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnCheck.DownBack = null;
            this.btnCheck.DrawType = UILibrary.DrawStyle.None;
            this.btnCheck.FormType = null;
            this.btnCheck.FunctionCode = "M112";
            this.btnCheck.Location = new System.Drawing.Point(12, 342);
            this.btnCheck.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnCheck.MouseBack = null;
            this.btnCheck.Name = "btnCheck";
            this.btnCheck.NormlBack = null;
            this.btnCheck.Size = new System.Drawing.Size(132, 28);
            this.btnCheck.TabIndex = 7;
            this.btnCheck.Text = "国标检测";
            this.btnCheck.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCheck.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCheck.UseVisualStyleBackColor = false;
            this.btnCheck.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnCallRecords
            // 
            this.btnCallRecords.BackColor = System.Drawing.Color.Transparent;
            this.btnCallRecords.ControlState = UILibrary.ControlState.Normal;
            this.btnCallRecords.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnCallRecords.DownBack = null;
            this.btnCallRecords.DrawType = UILibrary.DrawStyle.None;
            this.btnCallRecords.FormType = null;
            this.btnCallRecords.FunctionCode = "M111";
            this.btnCallRecords.Location = new System.Drawing.Point(12, 314);
            this.btnCallRecords.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnCallRecords.MouseBack = null;
            this.btnCallRecords.Name = "btnCallRecords";
            this.btnCallRecords.NormlBack = null;
            this.btnCallRecords.Size = new System.Drawing.Size(132, 28);
            this.btnCallRecords.TabIndex = 6;
            this.btnCallRecords.Text = "通话记录";
            this.btnCallRecords.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCallRecords.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCallRecords.UseVisualStyleBackColor = false;
            this.btnCallRecords.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btngoods
            // 
            this.btngoods.BackColor = System.Drawing.Color.Transparent;
            this.btngoods.ControlState = UILibrary.ControlState.Normal;
            this.btngoods.Dock = System.Windows.Forms.DockStyle.Top;
            this.btngoods.DownBack = null;
            this.btngoods.DrawType = UILibrary.DrawStyle.None;
            this.btngoods.FormType = null;
            this.btngoods.FunctionCode = "M110";
            this.btngoods.Location = new System.Drawing.Point(12, 286);
            this.btngoods.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btngoods.MouseBack = null;
            this.btngoods.Name = "btngoods";
            this.btngoods.NormlBack = null;
            this.btngoods.Size = new System.Drawing.Size(132, 28);
            this.btngoods.TabIndex = 5;
            this.btngoods.Text = "提货单";
            this.btngoods.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btngoods.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btngoods.UseVisualStyleBackColor = false;
            this.btngoods.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnStorageOut
            // 
            this.btnStorageOut.BackColor = System.Drawing.Color.Transparent;
            this.btnStorageOut.ControlState = UILibrary.ControlState.Normal;
            this.btnStorageOut.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnStorageOut.DownBack = null;
            this.btnStorageOut.DrawType = UILibrary.DrawStyle.None;
            this.btnStorageOut.FormType = null;
            this.btnStorageOut.FunctionCode = "M109";
            this.btnStorageOut.Location = new System.Drawing.Point(12, 258);
            this.btnStorageOut.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnStorageOut.MouseBack = null;
            this.btnStorageOut.Name = "btnStorageOut";
            this.btnStorageOut.NormlBack = null;
            this.btnStorageOut.Size = new System.Drawing.Size(132, 28);
            this.btnStorageOut.TabIndex = 4;
            this.btnStorageOut.Text = "配料出库";
            this.btnStorageOut.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnStorageOut.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnStorageOut.UseVisualStyleBackColor = false;
            this.btnStorageOut.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnhomemadebill
            // 
            this.btnhomemadebill.BackColor = System.Drawing.Color.Transparent;
            this.btnhomemadebill.ControlState = UILibrary.ControlState.Normal;
            this.btnhomemadebill.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnhomemadebill.DownBack = null;
            this.btnhomemadebill.DrawType = UILibrary.DrawStyle.None;
            this.btnhomemadebill.FormType = null;
            this.btnhomemadebill.FunctionCode = "M108";
            this.btnhomemadebill.Location = new System.Drawing.Point(12, 230);
            this.btnhomemadebill.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnhomemadebill.MouseBack = null;
            this.btnhomemadebill.Name = "btnhomemadebill";
            this.btnhomemadebill.NormlBack = null;
            this.btnhomemadebill.Size = new System.Drawing.Size(132, 28);
            this.btnhomemadebill.TabIndex = 3;
            this.btnhomemadebill.Text = "自制仓入库";
            this.btnhomemadebill.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnhomemadebill.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnhomemadebill.UseVisualStyleBackColor = false;
            this.btnhomemadebill.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnStorageBills
            // 
            this.btnStorageBills.BackColor = System.Drawing.Color.Transparent;
            this.btnStorageBills.ControlState = UILibrary.ControlState.Normal;
            this.btnStorageBills.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnStorageBills.DownBack = null;
            this.btnStorageBills.DrawType = UILibrary.DrawStyle.None;
            this.btnStorageBills.FormType = null;
            this.btnStorageBills.FunctionCode = "M107";
            this.btnStorageBills.Location = new System.Drawing.Point(12, 202);
            this.btnStorageBills.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnStorageBills.MouseBack = null;
            this.btnStorageBills.Name = "btnStorageBills";
            this.btnStorageBills.NormlBack = null;
            this.btnStorageBills.Size = new System.Drawing.Size(132, 28);
            this.btnStorageBills.TabIndex = 2;
            this.btnStorageBills.Text = "进仓单";
            this.btnStorageBills.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnStorageBills.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnStorageBills.UseVisualStyleBackColor = false;
            this.btnStorageBills.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnFinish
            // 
            this.btnFinish.BackColor = System.Drawing.Color.Transparent;
            this.btnFinish.ControlState = UILibrary.ControlState.Normal;
            this.btnFinish.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnFinish.DownBack = null;
            this.btnFinish.DrawType = UILibrary.DrawStyle.None;
            this.btnFinish.FormType = null;
            this.btnFinish.FunctionCode = "M106";
            this.btnFinish.Location = new System.Drawing.Point(12, 174);
            this.btnFinish.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnFinish.MouseBack = null;
            this.btnFinish.Name = "btnFinish";
            this.btnFinish.NormlBack = null;
            this.btnFinish.Size = new System.Drawing.Size(132, 28);
            this.btnFinish.TabIndex = 12;
            this.btnFinish.Text = "成品";
            this.btnFinish.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnFinish.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnFinish.UseVisualStyleBackColor = false;
            this.btnFinish.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnSelfMake
            // 
            this.btnSelfMake.BackColor = System.Drawing.Color.Transparent;
            this.btnSelfMake.ControlState = UILibrary.ControlState.Normal;
            this.btnSelfMake.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnSelfMake.DownBack = null;
            this.btnSelfMake.DrawType = UILibrary.DrawStyle.None;
            this.btnSelfMake.FormType = null;
            this.btnSelfMake.FunctionCode = "M105";
            this.btnSelfMake.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSelfMake.Location = new System.Drawing.Point(12, 146);
            this.btnSelfMake.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnSelfMake.MouseBack = null;
            this.btnSelfMake.Name = "btnSelfMake";
            this.btnSelfMake.NormlBack = null;
            this.btnSelfMake.Size = new System.Drawing.Size(132, 28);
            this.btnSelfMake.TabIndex = 11;
            this.btnSelfMake.Text = "自制";
            this.btnSelfMake.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSelfMake.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnSelfMake.UseVisualStyleBackColor = false;
            this.btnSelfMake.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnSelfSale
            // 
            this.btnSelfSale.BackColor = System.Drawing.Color.Transparent;
            this.btnSelfSale.ControlState = UILibrary.ControlState.Normal;
            this.btnSelfSale.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnSelfSale.DownBack = null;
            this.btnSelfSale.DrawType = UILibrary.DrawStyle.None;
            this.btnSelfSale.FormType = null;
            this.btnSelfSale.FunctionCode = "M104";
            this.btnSelfSale.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSelfSale.Location = new System.Drawing.Point(12, 118);
            this.btnSelfSale.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnSelfSale.MouseBack = null;
            this.btnSelfSale.Name = "btnSelfSale";
            this.btnSelfSale.NormlBack = null;
            this.btnSelfSale.Size = new System.Drawing.Size(132, 28);
            this.btnSelfSale.TabIndex = 10;
            this.btnSelfSale.Text = "自营";
            this.btnSelfSale.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSelfSale.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnSelfSale.UseVisualStyleBackColor = false;
            this.btnSelfSale.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnSpot
            // 
            this.btnSpot.BackColor = System.Drawing.Color.Transparent;
            this.btnSpot.ControlState = UILibrary.ControlState.Normal;
            this.btnSpot.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnSpot.DownBack = null;
            this.btnSpot.DrawType = UILibrary.DrawStyle.None;
            this.btnSpot.FormType = null;
            this.btnSpot.FunctionCode = "M103";
            this.btnSpot.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSpot.Location = new System.Drawing.Point(12, 90);
            this.btnSpot.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnSpot.MouseBack = null;
            this.btnSpot.Name = "btnSpot";
            this.btnSpot.NormlBack = null;
            this.btnSpot.Size = new System.Drawing.Size(132, 28);
            this.btnSpot.TabIndex = 9;
            this.btnSpot.Text = "现货";
            this.btnSpot.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSpot.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnSpot.UseVisualStyleBackColor = false;
            this.btnSpot.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnConfirm
            // 
            this.btnConfirm.BackColor = System.Drawing.Color.Transparent;
            this.btnConfirm.ControlState = UILibrary.ControlState.Normal;
            this.btnConfirm.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnConfirm.DownBack = null;
            this.btnConfirm.DrawType = UILibrary.DrawStyle.None;
            this.btnConfirm.FormType = null;
            this.btnConfirm.FunctionCode = "M102";
            this.btnConfirm.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnConfirm.Location = new System.Drawing.Point(12, 62);
            this.btnConfirm.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnConfirm.MouseBack = null;
            this.btnConfirm.Name = "btnConfirm";
            this.btnConfirm.NormlBack = null;
            this.btnConfirm.Size = new System.Drawing.Size(132, 28);
            this.btnConfirm.TabIndex = 8;
            this.btnConfirm.Text = "确盘";
            this.btnConfirm.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnConfirm.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnConfirm.UseVisualStyleBackColor = false;
            this.btnConfirm.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnQuote
            // 
            this.btnQuote.BackColor = System.Drawing.Color.Transparent;
            this.btnQuote.ControlState = UILibrary.ControlState.Normal;
            this.btnQuote.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnQuote.DownBack = null;
            this.btnQuote.DrawType = UILibrary.DrawStyle.None;
            this.btnQuote.FormType = null;
            this.btnQuote.FunctionCode = "M101";
            this.btnQuote.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnQuote.Location = new System.Drawing.Point(12, 34);
            this.btnQuote.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnQuote.MouseBack = null;
            this.btnQuote.Name = "btnQuote";
            this.btnQuote.NormlBack = null;
            this.btnQuote.Size = new System.Drawing.Size(132, 28);
            this.btnQuote.TabIndex = 1;
            this.btnQuote.Text = "报盘";
            this.btnQuote.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnQuote.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnQuote.UseVisualStyleBackColor = false;
            this.btnQuote.Click += new System.EventHandler(this.buttom_Click);
            // 
            // pushPanelItem3
            // 
            this.pushPanelItem3.CaptionFont = new System.Drawing.Font("微软雅黑", 9F);
            this.pushPanelItem3.Controls.Add(this.btnSaleRecord);
            this.pushPanelItem3.Controls.Add(this.btnCustomerAnsyleReport);
            this.pushPanelItem3.Controls.Add(this.btnStorageReport);
            this.pushPanelItem3.Controls.Add(this.btnFlowingReport);
            this.pushPanelItem3.Controls.Add(this.btnRequiredReport);
            this.pushPanelItem3.Controls.Add(this.btnCallRecordReport);
            this.pushPanelItem3.Name = "pushPanelItem3";
            this.pushPanelItem3.Padding = new System.Windows.Forms.Padding(10, 10, 0, 0);
            this.pushPanelItem3.RoundStyle = UILibrary.RoundStyle.All;
            this.pushPanelItem3.Text = "报表";
            // 
            // btnSaleRecord
            // 
            this.btnSaleRecord.BackColor = System.Drawing.Color.Transparent;
            this.btnSaleRecord.ControlState = UILibrary.ControlState.Normal;
            this.btnSaleRecord.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnSaleRecord.DownBack = null;
            this.btnSaleRecord.DrawType = UILibrary.DrawStyle.None;
            this.btnSaleRecord.FormType = null;
            this.btnSaleRecord.FunctionCode = "M206";
            this.btnSaleRecord.Location = new System.Drawing.Point(12, 174);
            this.btnSaleRecord.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnSaleRecord.MouseBack = null;
            this.btnSaleRecord.Name = "btnSaleRecord";
            this.btnSaleRecord.NormlBack = null;
            this.btnSaleRecord.Size = new System.Drawing.Size(132, 28);
            this.btnSaleRecord.TabIndex = 13;
            this.btnSaleRecord.Text = "销售记录简表";
            this.btnSaleRecord.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSaleRecord.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnSaleRecord.UseVisualStyleBackColor = false;
            this.btnSaleRecord.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnCustomerAnsyleReport
            // 
            this.btnCustomerAnsyleReport.BackColor = System.Drawing.Color.Transparent;
            this.btnCustomerAnsyleReport.ControlState = UILibrary.ControlState.Normal;
            this.btnCustomerAnsyleReport.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnCustomerAnsyleReport.DownBack = null;
            this.btnCustomerAnsyleReport.DrawType = UILibrary.DrawStyle.None;
            this.btnCustomerAnsyleReport.FormType = null;
            this.btnCustomerAnsyleReport.FunctionCode = "M205";
            this.btnCustomerAnsyleReport.Location = new System.Drawing.Point(12, 146);
            this.btnCustomerAnsyleReport.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnCustomerAnsyleReport.MouseBack = null;
            this.btnCustomerAnsyleReport.Name = "btnCustomerAnsyleReport";
            this.btnCustomerAnsyleReport.NormlBack = null;
            this.btnCustomerAnsyleReport.Size = new System.Drawing.Size(132, 28);
            this.btnCustomerAnsyleReport.TabIndex = 12;
            this.btnCustomerAnsyleReport.Text = "客户分析表";
            this.btnCustomerAnsyleReport.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCustomerAnsyleReport.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCustomerAnsyleReport.UseVisualStyleBackColor = false;
            this.btnCustomerAnsyleReport.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnStorageReport
            // 
            this.btnStorageReport.BackColor = System.Drawing.Color.Transparent;
            this.btnStorageReport.ControlState = UILibrary.ControlState.Normal;
            this.btnStorageReport.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnStorageReport.DownBack = null;
            this.btnStorageReport.DrawType = UILibrary.DrawStyle.None;
            this.btnStorageReport.FormType = null;
            this.btnStorageReport.FunctionCode = "M204";
            this.btnStorageReport.Location = new System.Drawing.Point(12, 118);
            this.btnStorageReport.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnStorageReport.MouseBack = null;
            this.btnStorageReport.Name = "btnStorageReport";
            this.btnStorageReport.NormlBack = null;
            this.btnStorageReport.Size = new System.Drawing.Size(132, 28);
            this.btnStorageReport.TabIndex = 11;
            this.btnStorageReport.Text = "库存(期货，现货)汇总表";
            this.btnStorageReport.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnStorageReport.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnStorageReport.UseVisualStyleBackColor = false;
            this.btnStorageReport.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnFlowingReport
            // 
            this.btnFlowingReport.BackColor = System.Drawing.Color.Transparent;
            this.btnFlowingReport.ControlState = UILibrary.ControlState.Normal;
            this.btnFlowingReport.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnFlowingReport.DownBack = null;
            this.btnFlowingReport.DrawType = UILibrary.DrawStyle.None;
            this.btnFlowingReport.FormType = null;
            this.btnFlowingReport.FunctionCode = "M203";
            this.btnFlowingReport.Location = new System.Drawing.Point(12, 90);
            this.btnFlowingReport.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnFlowingReport.MouseBack = null;
            this.btnFlowingReport.Name = "btnFlowingReport";
            this.btnFlowingReport.NormlBack = null;
            this.btnFlowingReport.Size = new System.Drawing.Size(132, 28);
            this.btnFlowingReport.TabIndex = 10;
            this.btnFlowingReport.Text = "自制自营库存流水账";
            this.btnFlowingReport.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnFlowingReport.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnFlowingReport.UseVisualStyleBackColor = false;
            this.btnFlowingReport.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnRequiredReport
            // 
            this.btnRequiredReport.BackColor = System.Drawing.Color.Transparent;
            this.btnRequiredReport.ControlState = UILibrary.ControlState.Normal;
            this.btnRequiredReport.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnRequiredReport.DownBack = null;
            this.btnRequiredReport.DrawType = UILibrary.DrawStyle.None;
            this.btnRequiredReport.FormType = null;
            this.btnRequiredReport.FunctionCode = "M202";
            this.btnRequiredReport.Location = new System.Drawing.Point(12, 62);
            this.btnRequiredReport.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnRequiredReport.MouseBack = null;
            this.btnRequiredReport.Name = "btnRequiredReport";
            this.btnRequiredReport.NormlBack = null;
            this.btnRequiredReport.Size = new System.Drawing.Size(132, 28);
            this.btnRequiredReport.TabIndex = 9;
            this.btnRequiredReport.Text = "需求预测表";
            this.btnRequiredReport.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRequiredReport.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnRequiredReport.UseVisualStyleBackColor = false;
            this.btnRequiredReport.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnCallRecordReport
            // 
            this.btnCallRecordReport.BackColor = System.Drawing.Color.Transparent;
            this.btnCallRecordReport.ControlState = UILibrary.ControlState.Normal;
            this.btnCallRecordReport.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnCallRecordReport.DownBack = null;
            this.btnCallRecordReport.DrawType = UILibrary.DrawStyle.None;
            this.btnCallRecordReport.FormType = null;
            this.btnCallRecordReport.FunctionCode = "M201";
            this.btnCallRecordReport.Location = new System.Drawing.Point(12, 34);
            this.btnCallRecordReport.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.btnCallRecordReport.MouseBack = null;
            this.btnCallRecordReport.Name = "btnCallRecordReport";
            this.btnCallRecordReport.NormlBack = null;
            this.btnCallRecordReport.Size = new System.Drawing.Size(132, 28);
            this.btnCallRecordReport.TabIndex = 8;
            this.btnCallRecordReport.Text = "通话记录表";
            this.btnCallRecordReport.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCallRecordReport.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCallRecordReport.UseVisualStyleBackColor = false;
            this.btnCallRecordReport.Click += new System.EventHandler(this.buttom_Click);
            // 
            // pushPanelItem4
            // 
            this.pushPanelItem4.CaptionFont = new System.Drawing.Font("微软雅黑", 9F);
            this.pushPanelItem4.Controls.Add(this.btnProductContract2);
            this.pushPanelItem4.Controls.Add(this.btnProductContract1);
            this.pushPanelItem4.Controls.Add(this.btnFurtureContract);
            this.pushPanelItem4.Controls.Add(this.btnTip);
            this.pushPanelItem4.Controls.Add(this.btnInventoryAccount);
            this.pushPanelItem4.Name = "pushPanelItem4";
            this.pushPanelItem4.RoundStyle = UILibrary.RoundStyle.All;
            this.pushPanelItem4.Text = "其他";
            // 
            // btnProductContract2
            // 
            this.btnProductContract2.BackColor = System.Drawing.Color.Transparent;
            this.btnProductContract2.ControlState = UILibrary.ControlState.Normal;
            this.btnProductContract2.DownBack = null;
            this.btnProductContract2.DrawType = UILibrary.DrawStyle.None;
            this.btnProductContract2.FormType = null;
            this.btnProductContract2.FunctionCode = "M305";
            this.btnProductContract2.Location = new System.Drawing.Point(22, 157);
            this.btnProductContract2.MouseBack = null;
            this.btnProductContract2.Name = "btnProductContract2";
            this.btnProductContract2.NormlBack = null;
            this.btnProductContract2.Size = new System.Drawing.Size(124, 23);
            this.btnProductContract2.TabIndex = 17;
            this.btnProductContract2.Text = "现货销售合同2";
            this.btnProductContract2.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnProductContract2.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnProductContract2.UseVisualStyleBackColor = false;
            this.btnProductContract2.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnProductContract1
            // 
            this.btnProductContract1.BackColor = System.Drawing.Color.Transparent;
            this.btnProductContract1.ControlState = UILibrary.ControlState.Normal;
            this.btnProductContract1.DownBack = null;
            this.btnProductContract1.DrawType = UILibrary.DrawStyle.None;
            this.btnProductContract1.FormType = null;
            this.btnProductContract1.FunctionCode = "M304";
            this.btnProductContract1.Location = new System.Drawing.Point(22, 128);
            this.btnProductContract1.MouseBack = null;
            this.btnProductContract1.Name = "btnProductContract1";
            this.btnProductContract1.NormlBack = null;
            this.btnProductContract1.Size = new System.Drawing.Size(124, 23);
            this.btnProductContract1.TabIndex = 16;
            this.btnProductContract1.Text = "现货销售合同1";
            this.btnProductContract1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnProductContract1.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnProductContract1.UseVisualStyleBackColor = false;
            this.btnProductContract1.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnFurtureContract
            // 
            this.btnFurtureContract.BackColor = System.Drawing.Color.Transparent;
            this.btnFurtureContract.ControlState = UILibrary.ControlState.Normal;
            this.btnFurtureContract.DownBack = null;
            this.btnFurtureContract.DrawType = UILibrary.DrawStyle.None;
            this.btnFurtureContract.FormType = null;
            this.btnFurtureContract.FunctionCode = "M303";
            this.btnFurtureContract.Location = new System.Drawing.Point(22, 99);
            this.btnFurtureContract.MouseBack = null;
            this.btnFurtureContract.Name = "btnFurtureContract";
            this.btnFurtureContract.NormlBack = null;
            this.btnFurtureContract.Size = new System.Drawing.Size(124, 23);
            this.btnFurtureContract.TabIndex = 15;
            this.btnFurtureContract.Text = "期货预售合同";
            this.btnFurtureContract.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnFurtureContract.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnFurtureContract.UseVisualStyleBackColor = false;
            this.btnFurtureContract.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnTip
            // 
            this.btnTip.BackColor = System.Drawing.Color.Transparent;
            this.btnTip.ControlState = UILibrary.ControlState.Normal;
            this.btnTip.DownBack = null;
            this.btnTip.DrawType = UILibrary.DrawStyle.None;
            this.btnTip.FormType = null;
            this.btnTip.FunctionCode = "M302";
            this.btnTip.Location = new System.Drawing.Point(22, 70);
            this.btnTip.MouseBack = null;
            this.btnTip.Name = "btnTip";
            this.btnTip.NormlBack = null;
            this.btnTip.Size = new System.Drawing.Size(124, 23);
            this.btnTip.TabIndex = 14;
            this.btnTip.Text = "自动提醒";
            this.btnTip.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnTip.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnTip.UseVisualStyleBackColor = false;
            this.btnTip.Click += new System.EventHandler(this.buttom_Click);
            // 
            // btnInventoryAccount
            // 
            this.btnInventoryAccount.BackColor = System.Drawing.Color.Transparent;
            this.btnInventoryAccount.ControlState = UILibrary.ControlState.Normal;
            this.btnInventoryAccount.DownBack = null;
            this.btnInventoryAccount.DrawType = UILibrary.DrawStyle.None;
            this.btnInventoryAccount.FormType = null;
            this.btnInventoryAccount.FunctionCode = "M301";
            this.btnInventoryAccount.Location = new System.Drawing.Point(22, 41);
            this.btnInventoryAccount.MouseBack = null;
            this.btnInventoryAccount.Name = "btnInventoryAccount";
            this.btnInventoryAccount.NormlBack = null;
            this.btnInventoryAccount.Size = new System.Drawing.Size(124, 23);
            this.btnInventoryAccount.TabIndex = 13;
            this.btnInventoryAccount.Text = "库存月结";
            this.btnInventoryAccount.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnInventoryAccount.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnInventoryAccount.UseVisualStyleBackColor = false;
            this.btnInventoryAccount.Click += new System.EventHandler(this.buttom_Click);
            // 
            // FormMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(929, 554);
            this.Controls.Add(this.splitter1);
            this.Controls.Add(this.panelLeft);
            this.Controls.Add(this.statusStrip1);
            this.IsMdiContainer = true;
            this.Name = "FormMain";
            this.Text = "上海正东饲料管理系统";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FormMain_FormClosing);
            this.Load += new System.EventHandler(this.FormMain_Load);
            this.SizeChanged += new System.EventHandler(this.FormMain_SizeChanged);
            this.statusStrip1.ResumeLayout(false);
            this.statusStrip1.PerformLayout();
            this.panelLeft.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pushPanel1)).EndInit();
            this.pushPanel1.ResumeLayout(false);
            this.pushPanelItem1.ResumeLayout(false);
            this.pushPanelItem2.ResumeLayout(false);
            this.pushPanelItem3.ResumeLayout(false);
            this.pushPanelItem4.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.Splitter splitter1;
        private System.Windows.Forms.ImageList imageList1;
        private System.Windows.Forms.ToolStripStatusLabel tSSLUser;
        private System.Windows.Forms.Panel panelLeft;
        private UILibrary.PushPanel.PushPanel pushPanel1;
        private UILibrary.PushPanel.PushPanelItem pushPanelItem1;
        private UILibrary.PushPanel.PushPanelItem pushPanelItem2;
        private UILibrary.PushPanel.PushPanelItem pushPanelItem3;
        private UILibrary.PushPanel.PushPanelItem pushPanelItem4;
        private UIControls.ButtonEx btnCallRecords;
        private UIControls.ButtonEx btngoods;
        private UIControls.ButtonEx btnStorageOut;
        private UIControls.ButtonEx btnhomemadebill;
        private UIControls.ButtonEx btnStorageBills;
        private UIControls.ButtonEx btnQuote;
        private UIControls.ButtonEx btnCheck;
        private UIControls.ButtonEx btnProductData;
        private UIControls.ButtonEx btnSystemData;
        private UIControls.ButtonEx btnUserData;
        private UIControls.ButtonEx btnCompany;
        private UIControls.ButtonEx btnLinkman;
        private UIControls.ButtonEx btnFish;
        private UIControls.ButtonEx btnCustomerAnsyleReport;
        private UIControls.ButtonEx btnStorageReport;
        private UIControls.ButtonEx btnFlowingReport;
        private UIControls.ButtonEx btnRequiredReport;
        private UIControls.ButtonEx btnCallRecordReport;
        private UIControls.ButtonEx btnTip;
        private UIControls.ButtonEx btnInventoryAccount;
        private UIControls.ButtonEx btnFurtureContract;
        private UIControls.ButtonEx btnProductContract1;
        private UIControls.ButtonEx btnProductContract2;
        private UIControls.ButtonEx btnConfirm;
        private UIControls.ButtonEx btnSpot;
        private UIControls.ButtonEx btnSelfSale;
        private UIControls.ButtonEx btnSelfMake;
        private UIControls.ButtonEx btnSaleRecord;
        private UIControls.ButtonEx btnFinish;
        private System.Windows.Forms.ToolStripStatusLabel tSSLCopyRight;
        private UIControls.ButtonEx btnRole;
    }
}