using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using MySql.Data.MySqlClient;

namespace FishBll.Dao
{
    public class ProductDaoEx : ProductDao
    {
        public bool UpdateState(int productId, int state , int quantity , decimal weight)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update t_product set state=@state , quantity = quantity + @quantity , weight = weight + @weight where id=@id and isdelete=0");
            MySqlParameter[] parameters ={
                    new MySqlParameter("@state",MySqlDbType.VarChar ,45),
                    new MySqlParameter("@quantity",MySqlDbType.Int32,8) ,
                    new MySqlParameter("@weight",MySqlDbType.Decimal,8),
                    new MySqlParameter("@id",MySqlDbType.UInt32,8)
                                        };
            parameters[0].Value = state;
            parameters[1].Value = quantity;
            parameters[2].Value = weight;
            parameters[3].Value = productId;

            int rows = MySqlHelper.ExecuteSql(strSql.ToString(), parameters);
            return rows > 0 ? true : false;
        }

        public bool UpdateHomemade(int productId, decimal weight, decimal cost ,int number)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update t_product set homemadeweight= homemadeweight+@weight, homemadecost = homemadecost+ @cost ,homemadepackages=homemadepackages+ @number where id=@id and isdelete=0");
            MySqlParameter[] parameters ={
                    new MySqlParameter("@weight",MySqlDbType.Decimal , 8),
                    new MySqlParameter("@cost",MySqlDbType.Decimal , 8),
                    new MySqlParameter("@number",MySqlDbType.Int32,8) ,
                    new MySqlParameter("@id",MySqlDbType.Int32,8)
                                        };
            parameters[0].Value = weight;
            parameters[1].Value = cost;
            parameters[2].Value = number;
            parameters[3].Value = productId;

