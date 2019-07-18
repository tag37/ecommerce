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
            return string.Format(new System.Globalization.CultureInfo("hi-IN"), "{0:c}",
                decimal.Parse(value.ToString(), System.Globalization.CultureInfo.InvariantCulture));
        }
    }
}