using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace FishClient
{
    public partial class FormSpotGoodsQuery : FormMenuBase
    {
        private int _fishid = 0;
        FishBll.Bll.SpotBll _bll = new FishBll.Bll.SpotBll();

        public FormSpotGoodsQuery( int fishid)
        {
            InitializeComponent();

            _fishid = fishid;

        }
    }
}
