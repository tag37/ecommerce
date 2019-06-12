using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bakriwale_Inventory.App_Code.Common
{
	public class CommonFunctions
	{
		public static string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
		public CommonFunctions()
		{
			//
			// TODO: Add constructor logic here
			//
		}

		public static int ParseInteger(string intValue)
		{
			int intVar = 0;
			int result = 0;

			if (!string.IsNullOrEmpty(intValue))
			{
				if (int.TryParse(intValue, out intVar))
				{
					result = Convert.ToInt32(intValue);
				}
			}

			return result;
		}
	}
}