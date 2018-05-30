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

namespace HTCMS
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = (string)Session["UserName"];
            SqlConnection connection = new SqlConnection();
            string connString = ConfigurationManager.ConnectionStrings["HTCMSConnectionString"].ConnectionString;
            connection.ConnectionString = connString;
            string query = "SELECT Password FROM Login WHERE Username='"+name+"'";
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
                DataRow row = ds.Tables[0].Rows[0];
                string pass = row.Field<string>("Password");
                string old = TextBox1.Text;
                string newp = TextBox2.Text;
                if (old == pass)
                {
                    query = "UPDATE Login SET Password='" + newp + "' WHERE Username='"+name+"'";
                    SqlCommand cmd = cmd = new SqlCommand(query, connection);
                    cmd.ExecuteNonQuery();
                    connection.Close();
                    MessageBox.Show("Password Changed Successfully");
                    Response.Redirect("LoginPage.aspx");
                }
                else
                {
                    connection.Close();
                    MessageBox.Show("Old Password is wrong, please log in again and try");
                    Response.Redirect("LoginPage.aspx");
                }
            }
        }
    }
}
