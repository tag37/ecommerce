using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace admin_BigKisan.view
{
	public partial class BigKisanMaster : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnSignOut_Click(object sender, EventArgs e)
		{
			Response.Redirect("~/default.aspx");
		}
	}
}