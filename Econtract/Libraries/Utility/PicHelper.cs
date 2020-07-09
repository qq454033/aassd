using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using System.Configuration;
using System.IO;
using ASPJPEGLib;
using System.Drawing;
using System.Net;
using System.Text.RegularExpressions;
using System.Linq;
using System.Drawing.Imaging;

namespace Utility
{
    public class PicHelper
    {
        // Methods
        public PicHelper() { }
        private static void ToMarkWater(string SourceFileName, string MarkFileNameBig, string MarkFileNameSmall, string SaveFileName, int WType)
        {
            string UserMarkFileName = "";
            int space = 0;
            try
            {
                int WidthS;
                int HeightS;
                IASPJpeg objJpegS;
                IASPJpeg objJpegM;
                if (WType == 2)
                {
                    objJpegS = new ASPJpegClass();
                    objJpegM = new ASPJpegClass();
                    objJpegS.Open(SourceFileName);
                    WidthS = objJpegS.OriginalWidth;
                    HeightS = objJpegS.OriginalHeight;
                    if ((WidthS >= 200) && (HeightS >= 100))
                    {
                        UserMarkFileName = MarkFileNameBig;
                        space = 10;
                    }
                    else if ((WidthS >= 60) && (HeightS >= 30))
                    {
                        UserMarkFileName = MarkFileNameSmall;
                        space = 1;
                    }
                    else
                    {
                        objJpegS.Save(SaveFileName);
                        objJpegS.Close();
                    }
                    objJpegM.Open(UserMarkFileName);
                    int WidthM = objJpegM.OriginalWidth;
                    int HeightM = objJpegM.OriginalHeight;
                    if ((WidthS > (WidthM + space)) && (HeightS > (HeightM + space)))
                    {
                        objJpegS.Canvas.DrawImage((WidthS - WidthM) - space, (HeightS - HeightM) - space, (ASPJpeg)objJpegM, 0.1, "&HFF0000", 10);
                    }
                    objJpegS.Save(SaveFileName);
                    objJpegS.Close();
                    objJpegM.Close();
                }
                else
                {
                    objJpegS = new ASPJpegClass();
                    objJpegM = new ASPJpegClass();
                    objJpegS.Open(SourceFileName);
                    WidthS = objJpegS.OriginalWidth;
                    HeightS = objJpegS.OriginalHeight;
                    objJpegS.Canvas.Font.Family = "Arial";
                    objJpegS.Canvas.Font.ShadowXoffset = 1;
                    objJpegS.Canvas.Font.ShadowYoffset = 1;
                    objJpegS.Canvas.Font.Color = 0xffffff;
                    objJpegS.Canvas.Font.ShadowColor = 0xcccccc;
                    objJpegS.Canvas.Font.Quality = 10;
                    objJpegS.Canvas.Brush.Solid = 1;
                    objJpegS.Canvas.Font.Bold = 1;
                    objJpegS.Canvas.Font.Size = 40;
                    objJpegS.Canvas.PrintText(WidthS - (WidthS - 120), HeightS - 50, "www.5dgz.com", null);
                    objJpegS.Save(SaveFileName);
                    objJpegS.Close();
                    IASPJpeg objJpegA = new ASPJpegClass();
                    objJpegA.Open(SourceFileName);
                    objJpegM.Open(SaveFileName);
                    objJpegA.Canvas.DrawImage(0, 0, (ASPJpeg)objJpegM, 0.6, "&HFF0000", 10);
                    objJpegA.Save(SaveFileName);
                    objJpegA.Close();
                    objJpegM.Close();
                }
            }
            catch
            {
            }
        }

