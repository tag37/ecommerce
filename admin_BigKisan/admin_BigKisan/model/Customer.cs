using admin_BigKisan.util;
using System;
using System.Data;
using System.Data.SqlClient;

namespace admin_BigKisan.model
{
    public class Customer
    {
        public int CustomerId;
        public string CustomerName;
        public string ContactNo;
        public string EmailId;

        public int AddCustomer(DataTable address)
        {
            object[] sqlParameters =
            {
                new SqlParameter("@CustomerId", CustomerId),
                new SqlParameter("@CustomerName", CustomerName),
                new SqlParameter("@ContactNo", ContactNo),
                new SqlParameter("@EmailId", EmailId),
                new SqlParameter("@LoginId", null)
            };

            using (var sqlConnection = new SqlConnection(Util.ConnectionString))
            {
                sqlConnection.Open();
                using (var transaction = sqlConnection.BeginTransaction())
                {
                    var result = SqlHelper.ExecuteScalar(transaction, "spCustomerInsertUpdate", sqlParameters);
                    if (result == null || result.TryGetInt() == 0)
                    {
                        throw new Exception("Server error occured while adding product");
                    }

                    CustomerId = result.TryGetInt();

                    if (address != null && address.Rows.Count > 0)
                    {
                        foreach (DataRow addressRow in address.Rows)
                        {
                            object[] sqlAddressParameters =
                            {
                                new SqlParameter("@CustomerId", CustomerId),
                                new SqlParameter("@AddressId", addressRow["addressId"].TryGetInt()),
                                new SqlParameter("@AddressLine1", addressRow["addressLine1"].ToString()),
                                new SqlParameter("@AddressLine2", addressRow["addressLine2"].ToString()),
                                new SqlParameter("@CityId", addressRow["cityId"].GetString().Split('$')[0].TryGetInt()),
                                new SqlParameter("@StateId", addressRow["stateId"].GetString().Split('$')[0].TryGetInt()),
                                new SqlParameter("@PinCode", addressRow["pinCode"].ToString())
                            };
                            SqlHelper.ExecuteScalar(transaction, "spInsertUpdateAddress", sqlAddressParameters);
                        }
                    }

                    transaction.Commit();
                }
            }

            return CustomerId;
        }

        public static DataSet GetCustomerDetails(int customerId)
        {
            object[] sqlParameters =
            {
                new SqlParameter("@CustomerId", customerId)
            };

            return SqlHelper.ExecuteDataset(Util.ConnectionString, "spGetCustomerDetails", sqlParameters);
        }

        public DataSet GetCustomerList()
        {
            return SqlHelper.ExecuteDataset(Util.ConnectionString, "spGetCustomerList");
        }

        public static void DeleteCustomerAddress(int addressId)
        {
            object[] sqlParameters =
            {
                new SqlParameter("@AddressId", addressId)
            };

            SqlHelper.ExecuteNonQuery(Util.ConnectionString, "spDeleteCustomerAddress", sqlParameters);
        }

        public static void DeleteCustomer(int customerId)
        {
            object[] sqlParameters =
            {
                new SqlParameter("@CustomerId", customerId)
            };

            SqlHelper.ExecuteNonQuery(Util.ConnectionString, "spDeleteCustomerDetails", sqlParameters);
        }
    }
}