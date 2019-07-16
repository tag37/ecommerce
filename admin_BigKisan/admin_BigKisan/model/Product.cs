using admin_BigKisan.util;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

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
        public string Brand;
        public int AvailableStock;
        public string ShortDesc;

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
                new SqlParameter("@MainImage", MainImage),
                new SqlParameter("@BrandName", Brand),
                new SqlParameter("@SellerId", SellerId),
                new SqlParameter("@Price", Price),
                new SqlParameter("@MRP", Mrp),
                new SqlParameter("@AvailableStock", AvailableStock),
                new SqlParameter("@ShortDesc", ShortDesc),
                new SqlParameter("@IsDeleted", false),
                new SqlParameter("@ModifiedBy", 1),
                new SqlParameter("@GroupAttribute", string.Empty)
            };

            var result = SqlHelper.ExecuteScalar(Util.ConnectionString, "spProductInsertUpdate", sqlParameters);

            if (result == null || result.TryGetInt() == 0)
            {
                throw new Exception("Server error occured while adding product");
            }
            return ProductId = result.TryGetInt();
        }

        public void AddProductAttributes(DataTable productAttributes)
        {
            if (productAttributes == null)
            {
                return;
            }

            var dtProductAttribute = new DataTable("dtProductAttribute");
            dtProductAttribute.Columns.Add("Key");
            dtProductAttribute.Columns.Add("Value");

            foreach (DataRow productAttributesRow in productAttributes.Rows)
            {
                var row = dtProductAttribute.NewRow();
                row["Key"] = productAttributesRow["AttributeId"];
                row["Value"] = productAttributesRow["AttributeValue"];
                dtProductAttribute.Rows.Add(row);
            }

            using (var con = new SqlConnection(Util.ConnectionString))
            {
                con.Open();
                using (var cmd = con.CreateCommand())
                {
                    cmd.CommandText = "spInsertUpdateProductAttributes";
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@ProductId", ProductId));
                    cmd.Parameters.Add(new SqlParameter("@ProductAttributes", SqlDbType.Structured) { Value = dtProductAttribute });
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public static Product GetProduct(int productId)
        {
            object[] sqlParameters = {
                new SqlParameter("@ProductId", productId)
            };
            var result = SqlHelper.ExecuteDataset(Util.ConnectionString, "spProductGet", sqlParameters);

            var dtProduct = result.Tables[0];
            var product = new Product
            {
                ProductName = dtProduct.Rows[0]["ProductName"].ToString(),
                CategoryId = dtProduct.Rows[0]["CategoryId"].TryGetInt(),
                SellerId = dtProduct.Rows[0]["SellerID"].TryGetInt(),
                Brand = dtProduct.Rows[0]["BrandName"].ToString(),
                ProductSku = dtProduct.Rows[0]["ProductSKU"].ToString(),
                ShortDesc = dtProduct.Rows[0]["ShortDesciption"].ToString(),
                Price = dtProduct.Rows[0]["Price"].TryGetDecimal(),
                Mrp = dtProduct.Rows[0]["MRP"].TryGetDecimal(),
                AvailableStock = dtProduct.Rows[0]["AvailableStock"].TryGetInt(),
                IsNew = dtProduct.Rows[0]["IsNew"].TryGetBool(),
                IsHot = dtProduct.Rows[0]["IsHot"].TryGetBool(),
                IsTrending = dtProduct.Rows[0]["IsTrending"].TryGetBool()
            };

            return product;
        }

        public static DataTable GetProductAttributes(int productId, int categoryId)
        {
            var tblProductAttributes = new DataTable("tblProductAttributes");
            tblProductAttributes.Columns.Add("AttributeId");
            tblProductAttributes.Columns.Add("AttributeName");
            tblProductAttributes.Columns.Add("AttributeValue");

            object[] sqlParameters = {
                new SqlParameter("@ProductId", productId),
                new SqlParameter("@CategoryId", categoryId)
            };
            var result = SqlHelper.ExecuteDataset(Util.ConnectionString, "spGetProductAttributes", sqlParameters);

            var dtAttribute = result.Tables[0];

            foreach (DataRow dtAttributeRow in dtAttribute.Rows)
            {
                var row = tblProductAttributes.NewRow();
                row["AttributeId"] = dtAttributeRow["AttributeId"];
                row["AttributeName"] = dtAttributeRow["AttributeName"];
                row["AttributeValue"] = dtAttributeRow["Attributevalue"];
                tblProductAttributes.Rows.Add(row);
            }


            return tblProductAttributes;
        }
    }
}