using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using admin_BigKisan.util;

namespace admin_BigKisan.model
{
    public class ParentCategory
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description;
        public bool IsActive;

        public static List<ParentCategory> GetAllParentCategories()
        {
            return GetParentCategories(); 
        }

        private static List<ParentCategory> GetParentCategories(SqlParameter[] parameters = null)
        {
            var listParentCategories = new List<ParentCategory>();
            using (var reader = SqlHelper.ExecuteReader(Util.ConnectionString, CommandType.StoredProcedure, "spParentCategoriesGet",
                parameters))
            {
                while (reader.Read())
                {
                    listParentCategories.Add(new ParentCategory
                    {
                        Id = reader["Id"].TryGetInt(),
                        Description = reader["Description"]?.ToString(),
                        IsActive = reader["IsActive"].TryGetBool(),
                        Name = reader["Name"]?.ToString()
                    });
                }
            }

            return listParentCategories;
        }
    }
}