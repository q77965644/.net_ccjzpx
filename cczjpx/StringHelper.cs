using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
//using Weixin.Library.Model;

namespace BookWeb
{
	public class StringHelper
	{
		private static int idNum = 0;
		
		/// <summary>
		/// 使用正则表达式替换字符串。
		/// </summary>
		/// <param name="input">要修改的字符串 <seealso cref="System.String"/>。</param>
		/// <param name="replacement">替换字符串 <seealso cref="System.String"/>。</param>
		/// <param name="pattern">要替匹配的正则表达式模式 <seealso cref="System.String"/>。</param>
		/// <returns></returns>
		public static string Replace(string input, string replacement, string pattern)
		{
			return Regex.Replace(input, pattern, replacement);
		}
		
		/// <summary>
		/// 为一个字符串填充空白到指定位数。
		/// </summary>
		/// <param name="str">要填补空白的字符串 <seealso cref="System.String"/>。</param>
		/// <param name="digit">指定位数 <seealso cref="System.Int32"/>。</param>
		/// <returns>指定位数的字符串 <seealso cref="System.String"/>。</returns>
		public static string FillSpace(string str, int digit)
		{
			string result = str;
			for (int i = str.Length; i < digit; i++)
			{
				result = "0" + result;
			}
			return result;
		}
		
		/// <summary>
		/// 获取一个 20 位的编号。
		/// </summary>
		/// <returns>20 位的编号 <seealso cref="System.String"/>。</returns>
		public static string GetId()
		{
			if (idNum > 999999)
			{
				idNum = 0;
			}
			return DateTime.Now.ToString("yyyyMMddHHmmss") + FillSpace(idNum++.ToString(), 6);
		}
		
		/// <summary>
		/// 判断传入的链接地址是符合条件。
		/// </summary>
		/// <example>
		/// http(s)://xxx.com 返回 "1"，
		/// ~/Admin/xxx.aspx 返回 "2"，
		/// 其余返回 0。
		/// </example>
		/// <param name="url">链接地址</param>
		/// <returns></returns>
        //public static Enums.ResourcePathType CheckUrl(string url)
        //{
        //    if (Regex.Match(url, "^https?:[/]{2}", RegexOptions.IgnoreCase).Success)
        //        return Enums.ResourcePathType.Absolute;
        //    else if (Regex.Match(url, "^~?/", RegexOptions.IgnoreCase).Success)
        //        return Enums.ResourcePathType.Relative;
        //    else
        //        return Enums.ResourcePathType.Other;
        //}

		#region 剪切全角半角字符的方法组及结构体...

		/// <summary>
		/// 剪切字符返回数据。
		/// </summary>
		public class CutReturnData
		{
			/// <summary>
			/// 构造函数。
			/// </summary>
			public CutReturnData()
			{
				value = "";
				beginByte = 0;
				beginIndex = 0;
				endByte = 0;
				endIndex = 0;
				byteLength = 0;
			}
			
			/// <summary>
			/// 构造函数。
			/// </summary>
			/// <param name="value">值 <seealso cref="System.String"/>。</param>
			/// <param name="beginByte">起始字节位置 <seealso cref="System.Int32"/>。</param>
			/// <param name="beginIndex">起始索引 <seealso cref="System.Int32"/>。</param>
			/// <param name="endByte">终止字节位置 <seealso cref="System.Int32"/>。</param>
			/// <param name="endIndex">终止索引 <seealso cref="System.Int32"/>。</param>
			/// <param name="byteLength">字节长度 <seealso cref="System.Int32"/>。</param>
			public CutReturnData(string value, int beginByte, int beginIndex, int endByte, int endIndex, int byteLength)
			{
				this.value = value;
				this.beginByte = beginByte;
				this.beginIndex = beginIndex;
				this.endByte = endByte;
				this.endIndex = endIndex;
				this.byteLength = byteLength;
			}
			
			/// <summary>
			/// 字符串值。
			/// </summary>
			public string value { get; set; }
			
			/// <summary>
			/// 起始索引，指定起始字节在字符串中的索引位置。
			/// </summary>
			public int beginIndex { get; set; }
			
			/// <summary>
			/// 起始字节，参数 beginByte 的值 （半角字符为1字节，全角字符为2字节）。
			/// </summary>
			public int beginByte { get; set; }
			
			/// <summary>
			/// 结束索引，指定长度字符串在源字符串中结束的索引位置。
			/// </summary>
			public int endIndex { get; set; }
			
