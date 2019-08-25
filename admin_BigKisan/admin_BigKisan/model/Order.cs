using System;
using System.Data;
using System.Data.SqlClient;
using admin_BigKisan.util;

namespace admin_BigKisan.model
{
    public class Order
    {
        public static DataTable GetOrders(int orderType, string fromDate, string toDate, int supplierId)
        {
            object[] sqlParameters = {
                new SqlParameter("@OrderType", orderType),
                new SqlParameter("@FromDate", fromDate),
                new SqlParameter("@ToDate", toDate),
                new SqlParameter("@SupplierId", supplierId)
            };

            var result = SqlHelper.ExecuteDataset(Util.ConnectionString, "spGetOrderList", sqlParameters);
            return result.Tables[0];
        }

        public static void DeleteOrder(int orderId)
        {
            object[] sqlParameters =
            {
                    new SqlParameter("@OrderId", orderId)
                };

            SqlHelper.ExecuteNonQuery(Util.ConnectionString, "spDeleteOrder", sqlParameters);
        }

        public static DataSet GetOrder(int orderId)
        {
            object[] sqlParameters =
            {
                new SqlParameter("@OrderId", orderId)
            };

            return SqlHelper.ExecuteDataset(Util.ConnectionString, "spOrderDetailsGet", sqlParameters);
        }
    }
}