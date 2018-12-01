using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace GTF_Web
{
	public partial class Signup : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack)
			{
				SqlConnection chkCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ViewUserCon"].ConnectionString);
				chkCon.Open();
				string userCheck = "SELECT COUNT(*) FROM UserDetails WHERE username='" + TextBoxUser.Text + "'";
				SqlCommand chkCmd = new SqlCommand(userCheck, chkCon);
				int check = Convert.ToInt32(chkCmd.ExecuteScalar());
				if (check == 1)
				{
					Response.Write("Username already exists! Please enter another Username.");
				}
				chkCon.Close();
			}
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			try
			{
				SqlConnection regCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ViewUserCon"].ConnectionString);
				regCon.Open();
				string userInsert = "INSERT INTO UserDetails (email, fname, lname, username, password, city) VALUES (@Email, @Fname, @Lname, @UName, @PW, @City)";
				SqlCommand userCmd = new SqlCommand(userInsert, regCon);

				userCmd.Parameters.AddWithValue("@Email", TextBoxMail.Text);
				userCmd.Parameters.AddWithValue("@FName", TextBoxFName.Text);
				userCmd.Parameters.AddWithValue("@LName", TextBoxLName.Text);
				userCmd.Parameters.AddWithValue("@UName", TextBoxUser.Text);
				userCmd.Parameters.AddWithValue("@PW", TextBoxPass.Text);
				userCmd.Parameters.AddWithValue("@City", TextBoxCity.Text);

				userCmd.ExecuteNonQuery();
				Response.Write("Successfully Registered!");
				Response.Redirect("ViewUsers.aspx");
				regCon.Close();
			}

			catch(Exception ex)
			{
				Response.Write("Error: " + ex.ToString());
			}
		}
	}
	//Created by members of Group 18 of the Plymouth Batch 6 (17.1).
}