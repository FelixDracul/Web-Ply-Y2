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
			SqlConnection logCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\UserData.mdf;Integrated Security=True;Connect Timeout=30");
			logCon.Open();
			string query = "SELECT COUNT(*) FROM UserDetails WHERE username='" + TextBoxUser.Text + "' AND password='" + TextBoxPass.Text + "'";
			SqlCommand cmd = new SqlCommand(query, logCon);
			int count = Convert.ToInt32(cmd.ExecuteScalar());
			if (count == 1)
			{
				Response.Write("Welcome!");
				Response.Redirect("ViewUsers.aspx");
			}
			else
				Response.Write("User doesn't exist!");
			logCon.Close();
		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			Response.Redirect("Signup.aspx");
		}
	}
	//Created by members of Group 18 of the Plymouth Batch 6 (17.1).
}