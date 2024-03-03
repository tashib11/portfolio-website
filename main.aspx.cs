using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace portfolio
{
    public partial class main : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        // conncetion string ta strcon ar moddhe chole ashce
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                // data base ar sathe connection establish korchi
                SqlConnection conn = new SqlConnection(strcon);
                conn.Open();

                SqlDataAdapter sda = new SqlDataAdapter("SELECT [Id],[Field],[Description] FROM Skills",conn);   
              
                DataTable dtbls = new DataTable();

                sda.Fill(dtbls);
                CoursesGridView.DataSource = dtbls; 
                CoursesGridView.DataBind();

                conn.Close();


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        protected void adminButton_Click(object sender, EventArgs e)
        {
            if (Session["passSession"] != null)
            {
                // Session.Abandon();
                Response.Redirect("todo.aspx");
            }
            else
            {
                Response.Redirect("admin.aspx");
            }
        }

        protected void txtSubmit_Click(object sender, EventArgs e)
        {
            try {
                sendEmail();
                Response.Redirect("emailsuccess.aspx");
            }
            catch(Exception ex) {
            lblError.Text = ex.Message;  
            }
        }
        private void sendEmail()
        {
            string smtpUserName;
            string smtpPassword;
            MailMessage mail = new MailMessage();
            SmtpClient smtp_Client = new SmtpClient(System.Configuration.ConfigurationSettings.AppSettings["smtpClient"]);

            smtpUserName = System.Configuration.ConfigurationSettings.AppSettings["smtpUserName"];
            smtpPassword = System.Configuration.ConfigurationSettings.AppSettings["smtpPassword"];
            mail.From = new MailAddress(emailTextBox.Text.Trim());
            mail.To.Add(smtpUserName);
            mail.Subject = "Portfolio";
        
            mail.Body = ("Name : " + nameTextBox.Text.Trim() + Environment.NewLine + "Email : "+ emailTextBox.Text.Trim() +Environment.NewLine + "Message :" + messageTextBox.Text.Trim());

            smtp_Client.Port = Convert.ToInt32(System.Configuration.ConfigurationSettings.AppSettings["smtpPort"]);
            smtp_Client.Credentials = new System.Net.NetworkCredential(smtpUserName, smtpPassword);
            smtp_Client.EnableSsl = Convert.ToBoolean(System.Configuration.ConfigurationSettings.AppSettings["enableSSL"]);
            smtp_Client.Send(mail);

         
          
        }

       
    }
}