using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using System.Configuration;
using System.IO;
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
