using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Text;
using System.Windows.Forms;
using FishEntity;

namespace FishClient
{
    public partial class FormImage : FormMenuBase
    {
        private int _recordId = 0;
        private ImageTypeEnum _type =  ImageTypeEnum.CompanyThreeCard;
        private Image _noImage = null;
        private FishEntity.ImageEntity _image1 = null;
        private FishEntity.ImageEntity _image2 = null;
        private FishEntity.ImageEntity _image3 = null;
        FishBll.Bll.ImageBll _bll = new FishBll.Bll.ImageBll();

        public FormImage(int recordId, ImageTypeEnum type)
        {           
            InitializeComponent();

            menuStrip1.Visible = false; 

            _noImage = Properties.Resources.img_bkg_normal;
            pictureBox1.Image = _noImage;
            pictureBox2.Image = _noImage;
            pictureBox3.Image = _noImage; 

            SetButtomImage(btnSelect1);
            SetButtomImage(btnselect2);
            SetButtomImage(btnselect3);
            SetButtomImage(btnZoom1);
            SetButtomImage(btnZoom2);
            SetButtomImage(btnZoom3);
            SetButtomImage(btnDelete1);
            SetButtomImage(btndelete2);
            SetButtomImage(btndelete3);
        }

        public void SetData(int recordid, ImageTypeEnum  type)
        {
            _recordId = recordid;
            _type = type;

            _image1 = _image2 = _image3 = null;
            //pictureBox1.Image = pictureBox2.Image = pictureBox3.Image = _noImage;

            GetImages();
        }

        protected void GetImages()
        {
            if (_recordId < 1) return;

            List<FishEntity.ImageEntity> images = _bll.GetModelList("recordid=" + _recordId + " and type="+ (int)_type );

            if (images == null) return;

            foreach (FishEntity.ImageEntity item in images)
            {
                Image tempImage = Image.FromStream(new MemoryStream(item.image));

                if (item.sort == 1)
                {
                    _image1 = item;
                    pictureBox1.Image = tempImage ;
                }
                else if (item.sort == 2)
                {
                    _image2 = item;
                    pictureBox2.Image = tempImage;
                }
                else if (item.sort == 3)
                {
                    _image3 = item;
                    pictureBox3.Image = tempImage;
                }
            }           
        }

        public FishEntity.ImageEntity Image1
        {
            get
            {
                return _image1;
            }
        }

        public FishEntity.ImageEntity Image2
        {
            get
            {
                return _image2;
            }
        }

        public FishEntity.ImageEntity Image3
        {
            get
            {
                return _image3;
            }
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            if (_image1 == null)
            {
                _image1 = new FishEntity.ImageEntity();
                _image1.type = (int)_type;
                _image1.sort = 1;
            }
            SetImage(pictureBox1 , _image1 );
        }

        protected void SetImage(PictureBox pic, FishEntity.ImageEntity entity)
        {            
            byte[] buffers = null;
            string ext = string.Empty;
            string fileName = string.Empty;
            Image img = SelectImage(ref buffers, ref fileName , ref ext);
            entity.image = buffers;
            entity.extension = ext;  
            if (img != null)
            {
                pic.Image = img;
            }
        }

        protected Image SelectImage(ref byte[] buffers , ref string fileName , ref string ext )
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Multiselect = false;
            dlg.Filter = "图片文件|*.bmp;*.jpg;*.png;*.jpeg|*.bmp|*.bmp|*.png|*.png|*.jpg|*.jpg|*.jpeg|*jpeg";
            Image img = null;
            if (dlg.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {                  
                string path = ZoomImage(dlg.FileName);

                ext = Path.GetExtension(path);

                fileName = Path.GetFileName(path);

                using (FileStream fs = new FileStream( path , FileMode.Open, FileAccess.Read))
                {
                    buffers = new byte[fs.Length];
                    img = Image.FromStream(fs);
                    fs.Position = 0;
                    fs.Read(buffers, 0, (int)fs.Length); 
                    fs.Close();
                }              
             }
            return img;
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            if (_image2 == null)
            {
                _image2 = new FishEntity.ImageEntity();
                _image2.type = (int)_type;
                _image2.sort = 2;
            }
            SetImage(pictureBox2, _image2);
        }

        private void pictureBox3_Click(object sender, EventArgs e)
        {
            if (_image3 == null)
            {
                _image3 = new FishEntity.ImageEntity();
                _image3.type = (int)_type;
                _image3.sort = 3;
            }
            SetImage(pictureBox3, _image3);
        }

        /// <summary>
        /// 检测 图片文件大小 是否超过最大值，如果超过，则压缩图片大小，
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        protected static string ZoomImage(string path)
        {
            if ( Utility.ImageZoomByQuality.JudgeImageSize(path, 1) == false) return path;

            Image sourceImage = Image.FromFile(path);
            string resultPath = Application.StartupPath + "\\Temp\\" + Guid.NewGuid().ToString() + ".jpg";
            int quality = 60;
            Utility.ImageZoomByQuality.Zoom(sourceImage, resultPath, quality, "image/jpeg");
            while ( Utility.ImageZoomByQuality.JudgeImageSize(resultPath, 1) == true)
            {
                quality -= 10;
                if (quality < 0) quality = 0;
                Utility.ImageZoomByQuality.Zoom(sourceImage, resultPath, quality, "image/jpeg");
                if (quality <= 0) break;
            }
            sourceImage.Dispose();
            return resultPath;
        }

        private void btnSelect1_Click(object sender, EventArgs e)
        {
            if (_image1 == null)
            {
                _image1 = new FishEntity.ImageEntity();
                _image1.type = (int)_type;
                _image1.sort = 1;
            }
            SetImage(pictureBox1, _image1);
        }

        private void btnDelete1_Click(object sender, EventArgs e)
        {
            _image1 = null;
            pictureBox1.Image = _noImage;
        }

        private void btnselect2_Click(object sender, EventArgs e)
        {
            if (_image2 == null)
            {
                _image2 = new FishEntity.ImageEntity();
                _image2.type = (int)_type;
                _image2.sort = 2;
            }
            SetImage(pictureBox2, _image2);
        }

        private void btndelete2_Click(object sender, EventArgs e)
        {
            _image2 = null;
            pictureBox2.Image = _noImage;
        }

        private void btnselect3_Click(object sender, EventArgs e)
        {
            if (_image3 == null)
            {
                _image3 = new FishEntity.ImageEntity();
                _image3.type = (int)_type;
                _image3.sort = 3;
            }
            SetImage(pictureBox3, _image3);
        }

        private void btndelete3_Click(object sender, EventArgs e)
        {
            _image3 = null;
            pictureBox3.Image = _noImage;
        }

        private void btnZoom_Click(object sender, EventArgs e)
        {
            UIForms.FormZoomImage form = new UIForms.FormZoomImage( pictureBox1.Image  );
            form.StartPosition = FormStartPosition.CenterParent;
            form.ShowInTaskbar = false;
            form.ShowDialog();
        }

        private void btnZoom2_Click(object sender, EventArgs e)
        {
            UIForms.FormZoomImage form = new UIForms.FormZoomImage(pictureBox2.Image);
            form.StartPosition = FormStartPosition.CenterParent;
            form.ShowInTaskbar = false;
            form.ShowDialog();
        }

        private void btnZoom3_Click(object sender, EventArgs e)
        {
            UIForms.FormZoomImage form = new UIForms.FormZoomImage(pictureBox3.Image);
            form.StartPosition = FormStartPosition.CenterParent;
            form.ShowInTaskbar = false;
            form.ShowDialog();
        }               
    }
}
