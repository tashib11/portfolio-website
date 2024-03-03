using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio
{
    public partial class updateSkills : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["Id"].Trim();

                // Check if id is not null and not empty before proceeding


                try
                {
                    SqlConnection conn = new SqlConnection(strcon);
                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Skills WHERE id=" + id + "", conn);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.HasRows)
                    {
                        sdr.Read();
                        noTextBox.Text = sdr.GetValue(0).ToString();
                        fieldTextBox.Text = sdr.GetValue(1).ToString();
                        desTextBox.Text = sdr.GetValue(2).ToString();
                    }

                    conn.Close();
                }
                catch (Exception ex)
                {
                    base.Response.Write(ex.Message);
                }
            }
        }



        protected void updateButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE Skills SET Field=@Field, Description=@Description WHERE Id=@Id", conn);

                // Use the original Id for the WHERE clause, and update other fields
                cmd.Parameters.AddWithValue("@Id", noTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("@Field", fieldTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("@Description", desTextBox.Text.Trim());

                cmd.ExecuteNonQuery();

                conn.Close();
                Response.Redirect("~/main.aspx");
            }
            catch (Exception ex)
            {
                base.Response.Write(ex.Message);
            }
        }

    }
}