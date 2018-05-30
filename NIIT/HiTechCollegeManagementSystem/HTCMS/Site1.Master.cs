using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace CollegeManagementSite
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string role = (string)Session["Role"];
            if (role == "Student")
                Response.Redirect("~/StudentHome.aspx");
            else if (role == "Teacher")
                Response.Redirect("~/TeacherHome.aspx");
            else if (role == "Administrator")
                Response.Redirect("~/AdministratorHome.aspx");
            else
                Response.Redirect("~/LoginPage.aspx");
        }
    }
}
