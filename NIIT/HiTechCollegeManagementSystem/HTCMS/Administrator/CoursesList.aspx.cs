using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace HTCMS.Admin
{
    public partial class CoursesList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            string connString = ConfigurationManager.ConnectionStrings["HTCMSConnectionString"].ConnectionString;
            connection.ConnectionString = connString;
            string query = "INSERT INTO [Courses Available] VALUES('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"')";
            SqlCommand cmd = new SqlCommand(query, connection);
            connection.Open();
            cmd.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("~/Administrator/CoursesList.aspx");
        }
       
    }
}
