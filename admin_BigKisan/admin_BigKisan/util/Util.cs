﻿using System;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

namespace admin_BigKisan.util
{
    public static class Util
    {
        public static string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        public static int TryGetInt(this object value, int defaultValue = 0)
        {
            if (value != null && !string.IsNullOrEmpty(value.ToString()))
            {
                return !int.TryParse(value.ToString(), out var outValue) ? defaultValue : outValue;
            }
            return defaultValue;
        }

        public static decimal TryGetDecimal(this object value, int defaultValue = 0)
        {
            if (value != null && !string.IsNullOrEmpty(value.ToString()))
            {
                return !decimal.TryParse(value.ToString(), out var outValue) ? defaultValue : outValue;
            }
            return defaultValue;
        }

        public static bool TryGetBool(this object value, bool defaultValue = false)
        {
            if (value != null && !string.IsNullOrEmpty(value.ToString()))
            {
                return !bool.TryParse(value.ToString(), out var outValue) ? defaultValue : outValue;
            }
            return defaultValue;
        }

        public static string GetMoney(object value)
        {
            var money = value.TryGetDecimal();
            return string.Format(new CultureInfo("hi-IN"), "{0:c}",
                decimal.Parse(money.ToString(CultureInfo.InvariantCulture), CultureInfo.InvariantCulture));
        }

        public static bool IsDateString(this object value)
        {
            if (value != null && !string.IsNullOrEmpty(value.ToString()))
            {
                return DateTime.TryParse(value.ToString(), out _);
            }
            return false;
        }

        public static string ToShortDateString(this object value, string defaultValue = "")
        {
            if (value != null && !string.IsNullOrEmpty(value.ToString()))
            {
                if (DateTime.TryParse(value.ToString(), out var outValue))
                {
                    return outValue.ToShortDateString();
                }
                return defaultValue;
            }
            return defaultValue;
        }

        public static string GetString(this object value)
        {
            if (value == null)
            {
                return String.Empty;
            }
            return value.ToString();
        }

        public static DataSet GetStateList()
        {
            return SqlHelper.ExecuteDataset(ConnectionString, CommandType.StoredProcedure, "spGetAllState");
        }

        public static DataSet GetCityList(string stateCode)
        {
            SqlParameter[] sqlParameters =
            {
                new SqlParameter("@StateCode", stateCode)
            };
            return SqlHelper.ExecuteDataset(ConnectionString, CommandType.StoredProcedure, "spGetAllCity", sqlParameters);
        }

        public static DataSet GetVillageList(string stateCode, string cityName)
        {
            SqlParameter[] sqlParameters =
            {
                new SqlParameter("@CityName", cityName),
                new SqlParameter("@StateCode", stateCode)
            };
            return SqlHelper.ExecuteDataset(ConnectionString, CommandType.StoredProcedure, "spGetAllVillages", sqlParameters);
        }
    }
}