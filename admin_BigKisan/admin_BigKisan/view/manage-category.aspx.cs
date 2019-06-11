using System;
using System.Data;

namespace admin_BigKisan.view
{
    public partial class manage_category : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			dgvDetails.DataSource = new DataTable();
			dgvDetails.DataBind();
		}
	}
}