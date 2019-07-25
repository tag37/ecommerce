using admin_BigKisan.util;
using System;
using System.Data.SqlClient;

namespace admin_BigKisan.model
{
    public class Customer
    {
        public int CustomerId;
        public string CustomerName;
        public string ContactNo;
        public string EmailId;
        public string LoginId;
        public string Password;

        public int AddCustomer()
        {
            object[] sqlParameters = {
                new SqlParameter("@CustomerId", CustomerId),
                new SqlParameter("@CustomerName", CustomerName),
                new SqlParameter("@ContactNo", ContactNo),
                new SqlParameter("@EmailId", EmailId),
                new SqlParameter("@LoginId", null)
            };

            var result = SqlHelper.ExecuteScalar(Util.ConnectionString, "spCustomerInsertUpdate", sqlParameters);
            if (result == null || result.TryGetInt() == 0)
            {
                throw new Exception("Server error occured while adding product");
            }
            return CustomerId = result.TryGetInt();
        }
    }
}