        private static void ToThumbNail(string strFileName, int NewWidth, int NewHeight, string strContentType, string strNFileName)
        {
            try
            {
                IASPJpeg objJpeg = new ASPJpegClass();
                objJpeg.Open(strFileName);
                double rate = 0.0;
                double WidthSource = objJpeg.OriginalWidth;
                double HeightSource = objJpeg.OriginalHeight;
                objJpeg.Interpolation = 0;
                objJpeg.Quality = 100;
                if ((WidthSource <= NewWidth) && (HeightSource <= NewHeight))
                {
                    rate = 1.0;
                }
                else
                {
                    double rateW = ((double)NewWidth) / WidthSource;
                    double rateH = ((double)NewHeight) / HeightSource;
                    if (rateW > rateH)
                    {
                        rate = rateH;
                    }
                    else
                    {
                        rate = rateW;
                    }
                }
                double WidthSource2 = (int)(WidthSource * rate);
                double HeightSource2 = (int)(HeightSource * rate);
                if ((HeightSource2 < NewHeight) && (WidthSource2 >= NewWidth))
                {
                    objJpeg.Width = (int)(WidthSource * (((double)NewHeight) / HeightSource));
                    objJpeg.Height = (int)(HeightSource * (((double)NewHeight) / HeightSource));
                    objJpeg.Crop(0, 0, NewWidth, NewHeight);
                }
                else if (HeightSource2 > NewHeight)
                {
                    objJpeg.Width = (int)(WidthSource * (((double)NewHeight) / HeightSource));
                    objJpeg.Height = (int)(HeightSource * (((double)NewHeight) / HeightSource));
                    objJpeg.Crop(0, 0, NewWidth, NewHeight);
                }
                else if ((WidthSource2 < NewWidth) && (HeightSource2 >= NewHeight))
                {
                    objJpeg.Width = (int)(WidthSource * (((double)NewWidth) / WidthSource));
                    objJpeg.Height = (int)(HeightSource * (((double)NewWidth) / WidthSource));
                    objJpeg.Crop(0, 0, NewWidth, NewHeight);
                }
                else if (WidthSource2 > NewWidth)
                {
                    objJpeg.Width = (int)(WidthSource * (((double)NewWidth) / WidthSource));
                    objJpeg.Height = (int)(HeightSource * (((double)NewWidth) / WidthSource));
                    objJpeg.Crop(0, 0, NewWidth, NewHeight);
                }
                else
                {
                    objJpeg.Width = (int)(WidthSource * rate);
                    objJpeg.Height = (int)(HeightSource * rate);
                }
                objJpeg.Save(strNFileName);
                objJpeg.Close();
            }
            catch
            {
            }
        }

        public static string UploadLogo(HttpPostedFile oFile)
        {
            try
            {
                if (Path.GetFileName(oFile.FileName) != "")
                {
                    string FileTxt = Path.GetExtension(oFile.FileName);
                    string nFileName = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Millisecond.ToString();
                    Random sran = new Random();
                    string Rand = sran.Next(1, 9).ToString();
                    string sFileName = nFileName + Rand + FileTxt;
                    string reFileName = sFileName;
                    string sFilePath = ConfigurationManager.AppSettings["FCKeditor:LogoFilesPath"];
                    sFilePath = sFilePath + "/" + DateTime.Now.Year.ToString() + "-" + DateTime.Now.Month.ToString() + "/";
                    FileHelper.CreateFolder(sFilePath);
                    string reFilePath = sFilePath;
                    string strFilePath = Path.Combine(HttpContext.Current.Server.MapPath(sFilePath), sFileName);
                    oFile.SaveAs(strFilePath);
                    return (reFilePath + "|" + reFileName);
                }
                return null;
            }
            catch
            {
                return null;
            }
        }