			/// <summary>
			/// 结束字节，指定长度字符串在源字符串中结束的字节 （半角字符为1字节，全角字符为2字节）。
			/// </summary>
			public int endByte { get; set; }
			
			/// <summary>
			/// 字节长度，截取的字符串字节长度 （半角字符为1字节，全角字符为2字节）。
			/// </summary>
			public int byteLength { get; set; }
		}

		/// <summary>
		/// 截取指定长度字符串：以半角字符为单位。
		/// </summary>
		/// <param name="srcString">被截取字符串 <seealso cref="System.String"/>。</param>
		/// <param name="length">截取长度 <seealso cref="System.Int32"/>。</param>
		/// <param name="otherString">修饰字符串，如"…"、"..."等 <seealso cref="System.String"/>。</param>
		/// <returns>截取的字符串 <seealso cref="System.String"/>。</returns>
		public static string CutString(string srcString, int length, string otherString)
		{
			char[] charArray = srcString.ToCharArray();
			string showString = string.Empty;
			int k = 0;
			for (int i = 0; i < charArray.Length; i++)
			{
				k += GetByteLength(charArray[i]);
				if (k >= length)
				{
					showString += otherString;
					break;
				}
			}
			return showString;
		}
		
		/// <summary>
		/// 获取字节长度 （半角字符为1字节，全角字符为2字节）。
		/// </summary>
		/// <param name="srcString">源字符串 <seealso cref="System.String"/>。</param>
		/// <returns>字符串的字节长度 <seealso cref="System.Int32"/>。</returns>
		public static int GetByteLength(string srcString)
		{
			char[] charArray = srcString.ToCharArray();
			int k = 0;
			for (int i = 0; i < charArray.Length; i++)
			{
				k += GetByteLength(charArray[i]);
			}
			return k;
		}

		/// <summary>
		/// 获取字节长度 （半角字符为1字节，全角字符为2字节）。
		/// </summary>
		/// <param name="srcChar">源字符 <seealso cref="System.Char"/>。</param>
		/// <returns>字符的字节长度 <seealso cref="System.Int32"/>。</returns>
		public static int GetByteLength(char srcChar)
		{
			if (Encoding.Default.GetByteCount(srcChar.ToString()) == 1)
			{
				return 1;
			}
			else
			{
				return 2;
			}
		}
		
		/// <summary>
		/// 字符大小，用于区分全角半角的字符串截取时使用
		/// </summary>
		private class CharSize
		{
			/// <summary>
			/// 构造函数。
			/// </summary>
			internal CharSize()
			{
				charIndex = 0;
				charSize = 0;
				charCount = 0;
			}

			/// <summary>
			/// 构造函数。
			/// </summary>
			/// <param name="charIndex">当前字符索引 <seealso cref="System.Int32"/>。</param>
			/// <param name="charSize">当前字符所占字节（全角占2字节，半角占1字节） <seealso cref="System.Int32"/>。</param>
			/// <param name="charCount">当前字符至起始字符的总字节数 <seealso cref="System.Int32"/>。</param>
			internal CharSize(int charIndex, int charSize, int charCount)
			{
				this.charIndex = charIndex;
				this.charSize = charSize;
				this.charCount = charCount;
			}

			/// <summary>
			/// 当前字符索引。
			/// </summary>
			internal int charIndex { get; set; }
			
			/// <summary>
			/// 当前字符所占字节（全角占2字节，半角占1字节）。
			/// </summary>
			internal int charSize { get; set; }
			
			/// <summary>
			/// 当前字符至起始字符的总字节数。
			/// </summary>
			internal int charCount { get; set; }
		}

		/// <summary>
		/// 根据起始索引获取字符串：以半角字符为单位。
		/// </summary>
		/// <param name="srcString">被截取字符串 <seealso cref="System.String"/>。</param>
		/// <param name="beginByte">起始索引 <seealso cref="System.Int32"/>。</param>
		/// <param name="byteLength">要截取的字节长度 <seealso cref="System.Int32"/>。</param>
		/// <returns>截取的字符串 <seealso cref="Weixin.Library.Base.StringHelper.ReturnCutData"/>。</returns>
		public static CutReturnData GetStringByIndex(string srcString, int beginByte, int byteLength)
		{
			return GetStringByIndex(srcString, beginByte, byteLength, "", "");
		}

