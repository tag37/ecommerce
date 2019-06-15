
using admin_BigKisan.util;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace admin_BigKisan.model
{
    public class Category
    {
        public int CategoryId;
        public string CategoryName;
        public string CategoryDesc;
        public string CategoryImage;
        public bool IsActive;
        public ParentCategory ParentCategory;

        public int InsertUpdateCategory()
        {
            object[] sqlParameters = {
                new SqlParameter("@CategoryId", CategoryId),
                new SqlParameter("@CategoryName", CategoryName),
                new SqlParameter("@CategoryDesc", CategoryDesc),
                new SqlParameter("@CategoryImage", CategoryImage),
                new SqlParameter("@ParentId", ParentCategory.Id),
                new SqlParameter("@IsActive", IsActive)
            };

            var result = SqlHelper.ExecuteScalar(Util.ConnectionString, "spCategoryInsertUpdate", sqlParameters);

            if (result == null || result.TryGetInt() == 0)
            {
                throw new Exception("Server error occured while creating category");
            }

            return result.TryGetInt();
        }

        public static DataSet GetAllCategories()
        {
            return GetCategories();
        }

        public static DataSet GetCategoryById(int categoryId)
        {
            var parameter = new SqlParameter("@CategoryId", categoryId);
            return GetCategories(parameter);
        }

        private static DataSet GetCategories(SqlParameter parameter = null)
        {
            return SqlHelper.ExecuteDataset(Util.ConnectionString, CommandType.StoredProcedure, "dbo.spCategoriesGet",
                parameter);

        }

        public static void DeleteCategory(int categoryId)
        {
            var parameter = new SqlParameter("@CategoryId", categoryId);
            SqlHelper.ExecuteNonQuery(Util.ConnectionString, CommandType.StoredProcedure, "dbo.spCategoryDelete", parameter);
        }
    }
}