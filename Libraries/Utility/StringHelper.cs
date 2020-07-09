using System;
using System.Collections.Generic;
using System.Text;
using System.Security.Cryptography;
using System.Text.RegularExpressions;
using System.Web;

namespace Utility
{
    public class StringHelper
    {
        // Methods
        public StringHelper() { }
        public static string BackFillString(string sourceString, string fillWord, int Length)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(sourceString);
            if (sb.Length < Length)
            {
                while (sb.Length < Length)
                {
                    sb.Append(fillWord);
                }
                return sb.ToString();
            }
            string result = sb.ToString();
            result.Substring(0, 7);
            return result;
        }
        /// <summary>
        /// ���˱��
        /// </summary>
        /// <param name="NoHTML">����HTML���ű������ݿ�ؼ��֣������ַ���Դ�� </param>
        /// <returns>�Ѿ�ȥ����Ǻ������</returns>
        public static string NoHtml(string Htmlstring)
        {
            if (Htmlstring == null)
            {
                return "";
            }
            else
            {
                //ɾ���ű�
                Htmlstring = Regex.Replace(Htmlstring, @"<script[^>]*?>.*?</script>", "", RegexOptions.IgnoreCase);
                //ɾ��HTML
                Htmlstring = Regex.Replace(Htmlstring, @"<(.[^>]*)>", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, @"([\r\n])[\s]+", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, @"-->", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, @"<!--.*", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, @"&(quot|#34);", "\"", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, @"&(amp|#38);", "&", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, @"&(lt|#60);", "<", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, @"&(gt|#62);", ">", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, @"&(nbsp|#160);", " ", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, @"&(iexcl|#161);", "\xa1", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, @"&(cent|#162);", "\xa2", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, @"&(pound|#163);", "\xa3", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, @"&(copy|#169);", "\xa9", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, @"&#(\d+);", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "xp_cmdshell", "", RegexOptions.IgnoreCase);

                //ɾ�������ݿ���صĴ�
                Htmlstring = Regex.Replace(Htmlstring, "select", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "insert", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "delete from", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "count''", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "drop table", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "truncate", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "asc", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "mid", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "char", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "xp_cmdshell", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "exec master", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "net localgroup administrators", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "and", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "net user", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "or", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "net", "", RegexOptions.IgnoreCase);
                //Htmlstring = Regex.Replace(Htmlstring, "*", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "-", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "delete", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "drop", "", RegexOptions.IgnoreCase);
                Htmlstring = Regex.Replace(Htmlstring, "script", "", RegexOptions.IgnoreCase);

                //������ַ�
                Htmlstring = Htmlstring.Replace("<", "");
                Htmlstring = Htmlstring.Replace(">", "");
                Htmlstring = Htmlstring.Replace("*", "");
                Htmlstring = Htmlstring.Replace("-", "");
                Htmlstring = Htmlstring.Replace("?", "");
                Htmlstring = Htmlstring.Replace("'", "''");
                Htmlstring = Htmlstring.Replace(",", "");
                Htmlstring = Htmlstring.Replace("/", "");
                Htmlstring = Htmlstring.Replace(";", "");
                Htmlstring = Htmlstring.Replace("*/", "");
                Htmlstring = Htmlstring.Replace("\r\n", "");
                Htmlstring = HttpContext.Current.Server.HtmlEncode(Htmlstring).Trim();

                return Htmlstring;
            }

        }
        public static string DateToYear(string sDate)
        {
            //int iIndex = sDate.LastIndexOf("-");
            //return sDate.Remove(iIndex, sDate.Length - iIndex);

            return DateTime.Parse(sDate).ToString("yyyy-M").ToString();
        }

        public static string DeleteUnVisibleChar(string sourceString)
        {
            StringBuilder sBuilder = new StringBuilder(0x83);
            for (int i = 0; i < sourceString.Length; i++)
            {
                int Unicode = sourceString[i];
                if (Unicode >= 0x10)
                {
                    sBuilder.Append(sourceString[i].ToString());
                }
            }
            return sBuilder.ToString();
        }

        public static string DelLastComma(string origin)
        {
            if (origin.IndexOf(",") == -1)
            {
                return origin;
            }
            return origin.Substring(0, origin.LastIndexOf(","));
        }

