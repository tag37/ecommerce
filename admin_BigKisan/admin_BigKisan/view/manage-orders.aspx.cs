using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace admin_BigKisan.view
{
	public partial class manage_orders : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			dgvDetails.DataSource = new DataTable();
			dgvDetails.DataBind();

			GetTitleH1();
		}

		private void GetTitleH1()
		{
			string str = Request.QueryString["type"];
			string res = "Manage Orders (All)";
			switch (str)
			{
				case "1":
					res = "Manage Orders (New Orders)";
					break;

				case "2":
					res = "Manage Orders (Dispatched)";
					break;

				case "3":
					res = "Manage Orders (Delivered)";
					break;

				case "4":
					res = "Manage Orders (Cancelled)";
					break;
			}

			h1Title.InnerHtml = res;
		}
	}
}