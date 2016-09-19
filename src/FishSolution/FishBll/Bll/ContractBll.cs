﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

namespace FishBll.Bll
{
    public class ContractBll
    {
        private readonly Dao.ContractDaoEx dal=new Dao.ContractDaoEx();
        public ContractBll()
		{}
		#region  BasicMethod
		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int contractid)
		{
			return dal.Exists(contractid);
		}
        public bool Exists(string  no)
        {
            return dal.Exists(no);
        }

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(FishEntity.ContractEntity model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(FishEntity.ContractEntity model)
		{
			return dal.Update(model);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(int contractid)
		{
			
			return dal.Delete(contractid);
		}
		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool DeleteList(string contractidlist )
		{
			return dal.DeleteList(contractidlist );
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public FishEntity.ContractEntity GetModel(int contractid)
		{
			
			return dal.GetModel(contractid);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			return dal.GetList(strWhere);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<FishEntity.ContractEntity> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<FishEntity.ContractEntity> DataTableToList(DataTable dt)
		{
			List<FishEntity.ContractEntity> modelList = new List<FishEntity.ContractEntity>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				FishEntity.ContractEntity model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = dal.DataRowToModel(dt.Rows[n]);
					if (model != null)
					{
						modelList.Add(model);
					}
				}
			}
			return modelList;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetAllList()
		{
			return GetList("");
		}

		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public int GetRecordCount(string strWhere)
		{
			return dal.GetRecordCount(strWhere);
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			return dal.GetListByPage( strWhere,  orderby,  startIndex,  endIndex);
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		//public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		//{
			//return dal.GetList(PageSize,PageIndex,strWhere);
		//}

		#endregion  BasicMethod
		#region  ExtensionMethod

        public List<FishEntity.ContractDetailVo> GetContractDetail(string strwhere)
        {
            return dal.GetContractDetail(strwhere);
        }

        public int UpdateContractStatus(int id, int status)
        {
            return dal.UpdateContractStatus(id, status);
        }


        public DataSet GetSelfSaleDetail(int productid)
        {
            return dal.GetSelfSaleDetail(productid);
        }

		#endregion  ExtensionMethod
    }
}