        public static string FrontFillString(string sourceString, string fillWord, int Length)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(sourceString);
            if (sb.Length < Length)
            {
                while (sb.Length < Length)
                {
                    sb.Insert(0, fillWord);
                }
                return sb.ToString();
            }
            string result = sb.ToString();
            result.Substring(0, Length);
            return result;
        }



        public static string GetArrayString(string[] stringArray)
        {
            string totalString = null;
            for (int i = 0; i < stringArray.Length; i++)
            {
                totalString = totalString + stringArray[i];
            }
            return totalString;
        }

        public static int GetByteCount(string strTmp)
        {
            int intCharCount = 0;
            for (int i = 0; i < strTmp.Length; i++)
            {
                if (Encoding.UTF8.GetByteCount(strTmp.Substring(i, 1)) == 3)
                {
                    intCharCount += 2;
                }
                else
                {
                    intCharCount++;
                }
            }
            return intCharCount;
        }
        public static int GetByteIndex(int intIns, string strTmp)
        {
            int intReIns = 0;
            if (strTmp.Trim() == "")
            {
                return intIns;
            }
            for (int i = 0; i < strTmp.Length; i++)
            {
                if (Encoding.UTF8.GetByteCount(strTmp.Substring(i, 1)) == 3)
                {
                    intReIns += 2;
                }
                else
                {
                    intReIns++;
                }
                if (intReIns >= intIns)
                {
                    return (i + 1);
                }
            }
            return intReIns;
        }

        public static string GetFirstString(string stringToSub, int length)
        {
            Regex regex = new Regex("[һ-��]+", RegexOptions.Compiled);
            char[] stringChar = stringToSub.ToCharArray();
            StringBuilder sb = new StringBuilder();
            int nLength = 0;
            bool isCut = false;
            for (int i = 0; i < stringChar.Length; i++)
            {
                if (regex.IsMatch(stringChar[i].ToString()))
                {
                    sb.Append(stringChar[i]);
                    nLength += 2;
                }
                else
                {
                    sb.Append(stringChar[i]);
                    nLength++;
                }
                if (nLength > length)
                {
                    isCut = true;
                    break;
                }
            }
            if (isCut)
            {
                return (sb.ToString() + "��");
            }
            return sb.ToString();
        }

        public static string GetRealIP()
        {
            string ip;
            try
            {
                ip = HttpContext.Current.Request.UserHostAddress;
            }
            catch (Exception e)
            {
                throw e;
            }
            return ip;
        }

        public static int GetStringCount(string sourceString, string findString)
        {
            int count = 0;
            int findStringLength = findString.Length;
            string subString = sourceString;
            while (subString.IndexOf(findString) >= 0)
            {
                subString = subString.Substring(subString.IndexOf(findString) + findStringLength);
                count++;
            }
            return count;
        }

        public static int GetStringCount(string[] stringArray, string findString)
        {
            int count = -1;
            string totalString = GetArrayString(stringArray);
            string subString = totalString;
            while (subString.IndexOf(findString) >= 0)
            {
                subString = totalString.Substring(subString.IndexOf(findString));
                count++;
            }
            return count;
        }

        public static string GetSubString(string sourceString, string startString)
        {
            try
            {
                int index = sourceString.ToUpper().IndexOf(startString);
                if (index > 0)
                {
                    return sourceString.Substring(index);
                }
                return sourceString;
            }
            catch
            {
                return "";
            }
        }

        public static string GetSubString(string sourceString, string beginRemovedString, string endRemovedString)
        {
            try
            {
                if (sourceString.IndexOf(beginRemovedString) != 0)
                {
                    beginRemovedString = "";
                }
                if (sourceString.LastIndexOf(endRemovedString, (int)(sourceString.Length - endRemovedString.Length)) < 0)
                {
                    endRemovedString = "";
                }
                int startIndex = beginRemovedString.Length;
                int length = (sourceString.Length - beginRemovedString.Length) - endRemovedString.Length;
                if (length > 0)
                {
                    return sourceString.Substring(startIndex, length);
                }
                return sourceString;
            }
            catch
            {
                return sourceString;
            }
        }

        public static string LeftSplit(string sourceString, char splitChar)
        {
            string result = null;
            string[] tempString = sourceString.Split(new char[] { splitChar });
            if (tempString.Length > 0)
            {
                result = tempString[0].ToString();
            }
            return result;
        }

        public static string Remove(string sourceString, string removedString)
        {
            try
            {
                if (sourceString.IndexOf(removedString) < 0)
                {
                    throw new Exception("ԭ�ַ����в������Ƴ��ַ�����");
                }
                string result = sourceString;
                int lengthOfSourceString = sourceString.Length;
                int lengthOfRemovedString = removedString.Length;
                int startIndex = lengthOfSourceString - lengthOfRemovedString;
                if (sourceString.Substring(startIndex).ToUpper() == removedString.ToUpper())
                {
                    result = sourceString.Remove(startIndex, lengthOfRemovedString);
                }
                return result;
            }
            catch
            {
                return sourceString;
            }
        }

        public static string RightSplit(string sourceString, char splitChar)
        {
            string result = null;
            string[] tempString = sourceString.Split(new char[] { splitChar });
            if (tempString.Length > 0)
            {
                result = tempString[tempString.Length - 1].ToString();
            }
            return result;
        }

        public static string Tomd5(string md5String)
        {
            byte[] result = Encoding.Default.GetBytes(md5String);
            MD5 md5 = new MD5CryptoServiceProvider();
            return BitConverter.ToString(md5.ComputeHash(result)).Replace("-", "");
        }

        /// <summary>
        /// ���תΪ��д���
        /// </summary>
        /// <param name="LowerMoney"></param>
        /// <returns></returns>
        public static string MoneyToChinese(string LowerMoney)
        {
            string functionReturnValue = null;
            bool IsNegative = false; // �Ƿ��Ǹ���
            if (LowerMoney.Trim().Substring(0, 1) == "-")
            {
                // �Ǹ�������תΪ����
                LowerMoney = LowerMoney.Trim().Remove(0, 1);
                IsNegative = true;
            }
            string strLower = null;
            string strUpart = null;
            string strUpper = null;
            int iTemp = 0;
            // ������λС�� 123.489��123.49����123.4��123.4
            LowerMoney = Math.Round(double.Parse(LowerMoney), 2).ToString();
            if (LowerMoney.IndexOf(".") > 0)
            {
                if (LowerMoney.IndexOf(".") == LowerMoney.Length - 2)
                {
                    LowerMoney = LowerMoney + "0";
                }
            }
            else
            {
                LowerMoney = LowerMoney + ".00";
            }
            strLower = LowerMoney;
            iTemp = 1;
            strUpper = "";
            while (iTemp <= strLower.Length)
            {
                switch (strLower.Substring(strLower.Length - iTemp, 1))
                {
                    case ".":
                        strUpart = "Բ";
                        break;
                    case "0":
                        strUpart = "��";
                        break;
                    case "1":
                        strUpart = "Ҽ";
                        break;
                    case "2":
                        strUpart = "��";
                        break;
                    case "3":
                        strUpart = "��";
                        break;
                    case "4":
                        strUpart = "��";
                        break;
                    case "5":
                        strUpart = "��";
                        break;
                    case "6":
                        strUpart = "½";
                        break;
                    case "7":
                        strUpart = "��";
                        break;
                    case "8":
                        strUpart = "��";
                        break;
                    case "9":
                        strUpart = "��";
                        break;
                }

                switch (iTemp)
                {
                    case 1:
                        strUpart = strUpart + "��";
                        break;
                    case 2:
                        strUpart = strUpart + "��";
                        break;
                    case 3:
                        strUpart = strUpart + "";
                        break;
                    case 4:
                        strUpart = strUpart + "";
                        break;
                    case 5:
                        strUpart = strUpart + "ʰ";
                        break;
                    case 6:
                        strUpart = strUpart + "��";
                        break;
                    case 7:
                        strUpart = strUpart + "Ǫ";
                        break;
                    case 8:
                        strUpart = strUpart + "��";
                        break;
                    case 9:
                        strUpart = strUpart + "ʰ";
                        break;
                    case 10:
                        strUpart = strUpart + "��";
                        break;
                    case 11:
                        strUpart = strUpart + "Ǫ";
                        break;
                    case 12:
                        strUpart = strUpart + "��";
                        break;
                    case 13:
                        strUpart = strUpart + "ʰ";
                        break;
                    case 14:
                        strUpart = strUpart + "��";
                        break;
                    case 15:
                        strUpart = strUpart + "Ǫ";
                        break;
                    case 16:
                        strUpart = strUpart + "��";
                        break;
                    default:
                        strUpart = strUpart + "";
                        break;
                }

                strUpper = strUpart + strUpper;
                iTemp = iTemp + 1;
            }

            strUpper = strUpper.Replace("��ʰ", "��");
            strUpper = strUpper.Replace("���", "��");
            strUpper = strUpper.Replace("��Ǫ", "��");
            strUpper = strUpper.Replace("������", "��");
            strUpper = strUpper.Replace("����", "��");
            strUpper = strUpper.Replace("������", "��");
            strUpper = strUpper.Replace("���", "��");
            strUpper = strUpper.Replace("���", "��");
            strUpper = strUpper.Replace("����������Բ", "��Բ");
            strUpper = strUpper.Replace("��������Բ", "��Բ");
            strUpper = strUpper.Replace("��������", "��");
            strUpper = strUpper.Replace("������Բ", "��Բ");
            strUpper = strUpper.Replace("����", "��");
            strUpper = strUpper.Replace("����", "��");
            strUpper = strUpper.Replace("��Բ", "Բ");
            strUpper = strUpper.Replace("����", "��");

            // ��ҼԲ���µĽ��Ĵ���
            if (strUpper.Substring(0, 1) == "Բ")
            {
                strUpper = strUpper.Substring(1, strUpper.Length - 1);
            }
            if (strUpper.Substring(0, 1) == "��")
            {
                strUpper = strUpper.Substring(1, strUpper.Length - 1);
            }
            if (strUpper.Substring(0, 1) == "��")
            {
                strUpper = strUpper.Substring(1, strUpper.Length - 1);
            }
            if (strUpper.Substring(0, 1) == "��")
            {
                strUpper = strUpper.Substring(1, strUpper.Length - 1);
            }
            if (strUpper.Substring(0, 1) == "��")
            {
                strUpper = "��Բ��";
            }
            functionReturnValue = strUpper;

            if (IsNegative == true)
            {
                return "��" + functionReturnValue;
            }
            else
            {
                return functionReturnValue;
            }
        }
    }
}