        public static string UploadPic(HttpPostedFile oFile, int IsWater)
        {
            try
            {
                if (Path.GetFileName(oFile.FileName) != "")
                {
                    string FileTxt = Path.GetExtension(oFile.FileName);
                    string nFileName = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Millisecond.ToString();
                    Random sran = new Random();
                    string Rand = sran.Next(1, 9).ToString();
                    string sFileName = nFileName + Rand + FileTxt;
                    string reFileName = sFileName;
                    string sFilePath = ConfigurationManager.AppSettings["FCKeditor:UserFilesPath"];
                    if (IsWater == 2)
                    {
                        sFilePath = ConfigurationManager.AppSettings["Education"];
                    }
                    sFilePath = sFilePath + "/" + DateTime.Now.Year.ToString() + "-" + DateTime.Now.Month.ToString() + "/";
                    FileHelper.CreateFolder(sFilePath);
                    string reFilePath = sFilePath;
                    sFilePath = HttpContext.Current.Server.MapPath(sFilePath);
                    string strFilePath = Path.Combine(sFilePath, sFileName);
                    oFile.SaveAs(strFilePath);
                    if (((FileTxt.ToLowerInvariant() == ".jpg") || (FileTxt.ToLowerInvariant() == ".gif")) || (FileTxt.ToLowerInvariant() == ".bmp"))
                    {
                        string tFilePath = sFilePath + "189X132" + sFileName;
                        ToThumbNail(strFilePath, 0xbd, 0x84, FileTxt, tFilePath);
                        tFilePath = sFilePath + "109X75" + sFileName;
                        ToThumbNail(strFilePath, 0x6d, 0x4b, FileTxt, tFilePath);
                        tFilePath = sFilePath + "119_90_" + sFileName;
                        ToThumbNail(strFilePath, 0x77, 90, FileTxt, tFilePath);
                        if (IsWater == 1)
                        {
                            string strw = HttpContext.Current.Server.MapPath("/UpLoad/") + "w.gif";
                            if (ConfigurationManager.AppSettings["WaterMark"].ToString() == "1")
                            {
                                string wFilePath = sFilePath + "W" + sFileName;
                                ToMarkWater(strFilePath, strw, strw, wFilePath, 1);
                            }
                        }
                    }
                    return (reFilePath + "|" + reFileName);
                }
                return null;
            }
            catch
            {
                return null;
            }
        }

        public static string UploadPro(HttpPostedFile oFile, int IsWater)
        {
            try
            {
                if (Path.GetFileName(oFile.FileName) != "")
                {
                    string FileTxt = Path.GetExtension(oFile.FileName);
                    string nFileName = DateTime.Now.ToString("yyyyMMddHHmmssfff");
                    Random sran = new Random();
                    string Rand = sran.Next(1, 9).ToString();
                    string sFileName = nFileName + Rand + FileTxt;
                    string reFileName = sFileName;
                    string sFilePath = ConfigurationManager.AppSettings["FCKeditor:UserFilesPath"];
                    sFilePath = sFilePath + "/Pro/" + DateTime.Now.ToString("yyyy-MM") + "/";
                    FileHelper.CreateFolder(sFilePath);
                    string reFilePath = sFilePath;
                    sFilePath = HttpContext.Current.Server.MapPath(sFilePath);
                    string strFilePath = Path.Combine(sFilePath, sFileName);
                    oFile.SaveAs(strFilePath);
                    if (((FileTxt.ToLowerInvariant() == ".jpg") || (FileTxt.ToLowerInvariant() == ".gif")) || (FileTxt.ToLowerInvariant() == ".bmp"))
                    {
                        string tFilePath = sFilePath + "189X127" + sFileName;
                        ToThumbNail(strFilePath, 0xbd, 0x7f, FileTxt, tFilePath);
                        tFilePath = sFilePath + "126X105" + sFileName;
                        ToThumbNail(strFilePath, 0x7e, 0x69, FileTxt, tFilePath);
                        if (IsWater == 1)
                        {
                            string strw = HttpContext.Current.Server.MapPath("/UpLoad/") + "w.gif";
                            if (ConfigurationManager.AppSettings["WaterMark"].ToString() == "1")
                            {
                                string wFilePath = sFilePath + "W" + sFileName;
                                ToMarkWater(strFilePath, strw, strw, wFilePath, 1);
                            }
                        }
                    }
                    return (reFilePath + "|" + reFileName);
                }
                return null;
            }
            catch
            {
                return null;
            }
        }

