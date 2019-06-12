namespace admin_BigKisan.util
{
    public static class Util
    {
        public static string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        public static int TryGetInt(this object value, int defaultValue = 0)
        {
            if (value != null && !string.IsNullOrEmpty(value.ToString()))
            {
                if (!int.TryParse(value.ToString(), out var outValue))
                {
                    return defaultValue;
                }
                return outValue;
            }
            return defaultValue;
        }

        public static bool TryGetBool(this object value, bool defaultValue = false)
        {
            if (value != null && !string.IsNullOrEmpty(value.ToString()))
            {
                if (!bool.TryParse(value.ToString(), out var outValue))
                {
                    return defaultValue;
                }
                return outValue;
            }
            return defaultValue;
        }
    }
}