		/// <summary>
		/// 根据起始索引获取字符串：以半角字符为单位。
		/// </summary>
		/// <param name="srcString">被截取字符串 <seealso cref="System.String"/>。</param>
		/// <param name="beginByte">起始索引 <seealso cref="System.Int32"/>。</param>
		/// <param name="byteLength">要截取的字节长度 <seealso cref="System.Int32"/>。</param>
		/// <param name="ellipsis">省略符号 <seealso cref="System.String"/>。</param>
		/// <returns>截取的字符串 <seealso cref="Weixin.Library.Base.StringHelper.ReturnCutData"/>。</returns>
		public static CutReturnData GetStringByIndex(string srcString, int beginByte, int byteLength, string ellipsis)
		{
			return GetStringByIndex(srcString, beginByte, byteLength, ellipsis, "");
		}

		/// <summary>
		/// 根据起始索引获取字符串：以半角字符为单位。
		/// </summary>
		/// <param name="srcString">被截取字符串 <seealso cref="System.String"/>。</param>
		/// <param name="beginByte">起始索引 <seealso cref="System.Int32"/>。</param>
		/// <param name="byteLength">要截取的字节长度 <seealso cref="System.Int32"/>。</param>
		/// <param name="ellipsis">省略符号 <seealso cref="System.String"/>。</param>
		/// <param name="specialChar">特殊字符，要置于截取字符串结尾的字符 <seealso cref="System.String"/>。</param>
		/// <returns>截取的字符串 <seealso cref="Weixin.Library.Base.StringHelper.ReturnCutData"/>。</returns>
		public static CutReturnData GetStringByIndex(string srcString, int beginByte, int byteLength, string ellipsis, string specialChar)
		{
			char[] charArray = srcString.ToCharArray();
			CutReturnData returnCutData = new CutReturnData(); // 返回的对象
			bool needEllipsis = !string.IsNullOrEmpty(ellipsis); // 是否需要在截取的字符串末尾附加省略字符
			
			// 计算开始
			int byteSize = 0, length = charArray.Length;
			List<CharSize> charSizeList = new List<CharSize>();
			// 计算字符索引及字节大小
			for (int i = 0; i < length; i++)
			{
				int charSize = GetByteLength(charArray[i]);
				byteSize += charSize;
				charSizeList.Add(new CharSize(i, charSize, byteSize));
			}
			// 计算起始索引及字节位置
			for (int i = 0; i < length; i++)
			{
				if (beginByte <= charSizeList[i].charCount)
				{
					returnCutData.beginIndex = charSizeList[i].charIndex;
					returnCutData.beginByte = charSizeList[i].charCount - charSizeList[i].charSize;
					break;
				}
			}
			// 计算结束索引及字节位置
			int endByte = returnCutData.beginByte + byteLength;
			int withEllipsisByteSize = needEllipsis ? endByte - GetByteLength(ellipsis) : endByte; // 如果需要在截取字符串末尾附加省略符号，则将结束字节位置减去省略符号的字节长度
			for (int i = charSizeList.Count - 1; i >= 0; i--)
			{
				if (endByte >= charSizeList[i].charCount)
				{
					endByte = charSizeList[i].charCount;
					if (i < charSizeList.Count - 1) // 判断截取字符串未到结尾
					{
						while (endByte > withEllipsisByteSize) // 判断截取字符串超过附加省略字符时的最大长度
						{
							endByte -= charSizeList[i].charSize; // 递减结束字节位置，直到截取字符串长度在附加省略字符时的最大长度范围内
							i--;
						}
					}
					else
					{
						needEllipsis = false;
					}
					returnCutData.endIndex = charSizeList[i].charIndex;
					returnCutData.endByte = charSizeList[i].charCount;
					break;
				}
			}
			if (beginByte > byteSize)
			{
				returnCutData.beginByte = byteSize + 1;
				returnCutData.beginIndex = length;
				returnCutData.value = "";
			}
			if (endByte > byteSize)
			{
				returnCutData.endByte = byteSize;
				returnCutData.endIndex = length - 1;
			}
			returnCutData.byteLength = returnCutData.endByte - returnCutData.beginByte;
			// 判断起始位置是否在字符串中
			if (returnCutData.beginIndex < length && returnCutData.beginIndex <= returnCutData.endIndex)
			{
				returnCutData.value = srcString.Substring(returnCutData.beginIndex, returnCutData.endIndex - returnCutData.beginIndex + 1);
			}
			bool hasOtherChar = returnCutData.beginIndex <= returnCutData.endIndex && returnCutData.endIndex < length - 1; // 截取后的字符串未到源字符串的结尾，截取字符串后还有其它字符串。
			if (hasOtherChar)
			{
				// 判断特殊字符，如果存在特殊字符，且起始~结束的字符串中包含此字符，则截取到该字符（以该字符为结尾）
				if (!string.IsNullOrEmpty(specialChar))
				{
					int index = -1;
					if ((index = returnCutData.value.LastIndexOf(specialChar)) > 0)
					{
						returnCutData.value = returnCutData.value.Substring(0, index + specialChar.Length);
						index += returnCutData.beginIndex + specialChar.Length - 1;
						returnCutData.endIndex = charSizeList[index].charIndex;
						returnCutData.endByte = charSizeList[index].charCount;
					}
				}
				// 判断是否需要将省略字符附加到截取字符串的末尾，如果传入了省略符号，且未截取到结尾的字符串末尾附加该省略符号
				if (needEllipsis)
				{
					returnCutData.value += ellipsis; // 省略符号的长度
				}
			}
			return returnCutData;
		}
		#endregion
		
