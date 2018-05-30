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

namespace HTCMS.Student
{
    public partial class StudentProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = (string) Session["UserName"];
            SqlConnection connection = new SqlConnection();
            string connString = ConfigurationManager.ConnectionStrings["HTCMSConnectionString"].ConnectionString;
            connection.ConnectionString = connString;
            string query = "SELECT * FROM [Student Details] WHERE Username= '"+ name +"'";
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
                DataTable details = ds.Tables[0];
                DataRow det = details.Rows[0];
                TextBox2.Text = det.Field<string>("First Name");
                TextBox3.Text = det.Field<string>("Last Name");
                TextBox4.Text = det.Field<string>("Date of Birth");
                TextBox5.Text = det.Field<string>("Gender");
                TextBox6.Text = det.Field<string>("Admission No");
                TextBox7.Text = det.Field<string>("Roll No");
                TextBox8.Text = det.Field<string>("Nationality");
                TextBox9.Text = det.Field<string>("Native Country");
                TextBox10.Text = det.Field<string>("Native District");
                TextBox11.Text = det.Field<string>("Religion");
                TextBox12.Text = det.Field<string>("Mother Tongue");
                TextBox13.Text = det.Field<string>("Maritial Status");
                TextBox14.Text = det.Field<string>("Hostellite");
                TextBox15.Text = det.Field<string>("Day Scholar");
                TextBox16.Text = det.Field<string>("Email");
                TextBox17.Text = det.Field<string>("Mobile No");
                TextBox18.Text = det.Field<string>("Residential Address");
                TextBox20.Text = det.Field<string>("Father Name");
                TextBox26.Text = det.Field<string>("Father Mobile No");
                TextBox23.Text = det.Field<string>("Mother Name");
                TextBox27.Text = det.Field<string>("Mother Mobile No");
                TextBox19.Text = det.Field<string>("Residential Phone No");
                TextBox21.Text = det.Field<string>("Father Work Address");
                TextBox25.Text = det.Field<string>("Mother Work Address");

            }
                
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Panel1.Visible == true)
                Panel1.Visible = false;
            else
                Panel1.Visible = true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Panel2.Visible == true)
                Panel2.Visible = false;
            else
                Panel2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Panel3.Visible == true)
                Panel3.Visible = false;
            else
                Panel3.Visible = true;
        }

    }
}
