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
using System.Windows.Forms;

namespace CollegeManagementSite
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            string connString = ConfigurationManager.ConnectionStrings["HTCMSConnectionString"].ConnectionString;
            connection.ConnectionString = connString;
            string query = "SELECT * FROM Login";
            SqlDataAdapter Sqlda = null;
            DataSet ds = null;
            try
            {
                connection.Open();
                Sqlda = new SqlDataAdapter(query, connection);
                ds = new DataSet();
                Sqlda.Fill(ds);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (connection.State == ConnectionState.Open)
                {
                    connection.Close();
                    connection = null;
                    Sqlda = null;
                }
                int flag = 0;
                string a = null;
                string c = null;
                DataTable login = ds.Tables[0];
                var q = from d in login.AsEnumerable()
                        select d;
                foreach (var i in q)
                {
                    a = i.Field<string>("Username");
                    string b = i.Field<string>("Password");
                    c = i.Field<string>("Role");
                    if ((TextBox1.Text == a) && (TextBox2.Text == b))
                    {
                        flag = 1;
                        break;
                    }
                }
                Session["UserName"] = a;
                Session["Role"] = c;
                if (flag == 1)
                {
                    if (c == "Student")
                        Response.Redirect("~/StudentHome.aspx");
                    else if (c == "Teacher")
                        Response.Redirect("~/TeacherHome.aspx");
                    else if (c == "Administrator")
                        Response.Redirect("~/AdministratorHome.aspx");
                }
                else if (flag == 0)
                {
                    MessageBox.Show("You do not have an account registered.\nPlease contact the administrator");
                }
            }
        }
    }
}
