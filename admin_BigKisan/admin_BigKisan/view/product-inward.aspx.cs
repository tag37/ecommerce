using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace admin_BigKisan.view
{
	public partial class product_inward : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			dgvDetails.DataSource = new DataTable();
			dgvDetails.DataBind();
		}
	}
}