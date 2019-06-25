using admin_BigKisan.util;
using System;
using System.Data.SqlClient;

namespace admin_BigKisan.model
{
    public class Product
    {
        public int ProductId;
        public string ProductSku;
        public string ProductName;
        public int CategoryId;
        public bool IsHot;
        public bool IsNew;
        public bool IsTrending;
        public string MainImage;
        public int SellerId;
        public decimal Price;
        public decimal Mrp;

        public int ProductInsertUpdated()
        {
            object[] sqlParameters = {
                new SqlParameter("@ProductId", ProductId),
                new SqlParameter("@ProductSKU", ProductSku),
                new SqlParameter("@Productname", ProductName),
                new SqlParameter("@CategoryId", CategoryId),
                new SqlParameter("@IsHot", IsHot),
                new SqlParameter("@IsNew", IsNew),
                new SqlParameter("@IsTrending", IsTrending),
                new SqlParameter("@MainImage", MainImage)
            };

            var result = SqlHelper.ExecuteScalar(Util.ConnectionString, "spProductInsertUpdate", sqlParameters);

            if (result == null || result.TryGetInt() == 0)
            {
                throw new Exception("Server error occured while adding product");
            }
            return ProductId = result.TryGetInt();
        }

        public int SellerProductInsertUpdate()
        {
            object[] sqlParameters = {
                new SqlParameter("@ProductId", ProductId),
                new SqlParameter("@SellerId", SellerId),
                new SqlParameter("@Price", Price),
                new SqlParameter("@MRP", Mrp)
            };

            var result = SqlHelper.ExecuteScalar(Util.ConnectionString, "spSellerProductInsertUpdate", sqlParameters);

            if (result == null || result.TryGetInt() == 0)
            {
                throw new Exception("Server error occured while adding product");
            }
            return result.TryGetInt();
        }
    }
}