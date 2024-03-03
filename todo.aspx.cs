using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio
{
    public partial class todo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addSkillButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/addSkills.aspx");
        }

        protected void showButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/listSkills.aspx");
        }
    }
}