        public static string UploadArticle(HttpPostedFile oFile, int IsWater)
        {
            try
            {
                if (Path.GetFileName(oFile.FileName) != "")
                {
                    string FileTxt = Path.GetExtension(oFile.FileName);
                    string nFileName = DateTime.Now.ToString("yyyyMMddHHmmssfff");
                    Random sran = new Random();
                    string Rand = sran.Next(1, 9).ToString();
                    string sFileName = nFileName + Rand + FileTxt;
                    string reFileName = sFileName;
                    string sFilePath = ConfigurationManager.AppSettings["FCKeditor:UserFilesPath"];
                    if (IsWater == 2)
                    {
                        sFilePath = ConfigurationManager.AppSettings["Education"];
                    }
                    sFilePath = sFilePath + "/" + DateTime.Now.ToString("yyyyMM") + "/";
                    FileHelper.CreateFolder(sFilePath);
                    string reFilePath = sFilePath;
                    sFilePath = HttpContext.Current.Server.MapPath(sFilePath);
                    string strFilePath = Path.Combine(sFilePath, sFileName);
                    oFile.SaveAs(strFilePath);
                    if (((FileTxt.ToLowerInvariant() == ".jpg") || (FileTxt.ToLowerInvariant() == ".gif")) || (FileTxt.ToLowerInvariant() == ".bmp"))
                    {
                        string tFilePath = sFilePath + "189X132" + sFileName;
                        ToThumbNail(strFilePath, 0xbd, 0x84, FileTxt, tFilePath);
                        tFilePath = sFilePath + "109X75" + sFileName;
                        ToThumbNail(strFilePath, 0x6d, 0x4b, FileTxt, tFilePath);
                        tFilePath = sFilePath + "119_90_" + sFileName;
                        ToThumbNail(strFilePath, 0x77, 90, FileTxt, tFilePath);
                        if (IsWater == 1)
                        {
                            string strw = HttpContext.Current.Server.MapPath("/UpLoad/") + "w.gif";
                            if (ConfigurationManager.AppSettings["WaterMark"].ToString() == "1")
                            {
                                string wFilePath = sFilePath + "W" + sFileName;
                                ToMarkWater(strFilePath, strw, strw, wFilePath, 1);
                            }
                        }
                    }
                    return (reFilePath + reFileName);
                }
                return null;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        public static string UploadWenXuan(HttpPostedFile oFile, int IsWater)
        {
            try
            {
                if (Path.GetFileName(oFile.FileName) != "")
                {
                    string FileTxt = Path.GetExtension(oFile.FileName);
                    string nFileName = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Millisecond.ToString();
                    Random sran = new Random();
                    string Rand = sran.Next(1, 9).ToString();
                    string sFileName = nFileName + Rand + FileTxt;
                    string reFileName = sFileName;
                    string sFilePath = ConfigurationManager.AppSettings["FCKeditor:UserFilesPath"];
                    sFilePath = sFilePath + "/" + DateTime.Now.Year.ToString() + "-" + DateTime.Now.Month.ToString() + "/";
                    FileHelper.CreateFolder(sFilePath);
                    string reFilePath = sFilePath;
                    sFilePath = HttpContext.Current.Server.MapPath(sFilePath);
                    string strFilePath = Path.Combine(sFilePath, sFileName);
                    oFile.SaveAs(strFilePath);
                    if (((FileTxt.ToLowerInvariant() == ".jpg") || (FileTxt.ToLowerInvariant() == ".gif")) || (FileTxt.ToLowerInvariant() == ".bmp"))
                    {
                        string tFilePath = sFilePath + "189X132" + sFileName;
                        ToThumbNail(strFilePath, 0xbd, 0x84, FileTxt, tFilePath);
                        tFilePath = sFilePath + "109X75" + sFileName;
                        ToThumbNail(strFilePath, 0x6d, 0x4b, FileTxt, tFilePath);
                        tFilePath = sFilePath + "119_90_" + sFileName;
                        ToThumbNail(strFilePath, 0x77, 90, FileTxt, tFilePath);
                        if (IsWater == 1)
                        {
                            string strw = HttpContext.Current.Server.MapPath("/UpLoad/") + "w.gif";
                            if (ConfigurationManager.AppSettings["WaterMark"].ToString() == "1")
                            {
                                string wFilePath = sFilePath + "W" + sFileName;
                                ToMarkWater(strFilePath, strw, strw, wFilePath, 1);
                            }
                        }
                    }
                    return (reFilePath + reFileName);
                }
                return null;
            }
            catch
            {
                return null;
            }
        }
        public static string UploadFlash(HttpPostedFile oFile)
        {
            try
            {
                if (Path.GetFileName(oFile.FileName) != "")
                {
                    string FileTxt = Path.GetExtension(oFile.FileName);
                    string nFileName = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Millisecond.ToString();
                    Random sran = new Random();
                    string Rand = sran.Next(1, 9).ToString();
                    string sFileName = nFileName + Rand + FileTxt;
                    string reFileName = sFileName;
                    string sFilePath = ConfigurationManager.AppSettings["FCKeditor:UserFlashPath"];
                    sFilePath = sFilePath + "/" + DateTime.Now.Year.ToString() + "-" + DateTime.Now.Month.ToString() + "/";
                    FileHelper.CreateFolder(sFilePath);
                    string reFilePath = sFilePath;
                    sFilePath = HttpContext.Current.Server.MapPath(sFilePath);
                    string strFilePath = Path.Combine(sFilePath, sFileName);
                    oFile.SaveAs(strFilePath);
                    if (FileTxt.ToLowerInvariant() == ".swf")
                    {
                        string tFilePath = sFilePath + "189X132" + sFileName;
                        ToThumbNail(strFilePath, 0xbd, 0x84, FileTxt, tFilePath);
                        tFilePath = sFilePath + "109X75" + sFileName;
                        ToThumbNail(strFilePath, 0x6d, 0x4b, FileTxt, tFilePath);
                        tFilePath = sFilePath + "119_90_" + sFileName;
                        ToThumbNail(strFilePath, 0x77, 90, FileTxt, tFilePath);
                        //if (IsWater == 1)
                        //{
                        //    string strw = HttpContext.Current.Server.MapPath("/UpLoad/") + "w.gif";
                        //    if (ConfigurationManager.AppSettings["WaterMark"].ToString() == "1")
                        //    {
                        //        string wFilePath = sFilePath + "W" + sFileName;
                        //        ToMarkWater(strFilePath, strw, strw, wFilePath, 1);
                        //    }
                        //}
                    }
                    return (reFilePath + reFileName);
                }
                return null;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        /// <summary>
        /// ָ��ͼƬ���ָ������
        /// </summary>
        /// <param name="fileName">ָ���ļ�·��</param>
        /// <param name="text">��ӵ�����</param>
        /// <param name="picname">�����ļ���</param>

        private void AddToImg(string file, string text, string picname)
        {
            //�ж�ָ��ͼƬ�Ƿ����
            //if (!File.Exists(MapPath(fileName)))
            //{
            //    throw new FileNotFoundException("The file don't exist!");
            //}

            //if (text == string.Empty)
            //{
            //    return;
            //}


            System.Drawing.Image image = System.Drawing.Image.FromFile(file);
            Bitmap bitmap = new Bitmap(image, image.Width, image.Height);
            Graphics g = Graphics.FromImage(bitmap);

            float fontSize = 40.0f;             //�����С
            float textWidth = text.Length * fontSize;  //�ı��ĳ���
            //���涨��һ�����������Ժ�����������ﻭ�ϰ׵׺���
            float rectX = 120;
            float rectY = 200;
            float rectWidth = 200;  // text.Length * (fontSize + 40);
            float rectHeight = fontSize + 40;
            //����������
            RectangleF textArea = new RectangleF(rectX, rectY, 270, 270);



            Font font = new Font("��������", fontSize, FontStyle.Bold);   //��������
            Font font2 = new Font("����", fontSize, FontStyle.Bold);   //��������
            //font.Bold = true;

            Brush whiteBrush = new SolidBrush(Color.DodgerBlue);   //�ױ�ˢ����������
            //Brush blackBrush = new SolidBrush(Color.Black);   //�ڱ�ˢ����������

            //g.FillRectangle(blackBrush, rectX, rectY, rectWidth, rectHeight);

            g.DrawString(text, font, whiteBrush, textArea, StringFormat.GenericDefault);

            g.DrawString(text, font, whiteBrush, new RectangleF(rectX, image.Height / 2, 270, 270));

            g.DrawString("168Ԫ", font2, new SolidBrush(Color.Firebrick), new RectangleF(rectX, image.Height - 150, rectWidth, rectHeight));

            ////-------------------  ���Ƹ����� -------------------------------------------
            //���� System.Drawing.Graphics�����SmoothingMode����ΪHighQuality 
            g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
            //�������Ҳ��ɸ����� 
            g.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
            //����������High 
            g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.High;

            //��ר���ƹ��ά��
            System.Drawing.Image qrCodeImage = System.Drawing.Image.FromFile(HttpContext.Current.Server.MapPath(@"/Content/images/money-cards.png"));
            g.DrawImage(qrCodeImage, new Rectangle(image.Width - qrCodeImage.Width - 200,
            image.Height - qrCodeImage.Height - 200,
            qrCodeImage.Width,
            qrCodeImage.Height),
            0, 0, qrCodeImage.Width, qrCodeImage.Height, GraphicsUnit.Pixel);
            //��΢���ǳ�
            g.DrawString("С�����", font, new SolidBrush(Color.Red), new Rectangle(image.Width - qrCodeImage.Width - 200,
            image.Height - qrCodeImage.Height - 300,
            qrCodeImage.Width + 100,
            50));

            MemoryStream ms = new MemoryStream();

            //�������һ�����ļ����ɲ����浽C��
            string path = "D:\\test\\" + picname + ".png";
            bitmap.Save(path, System.Drawing.Imaging.ImageFormat.Jpeg);


            //�������������ʾ����ҳ�У�����ΪJpg����
            //bitmap.Save(ms, ImageFormat.Jpeg);
            //Response.Clear();
            //Response.ContentType = "image/jpeg";
            //Response.BinaryWrite(ms.ToArray());

            g.Dispose();
            bitmap.Dispose();
            image.Dispose();
        }
        /// <summary>
        /// ���ɴ���ά���ר���ƹ�ͼƬ
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public static string Draw(Image qrCodeImages)
        {
            //����ͼƬ
            string path = HttpContext.Current.Server.MapPath("/Content/images/time.jpg");
            string path2 = HttpContext.Current.Server.MapPath("/Content/images/112.png");
            System.Drawing.Image imgSrc = System.Drawing.Image.FromFile(path);

            //�����ά��ͼƬ��С 240*240px
            System.Drawing.Image qrCodeImage = ReduceImage(qrCodeImages, 240, 240);
            //Image img=Image.
            //����ͷ��ͼƬ��С 100*100px
            Image titleImage = ReduceImage(path2, 710, 710);

            using (Graphics g = Graphics.FromImage(imgSrc))
            {
                //g.DrawRectangle(new Pen(new SolidBrush(Color.Red)), new Rectangle(0, 0, 750, 750));

                //��ר���ƹ��ά��
                g.DrawImage(qrCodeImage, new Rectangle(imgSrc.Width - qrCodeImage.Width - 50,
                imgSrc.Height - qrCodeImage.Height - 40,
                qrCodeImage.Width,
                qrCodeImage.Height),
                0, 0, qrCodeImage.Width, qrCodeImage.Height, GraphicsUnit.Pixel);

                g.DrawImage(titleImage, 20, 20, titleImage.Width, titleImage.Height);
                //��ͷ��
                //g.DrawImage(titleImage, 8, 8, titleImage.Width, titleImage.Height);
                Font font = new Font("����", 30, FontStyle.Bold);
                g.DrawString("1111", font, new SolidBrush(Color.Red), 110, 10);
            }
            string newpath = HttpContext.Current.Server.MapPath(@"/Content/images/newtg_" + Guid.NewGuid().ToString() + ".jpg");
            imgSrc.Save(newpath, System.Drawing.Imaging.ImageFormat.Jpeg);
            return newpath;
        }
        /// <summary>
        /// ��С/�Ŵ�ͼƬ
        /// </summary>
        /// <param name="url">ͼƬ�����ַ</param>
        /// <param name="toWidth">��С/�Ŵ���</param>
        /// <param name="toHeight">��С/�Ŵ�߶�</param>
        /// <returns></returns>
        public static Image ReduceImage(string url, int toWidth, int toHeight)
        {
            Image originalImage = Image.FromFile(url);
            if (toWidth <= 0 && toHeight <= 0)
            {
                return originalImage;
            }
            else if (toWidth > 0 && toHeight > 0)
            {
                if (originalImage.Width < toWidth && originalImage.Height < toHeight)
                    return originalImage;
            }
            else if (toWidth <= 0 && toHeight > 0)
            {
                if (originalImage.Height < toHeight)
                    return originalImage;
                toWidth = originalImage.Width * toHeight / originalImage.Height;
            }
            else if (toHeight <= 0 && toWidth > 0)
            {
                if (originalImage.Width < toWidth)
                    return originalImage;
                toHeight = originalImage.Height * toWidth / originalImage.Width;
            }
            Image toBitmap = new Bitmap(toWidth, toHeight);
            using (Graphics g = Graphics.FromImage(toBitmap))
            {
                g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.High;
                g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
                g.Clear(Color.Transparent);
                g.DrawImage(originalImage,
                            new Rectangle(0, 0, toWidth, toHeight),
                            new Rectangle(0, 0, originalImage.Width, originalImage.Height),
                            GraphicsUnit.Pixel);
                originalImage.Dispose();
                return toBitmap;
            }
        }
        public static Image ReduceImage(Image originalImage, int toWidth, int toHeight)
        {
            if (toWidth <= 0 && toHeight <= 0)
            {
                return originalImage;
            }
            else if (toWidth > 0 && toHeight > 0)
            {
                if (originalImage.Width < toWidth && originalImage.Height < toHeight)
                    return originalImage;
            }
            else if (toWidth <= 0 && toHeight > 0)
            {
                if (originalImage.Height < toHeight)
                    return originalImage;
                toWidth = originalImage.Width * toHeight / originalImage.Height;
            }
            else if (toHeight <= 0 && toWidth > 0)
            {
                if (originalImage.Width < toWidth)
                    return originalImage;
                toHeight = originalImage.Height * toWidth / originalImage.Width;
            }
            Image toBitmap = new Bitmap(toWidth, toHeight);
            using (Graphics g = Graphics.FromImage(toBitmap))
            {
                g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.High;
                g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
                g.Clear(Color.Transparent);
                g.DrawImage(originalImage,
                            new Rectangle(0, 0, toWidth, toHeight),
                            new Rectangle(0, 0, originalImage.Width, originalImage.Height),
                            GraphicsUnit.Pixel);
                originalImage.Dispose();
                return toBitmap;
            }
        }

        /// <summary>    
        /// ȡ��HTML������ͼƬ�� URL��    
        /// </summary>    
        /// <param name="sHtmlText">HTML����</param>    
        /// <returns>ͼƬ��URL�б�</returns>    
        public static string[] GetHtmlImgUrlList(string sHtmlText)
        {
            // ����������ʽ����ƥ�� img ��ǩ    
            Regex regImg = new Regex(@"<img\b[^<>]*?\bsrc[\s\t\r\n]*=[\s\t\r\n]*[""']?[\s\t\r\n]*(?<imgUrl>[^\s\t\r\n""'<>]*)[^<>]*?/?[\s\t\r\n]*>", RegexOptions.IgnoreCase);

            // ����ƥ����ַ���    
            MatchCollection matches = regImg.Matches(sHtmlText);
            int i = 0;
            string[] sUrlList = new string[matches.Count];

            // ȡ��ƥ�����б�    
            foreach (Match match in matches)
            {
                sUrlList[i++] = match.Groups["imgUrl"].Value;
            }
            return sUrlList;
        }
        #region base64תͼƬ
        /// <summary>
        /// ͼƬ�ϴ� Base64����
        /// </summary>
        /// <param name="dataURL">Base64����</param>
        /// <param name="imgName">��Ҫ��������·��������</param>
        /// <returns>����һ�����·��</returns>
        public static string decodeBase64ToImage(string dataURL, string filename)
        {

            //string filename = "";//����һ��string���͵����·��

            String base64 = dataURL.Substring(dataURL.IndexOf(",") + 1);      //����������ǰ�Ķ����ַ���ɾ��
            System.Drawing.Bitmap bitmap = null;//����һ��Bitmap���󣬽���ת����ɵ�ͼƬ

            try//�����쳣�׳���try��catchһ��
            {

                byte[] arr = Convert.FromBase64String(base64);//��������ԴBase64ת���ɵ�Ч��8λ�޷�����������

                System.IO.MemoryStream ms = new System.IO.MemoryStream(arr);//ת�����޷�������С��MemoryStream����
                bitmap = new System.Drawing.Bitmap(ms);//��MemoryStream����ת����Bitmap����

                //filename = imgName;//��Ҫ��������·��������
                //string url = HttpRuntime.AppDomainAppPath.ToString();
                string tmpRootDir = System.Web.HttpContext.Current.Server.MapPath(filename); //��ȡ�����Ŀ¼ 
                //string imagesurl2 = tmpRootDir + filename; //ת���ɾ���·�� 
                bitmap.Save(tmpRootDir, System.Drawing.Imaging.ImageFormat.Png);//���浽������·��
                //bitmap.Save(filePath + ".bmp", System.Drawing.Imaging.ImageFormat.Bmp);
                //bitmap.Save(filePath + ".gif", System.Drawing.Imaging.ImageFormat.Gif);
                //bitmap.Save(filePath + ".png", System.Drawing.Imaging.ImageFormat.Png);
                ms.Close();//�رյ�ǰ�������ͷ�������֮��������Դ
                bitmap.Dispose();
            }
            catch (Exception e)
            {
                string massage = e.Message;
            }
            return filename;//�������·��
        }
        #endregion

        #region ͼƬתbase64
        /// <summary>
        /// ͼƬתbase64
        /// </summary>
        /// <param name="path">ͼƬ·��</param><br>        
        ///  <returns>����һ��base64�ַ���</returns>
        public static string decodeImageToBase64(string path)
        {

            string base64str = "";

            //վ���ļ�Ŀ¼
            string fileDir = HttpContext.Current.Server.MapPath(path);
            string[] arrfileDir = fileDir.Split('\\');
            fileDir = arrfileDir[0] + "\\" + arrfileDir[1] + "\\" + arrfileDir[2];
            try
            {
                //��ͼƬתΪBase64String
                Bitmap bmp = new Bitmap(path);
                //System.Drawing.Bitmap bmp = new System.Drawing.Bitmap(path);
                MemoryStream ms = new MemoryStream();
                bmp.Save(ms, ImageFormat.Jpeg);
                byte[] arr = new byte[ms.Length];
                ms.Position = 0;
                ms.Read(arr, 0, (int)ms.Length);
                ms.Close();
                bmp.Dispose();
                base64str = Convert.ToBase64String(arr);
            }
            catch (Exception e)
            {
                string mss = e.Message;
            }
            return "data:image/jpg;base64," + base64str;
        }
        /// <summary>
        /// Image ת�� base64
        /// </summary>
        /// <param name="path">�ļ�·��</param>
        public static string ImageToBase64(string path)
        {
            try
            {
                string dumpPath = HttpContext.Current.Server.MapPath(path);
                FileStream file = new FileStream(dumpPath, FileMode.Open);
                BinaryReader br = new BinaryReader(file);
                byte[] imgBytesIn = br.ReadBytes((int)file.Length); //�������뵽�ֽ�������
                file.Close();
                //Bitmap bmp = new Bitmap(dumpPath);
                //MemoryStream ms = new MemoryStream();
                //var suffix = dumpPath.Substring(dumpPath.LastIndexOf('.') + 1,
                //    dumpPath.Length - dumpPath.LastIndexOf('.') - 1).ToLower();
                //var suffixName = suffix == "png"
                //    ? ImageFormat.Png
                //    : suffix == "jpg" || suffix == "jpeg"
                //        ? ImageFormat.Jpeg
                //        : suffix == "bmp"
                //            ? ImageFormat.Bmp
                //            : suffix == "gif"
                //                ? ImageFormat.Gif
                //                : ImageFormat.Jpeg;

                //bmp.Save(ms, suffixName);
                //byte[] arr = new byte[ms.Length];
                //ms.Position = 0;
                //ms.Read(arr, 0, (int)ms.Length);
                //ms.Close();
                //bmp.Dispose();
         
                return Convert.ToBase64String(imgBytesIn);
            }
            catch (Exception ex)
            {
                return null;
            }

        }
        #endregion
        /// <summary>
        /// ��ȡ�ļ�MD5ֵ
        /// </summary>
        /// <param name="path">�ļ�·��</param>
        /// <returns>MD5ֵ</returns>
        public static string GetMD5HashFromFile(string path)
        {
            try
            {
                string dumpPath = HttpContext.Current.Server.MapPath(path);
                FileStream file = new FileStream(dumpPath, FileMode.Open);
                System.Security.Cryptography.MD5 md5 = new System.Security.Cryptography.MD5CryptoServiceProvider();
                byte[] retVal = md5.ComputeHash(file);
                file.Close();

                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < retVal.Length; i++)
                {
                    sb.Append(retVal[i].ToString("x2"));
                }
                return sb.ToString();
            }
            catch (Exception ex)
            {
                throw new Exception("GetMD5HashFromFile() fail,error:" + ex.Message);
            }
        }

    }
}
