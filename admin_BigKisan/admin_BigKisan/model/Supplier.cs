using System.Collections.Generic;
using admin_BigKisan.util;
using System.Data;
using System.Data.SqlClient;

namespace admin_BigKisan.model
{
    public class Supplier
    {
        public int SellerId;
        public string SellerName;

        public List<Supplier> SearchSellerByNames(string sellerName)
        {
            var listSeller = new List<Supplier>();
            object[] sqlParameters =
            {
                new SqlParameter("@SellerName", sellerName)
            };
            var dataSet = SqlHelper.ExecuteDataset(Util.ConnectionString, "spGetSupplier", sqlParameters);
            foreach (DataRow dataRow in dataSet.Tables[0].Rows)
            {
                listSeller.Add(new Supplier
                {
                    SellerId = dataRow["SellerId"].TryGetInt(),
                    SellerName = dataRow["SellerName"].ToString()
                });
            }
            return listSeller;
        }
    }
}