using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio
{
    public partial class addSkills : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        // conncetion string ta strcon ar moddhe chole ashce
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            try
            {
                // data base ar sathe connection establish korchi
                SqlConnection conn = new SqlConnection(strcon);
                conn.Open();

                SqlCommand cmd = new SqlCommand("INSERT INTO Skills ([Id],[Field],[Description]) VALUES(@Id, @Field, @Description)", conn);

                cmd.Parameters.AddWithValue("@Id", noTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("@Field", fieldTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("@Description", desTextBox.Text.Trim());

                cmd.ExecuteNonQuery();

                conn.Close();

                Response.Write("<script>alert('Successfully added')</script>");
                Response.Redirect("~/main.aspx");

            } catch (Exception ex) {
               Response.Write(ex.Message);  
            }

        }
    }
}