            int rows = MySqlHelper.ExecuteSql(strSql.ToString(), parameters);
            return rows > 0 ? true : false;
        }

        public bool UpdateRemainWeightQuantity(int productId, decimal weight, int quantity)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update t_product set remainweight= remainweight+@remainweight, remainquantity = remainquantity+ @remainquantity  where id=@id and isdelete=0");
            MySqlParameter[] parameters ={
                    new MySqlParameter("@remainweight",MySqlDbType.Decimal , 8),
                    new MySqlParameter("@remainquantity",MySqlDbType.Int32 , 8),             
                    new MySqlParameter("@id",MySqlDbType.Int32,8)
                                        };
            parameters[0].Value = weight;
            parameters[1].Value = quantity;
            parameters[2].Value = productId;

            int rows = MySqlHelper.ExecuteSql(strSql.ToString(), parameters);
            return rows > 0 ? true : false;
        }


        public bool UpdateHomemadeWeightQuantity(int productId, decimal weight, int quantity)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update t_product set homemadeweight= homemadeweight+@homemadeweight, homemadepackages = homemadepackages+ @homemadepackages  where id=@id and isdelete=0");
            MySqlParameter[] parameters ={
                    new MySqlParameter("@homemadeweight",MySqlDbType.Decimal , 8),
                    new MySqlParameter("@homemadepackages",MySqlDbType.Int32 , 8),             
                    new MySqlParameter("@id",MySqlDbType.Int32,8)
                                        };
            parameters[0].Value = weight;
            parameters[1].Value = quantity;
            parameters[2].Value = productId;

            int rows = MySqlHelper.ExecuteSql(strSql.ToString(), parameters);
            return rows > 0 ? true : false;
        }

        public bool UpdateHomemadeWeightQuantityCost(int productId, decimal weight, int quantity, decimal cost)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update t_product set homemadeweight= homemadeweight+@homemadeweight, ");
            strSql.Append(" homemadepackages = homemadepackages+ @homemadepackages ,");
            strSql.Append(" homemadecost= homemadecost+ @homemadecost where id=@id and isdelete=0");
            MySqlParameter[] parameters ={
                    new MySqlParameter("@homemadeweight",MySqlDbType.Decimal , 8),
                    new MySqlParameter("@homemadepackages",MySqlDbType.Int32 , 8),      
                    new MySqlParameter("@homemadecost",MySqlDbType.Decimal,8),
                    new MySqlParameter("@id",MySqlDbType.Int32,8)
                                        };
            parameters[0].Value = weight;
            parameters[1].Value = quantity;
            parameters[2].Value = cost;
            parameters[3].Value = productId;

            int rows = MySqlHelper.ExecuteSql(strSql.ToString(), parameters);
            return rows > 0 ? true : false;
        }

        	/// <summary>
		/// 获得数据列表
		/// </summary>
        public DataSet GetListVo(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append(" select * from v_product");
            if (string.IsNullOrEmpty(strWhere) == false)
            {
                strSql.Append(" where " + strWhere);
            }
            return MySqlHelper.Query(strSql.ToString());
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public List<FishEntity.ProductVo> DataTableToList(DataTable dt)
        {
            List<FishEntity.ProductVo> modelList = new List<FishEntity.ProductVo>();
            int rowsCount = dt.Rows.Count;
            if (rowsCount > 0)
            {
                FishEntity.ProductVo model;
                for (int n = 0; n < rowsCount; n++)
                {
                    model = DataRowToModel(dt.Rows[n]) as FishEntity.ProductVo;
                    if (model != null)
                    {
                        DataRowToVo(model, dt.Rows[n] );
                        modelList.Add(model);
                    }
                }
            }
            return modelList;
        }

        protected void DataRowToVo(FishEntity.ProductVo model, DataRow row)
        {
            if (row != null)
            {              
                if (row["quotedate"] != null)
                {
                    model.quotedate = row["quotedate"].ToString();
                }
                if (row["quoteweight"] != null && row["quoteweight"].ToString() != "")
                {
                    model.quoteweight = decimal.Parse(row["quoteweight"].ToString());
                }
                if (row["quotequantity"] != null && row["quotequantity"].ToString() != "")
                {
                    model.quotequantity = int.Parse(row["quotequantity"].ToString());
                }
                if (row["quotedollars"] != null && row["quotedollars"].ToString() != "")
                {
                    model.quotedollars = decimal.Parse(row["quotedollars"].ToString());
                }
                if (row["quotermb"] != null && row["quotermb"].ToString() != "")
                {
                    model.quotermb = decimal.Parse(row["quotermb"].ToString());
                }
                if (row["quotesuppliercode"] != null)
                {
                    model.quotesuppliercode = row["quotesuppliercode"].ToString();
                }
                if (row["quotesupplier"] != null)
                {
                    model.quotesupplier = row["quotesupplier"].ToString();
                }
                if (row["quotelinkmancode"] != null)
                {
                    model.quotelinkmancode = row["quotelinkmancode"].ToString();
                }
                if (row["quotelinkman"] != null)
                {
                    model.quotelinkman = row["quotelinkman"].ToString();
                }
                if (row["quoteproductyear"] != null)
                {
                    model.quoteproductyear = row["quoteproductyear"].ToString();
                }
                if (row["quoteproductdate"] != null)
                {
                    model.quoteproductdate = row["quoteproductdate"].ToString();
                }
                if (row["quotelife"] != null)
                {
                    model.quotelife = row["quotelife"].ToString();
                }
                if (row["quotesaildatefast"] != null)
                {
                    model.quotesaildatefast = row["quotesaildatefast"].ToString();
                }
                if (row["quotesaildatelate"] != null)
                {
                    model.quotesaildatelate = row["quotesaildatelate"].ToString();
                }
                if (row["confirmdate"] != null)
                {
                    model.confirmdate = row["confirmdate"].ToString();
                }
                if (row["confirmsgsweight"] != null && row["confirmsgsweight"].ToString() != "")
                {
                    model.confirmsgsweight = decimal.Parse(row["confirmsgsweight"].ToString());
                }
                if (row["confirmsgsquantity"] != null && row["confirmsgsquantity"].ToString() != "")
                {
                    model.confirmsgsquantity = int.Parse(row["confirmsgsquantity"].ToString());
                }
                if (row["confirmdollars"] != null && row["confirmdollars"].ToString() != "")
                {
                    model.confirmdollars = decimal.Parse(row["confirmdollars"].ToString());
                }
                if (row["confirmrmb"] != null && row["confirmrmb"].ToString() != "")
                {
                    model.confirmrmb = decimal.Parse(row["confirmrmb"].ToString());
                }
                if (row["confirmagentcode"] != null)
                {
                    model.confirmagentcode = row["confirmagentcode"].ToString();
                }
                if (row["confirmagent"] != null)
                {
                    model.confirmagent = row["confirmagent"].ToString();
                }
                if (row["confirmlinkmancode"] != null)
                {
                    model.confirmlinkmancode = row["confirmlinkmancode"].ToString();
                }
                if (row["confirmlinkman"] != null)
                {
                    model.confirmlinkman = row["confirmlinkman"].ToString();
                }
                if (row["confirmproductyear"] != null)
                {
                    model.confirmproductyear = row["confirmproductyear"].ToString();
                }
                if (row["confirmproductdate"] != null)
                {
                    model.confirmproductdate = row["confirmproductdate"].ToString();
                }
                if (row["confirmlife"] != null)
                {
                    model.confirmlife = row["confirmlife"].ToString();
                }
                if (row["confirmsaildate"] != null)
                {
                    model.confirmsaildate = row["confirmsaildate"].ToString();
                }
                if (row["spotdate"] != null)
                {
                    model.spotdate = row["spotdate"].ToString();
                }
                if (row["spotweight"] != null && row["spotweight"].ToString() != "")
                {
                    model.spotweight = decimal.Parse(row["spotweight"].ToString());
                }
                if (row["spotquantity"] != null && row["spotquantity"].ToString() != "")
                {
                    model.spotquantity = int.Parse(row["spotquantity"].ToString());
                }
                if (row["spotdollars"] != null && row["spotdollars"].ToString() != "")
                {
                    model.spotdollars = decimal.Parse(row["spotdollars"].ToString());
                }
                if (row["spotrmb"] != null && row["spotrmb"].ToString() != "")
                {
                    model.spotrmb = decimal.Parse(row["spotrmb"].ToString());
                }
                if (row["spotagentcode"] != null)
                {
                    model.spotagentcode = row["spotagentcode"].ToString();
                }
                if (row["spotagent"] != null)
                {
                    model.spotagent = row["spotagent"].ToString();
                }
                if (row["spotlinkmancode"] != null)
                {
                    model.spotlinkmancode = row["spotlinkmancode"].ToString();
                }
                if (row["spotlinkman"] != null)
                {
                    model.spotlinkman = row["spotlinkman"].ToString();
                }
                if (row["spotproductdate"] != null)
                {
                    model.spotproductdate = row["spotproductdate"].ToString();
                }
                if (row["spotproductyear"] != null)
                {
                    model.spotproductyear = row["spotproductyear"].ToString();
                }
                if (row["spotlife"] != null)
                {
                    model.spotlife = row["spotlife"].ToString();
                }
                if (row["spotstoragedate"] != null)
                {
                    model.spotstoragedate = row["spotstoragedate"].ToString();
                }
                if (row["saledate"] != null)
                {
                    model.saledate = row["saledate"].ToString();
                }
                if (row["saleremainweight"] != null && row["saleremainweight"].ToString() != "")
                {
                    model.saleremainweight = decimal.Parse(row["saleremainweight"].ToString());
                }
                if (row["saleremainquantity"] != null && row["saleremainquantity"].ToString() != "")
                {
                    model.saleremainquantity = int.Parse(row["saleremainquantity"].ToString());
                }
                if (row["saledollars"] != null && row["saledollars"].ToString() != "")
                {
                    model.saledollars = decimal.Parse(row["saledollars"].ToString());
                }
                if (row["salermb"] != null && row["salermb"].ToString() != "")
                {
                    model.salermb = decimal.Parse(row["salermb"].ToString());
                }
                if (row["saletradercode"] != null)
                {
                    model.saletradercode = row["saletradercode"].ToString();
                }
                if (row["saletrader"] != null)
                {
                    model.saletrader = row["saletrader"].ToString();
                }
                if (row["salelinkmancode"] != null)
                {
                    model.salelinkmancode = row["salelinkmancode"].ToString();
                }
                if (row["salelinkman"] != null)
                {
                    model.salelinkman = row["salelinkman"].ToString();
                }
                if (row["saleoutdate"] != null)
                {
                    model.saleoutdate = row["saleoutdate"].ToString();
                }
                if (row["selfdate"] != null)
                {
                    model.selfdate = row["selfdate"].ToString();
                }
                if (row["selfstorageweight"] != null && row["selfstorageweight"].ToString() != "")
                {
                    model.selfstorageweight = decimal.Parse(row["selfstorageweight"].ToString());
                }
                if (row["selfstoragequantity"] != null && row["selfstoragequantity"].ToString() != "")
                {
                    model.selfstoragequantity = int.Parse(row["selfstoragequantity"].ToString());
                }
                if (row["selfdollars"] != null && row["selfdollars"].ToString() != "")
                {
                    model.selfdollars = decimal.Parse(row["selfdollars"].ToString());
                }
                if (row["selfrmb"] != null && row["selfrmb"].ToString() != "")
                {
                    model.selfrmb = decimal.Parse(row["selfrmb"].ToString());
                }
                if (row["selftradercode"] != null)
                {
                    model.selftradercode = row["selftradercode"].ToString();
                }
                if (row["selftrader"] != null)
                {
                    model.selftrader = row["selftrader"].ToString();
                }
                if (row["selflinkmancode"] != null)
                {
                    model.selflinkmancode = row["selflinkmancode"].ToString();
                }
                if (row["selflinkman"] != null)
                {
                    model.selflinkman = row["selflinkman"].ToString();
                }
                if (row["selffinishproduct"] != null)
                {
                    model.selffinishproduct = row["selffinishproduct"].ToString();
                }
                if (row["selfstoragedate"] != null)
                {
                    model.selfstoragedate = row["selfstoragedate"].ToString();
                }
            }
        }


        public bool UpdateFoodOutInfo(FishEntity.FoodOutDetailEntityVO model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append(" update t_product set ");
            strSql.Append("domestic_protein=@domestic_protein,");
            strSql.Append("domestic_tvn=@domestic_tvn,");
            strSql.Append("domestic_graypart=@domestic_graypart,");
            strSql.Append("domestic_sandsalt=@domestic_sandsalt,");
            strSql.Append("domestic_sour=@domestic_sour,");
            strSql.Append("domestic_lysine=@domestic_lysine,");
            strSql.Append("domestic_methionine=@domestic_methionine,");
            strSql.Append("domestic_amine=@domestic_amine,");
            strSql.Append("domestic_aminototal=@domestic_aminototal,");
            strSql.Append("domestic_fat=@domestic_fat,");

            strSql.Append("shipno=@shipno,");
            strSql.Append("billofgoods=@billofgoods,");
            strSql.Append("remark=@remark");

            strSql.Append(" where id=@id");

            MySqlParameter[] parameters = {
                    new MySqlParameter("@domestic_protein", MySqlDbType.Decimal,6),
					new MySqlParameter("@domestic_tvn", MySqlDbType.Decimal,8),
					new MySqlParameter("@domestic_graypart", MySqlDbType.Decimal,6),
					new MySqlParameter("@domestic_sandsalt", MySqlDbType.Decimal,6),
					new MySqlParameter("@domestic_sour", MySqlDbType.Decimal,6),
					new MySqlParameter("@domestic_lysine", MySqlDbType.Decimal,6),
					new MySqlParameter("@domestic_methionine", MySqlDbType.Decimal,6),
                    new MySqlParameter("@domestic_amine", MySqlDbType.Decimal,6),
					new MySqlParameter("@domestic_aminototal", MySqlDbType.Decimal,6),
					new MySqlParameter("@domestic_fat", MySqlDbType.Decimal,6),                    					
                    new MySqlParameter("@shipno", MySqlDbType.VarChar,45),
                  	new MySqlParameter("@billofgoods", MySqlDbType.VarChar,45),
                 	new MySqlParameter("@remark", MySqlDbType.VarChar,500),
                    new MySqlParameter("@id", MySqlDbType.Int32,11)
                                          };

            parameters[0].Value = model.domestic_protein;
            parameters[1].Value = model.domestic_tvn;
            parameters[2].Value = model.domestic_graypart;
            parameters[3].Value = model.domestic_sandsalt;
            parameters[4].Value = model.domestic_sour;
            parameters[5].Value = model.domestic_lysine;
            parameters[6].Value = model.domestic_methionine;
            parameters[7].Value = model.domestic_amine;
            parameters[8].Value = model.domestic_aminototal;
            parameters[9].Value = model.domestic_fat;

            parameters[10].Value = model.shipno;
            parameters[11].Value = model.billofgoods;
            parameters[12].Value = model.remark;

            parameters[13].Value = model.productid;

            int rows = MySqlHelper.ExecuteSql(strSql.ToString(), parameters);
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool UpdateCheckRecord(FishEntity.CheckRecordEntity model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append(" update t_product set ");
            strSql.Append("domestic_protein=@domestic_protein,");
            strSql.Append("domestic_tvn=@domestic_tvn,");
            strSql.Append("domestic_graypart=@domestic_graypart,");
            strSql.Append("domestic_sandsalt=@domestic_sandsalt,");
            strSql.Append("domestic_sour=@domestic_sour,");
            strSql.Append("domestic_lysine=@domestic_lysine,");
            strSql.Append("domestic_methionine=@domestic_methionine,");
            strSql.Append("domestic_amine=@domestic_amine,");
            strSql.Append("domestic_aminototal=@domestic_aminototal,");
            strSql.Append("domestic_fat=@domestic_fat,");
            strSql.Append("samplingtime=@samplingtime");

            strSql.Append(" where id=@id");

            MySqlParameter[] parameters = {
                    new MySqlParameter("@domestic_protein", MySqlDbType.Decimal,6),
					new MySqlParameter("@domestic_tvn", MySqlDbType.Decimal,8),
					new MySqlParameter("@domestic_graypart", MySqlDbType.Decimal,6),
					new MySqlParameter("@domestic_sandsalt", MySqlDbType.Decimal,6),
					new MySqlParameter("@domestic_sour", MySqlDbType.Decimal,6),
					new MySqlParameter("@domestic_lysine", MySqlDbType.Decimal,6),
					new MySqlParameter("@domestic_methionine", MySqlDbType.Decimal,6),
                    new MySqlParameter("@domestic_amine", MySqlDbType.Decimal,6),
					new MySqlParameter("@domestic_aminototal", MySqlDbType.Decimal,6),
					new MySqlParameter("@domestic_fat", MySqlDbType.Decimal,6),                    					
                    new MySqlParameter("@samplingtime", MySqlDbType.VarChar,45),
                    new MySqlParameter("@id", MySqlDbType.Int32,11)
                                          };
            parameters[0].Value = model.regularindex1;
            parameters[1].Value = model.regularindex2;
            parameters[2].Value = model.regularindex4;
            parameters[3].Value = model.regularindex6;
            parameters[4].Value = model.regularindex5;
            parameters[5].Value = model.aminoindex14;
            parameters[6].Value = model.aminoindex9;
            parameters[7].Value = model.regularindex3;
            parameters[8].Value = model.aminoindex19;
            parameters[9].Value = model.regularindex8;
            parameters[10].Value = model.checkdate;
            parameters[11].Value = model.productid;

            int rows = MySqlHelper.ExecuteSql(strSql.ToString(), parameters);
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
