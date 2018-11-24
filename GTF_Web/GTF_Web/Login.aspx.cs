using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace GTF_Web
{
	public partial class Login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\FelixDracul\Documents\GitHub\Web-Ply-Y2\GTF_Web\GTF_Web\App_Data\UserData.mdf;Integrated Security=True;Connect Timeout=30");
			sqlCon.Open();
			string query = "SELECT COUNT(*) FROM UserDetails WHERE username='" + TextBoxUser.Text + "' AND password='" + TextBoxPass.Text + "'";
			SqlCommand cmd = new SqlCommand(query, sqlCon);
			int count = Convert.ToInt32(cmd.ExecuteScalar());
			if (count == 1)
			{
				Response.Redirect("Dashboard.aspx");
			}
			else
				Response.Write("User doesn't exist!");
			sqlCon.Close();
		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			Response.Redirect("Signup.aspx");
		}
	}
}