		#region 类型转换方法祖...

		/// <summary>
		/// 转换到Int32类型。
		/// </summary>
		/// <param name="value">要转换的字符串 <seealso cref="System.String"/>。</param>
		/// <returns>整型值 <seealso cref="System.Int32"/>。</returns>
		public static int ConvertToInt32(string value)
		{
			int result = 0;
			if (string.IsNullOrEmpty(value))
			{
				return 0;
			}
			if (int.TryParse(value, out result))
			{
				return result;
			}
			else
			{
				return result;
			}
		}

		/// <summary>
		/// 转换到Int32类型。
		/// </summary>
		/// <param name="value">要转换的对象 <seealso cref="System.Object"/>。</param>
		/// <returns>整型值 <seealso cref="System.Int32"/>。</returns>
		public static int ConvertToInt32(object value)
		{
			return ConvertToInt32(value.ToString());
		}

		/// <summary>
		/// 转换到Decimal类型。
		/// </summary>
		/// <param name="value">要转换的字符串 <seealso cref="System.String"/>。</param>
		/// <returns>Decimal值 <seealso cref="System.Decimal"/>。</returns>
		public static decimal ConvertToDecimal(string value)
		{
			decimal result = 0;
			if (string.IsNullOrEmpty(value))
			{
				return 0;
			}
			if (decimal.TryParse(value, out result))
			{
				return result;
			}
			else
			{
				return result;
			}
		}

		/// <summary>
		/// 转换到Decimal类型。
		/// </summary>
		/// <param name="value">要转换的对象 <seealso cref="System.Object"/>。</param>
		/// <returns>Decimal值 <seealso cref="System.Decimal"/>。</returns>
		public static decimal ConvertToDecimal(object value)
		{
			return ConvertToDecimal(value.ToString());
		}
		
		/// <summary>
		/// 转换到Guid类型。
		/// </summary>
		/// <param name="value">要转换的字符串 <seealso cref="System.String"/>。</param>
		/// <returns>Guid值 <seealso cref="System.Guid"/>。</returns>
		public static Guid ConvertToGuid(string value)
		{
			if (string.IsNullOrEmpty(value))
			{
				return Guid.Empty;
			}
			if (Regex.Match(value, "^[0-9A-Fa-f]{8}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{12}$", RegexOptions.IgnoreCase).Success)
			{
				return new Guid(value);
			}
			else
			{
				return Guid.Empty;
			}
		}

		/// <summary>
		/// 获取Guid类型新值。
		/// </summary>
		/// <returns>Guid值 <seealso cref="System.Guid"/>。</returns>
		public static Guid ConvertToGuid()
		{
			return Guid.NewGuid();
		}
		#endregion
		
		#region 关键字处理...
		
		/// <summary>
		/// 替换关键字。
		/// </summary>
		/// <param name="value">值 <seealso cref="System.String"/>。</param>
		/// <returns>替换后的字符串 <seealso cref="System.String"/>。</returns>
		public static string ReplaceKeyword(string value)
		{
			return value.Replace("#", "##").Replace("'", "#\"").Replace("%", "#%");
		}

		/// <summary>
		/// 恢复替换关键字。
		/// </summary>
		/// <param name="value">值 <seealso cref="System.String"/>。</param>
		/// <returns>恢复后的字符串 <seealso cref="System.String"/>。</returns>
		public static string UnReplaceKeyword(string value)
		{
			return value.Replace("#\"", "'").Replace("#%", "%").Replace("##", "#");
		}
		#endregion
	}
}
