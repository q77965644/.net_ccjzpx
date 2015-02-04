using System;
using System.Collections.Generic;
using System.Text;

namespace cczjpx
{
	public class DTEnums
	{
		/// <summary>
		/// 用户类型枚举
		/// </summary>
		public enum ActionEnum
		{
			/// <summary>
			/// 学生
			/// </summary>
			Student,
			/// <summary>
			/// 教师
			/// </summary>
			Teacher,
			/// <summary>
			/// 院系
			/// </summary>
			Department,
			/// <summary>
			/// 教务处
			/// </summary>
			Administration,
			/// <summary>
			/// 企业
			/// </summary>
			Enterprise

		}

		/// <summary>
		/// 统一管理操作枚举
		/// </summary>
		public enum OperationEnum
		{
			/// <summary>
			/// 所有
			/// </summary>
			All,
			/// <summary>
			/// 查看
			/// </summary>
			View,
			/// <summary>
			/// 添加
			/// </summary>
			Add,
			/// <summary>
			/// 修改
			/// </summary>
			Edit,
			/// <summary>
			/// 删除
			/// </summary>
			Delete,
			/// <summary>
			/// 审核
			/// </summary>
			Audit,
			/// <summary>
			/// 回复
			/// </summary>
			Reply,
			/// <summary>
			/// 取消
			/// </summary>
			Cancel,
			/// <summary>
			/// 作废
			/// </summary>
			Invalid
		}
	}
}
