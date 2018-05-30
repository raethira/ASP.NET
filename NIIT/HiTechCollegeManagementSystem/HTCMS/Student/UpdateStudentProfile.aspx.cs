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

namespace HTCMS.Student
{
    public partial class UpdateStudentProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string name = (string)Session["UserName"];
                SqlConnection connection = new SqlConnection();
                string connString = ConfigurationManager.ConnectionStrings["HTCMSConnectionString"].ConnectionString;
                connection.ConnectionString = connString;
                string query = "SELECT * FROM [Student Details] WHERE Username= '" + name + "'";
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            string name = (string)Session["UserName"];
            SqlConnection connection = new SqlConnection();
            string connString = @"Data Source=RAHUL\SQLEXPRESS;Initial Catalog=HTCMS;Integrated Security=True";
            connection.ConnectionString = connString;
            string query = "UPDATE [Student Details] SET [Roll No]='" + TextBox7.Text + "', [First Name]='" + TextBox2.Text + "', [Last Name]='" + TextBox3.Text + "', [Date of Birth]='" + TextBox4.Text + "', [Gender]='" + TextBox5.Text + "', [Admission No]='" + TextBox6.Text + "', [Nationality]='" + TextBox8.Text + "', [Native Country]='" + TextBox9.Text + "', [Native District]='" + TextBox10.Text + "', [Religion]='" + TextBox11.Text + "', [Mother Tongue]='" + TextBox12.Text + "', [Maritial Status]='" + TextBox13.Text + "', [Hostellite]='" + TextBox14.Text + "', [Day Scholar]='" + TextBox15.Text + "', [Email]='" + TextBox16.Text + "', [Mobile No]='" + TextBox17.Text + "', [Residential Address]='" + TextBox18.Text + "', [Father Name]='" + TextBox20.Text + "', [Father Mobile No]='" + TextBox26.Text + "', [Mother Name]='" + TextBox23.Text + "', [Mother Mobile No]='" + TextBox27.Text + "', [Residential Phone No]='" + TextBox19.Text + "', [Father Work Address]='" + TextBox21.Text + "', [Mother Work Address]='" + TextBox25.Text + "' WHERE Username='" + name + "'";
            SqlCommand cmd = new SqlCommand(query, connection);
            connection.Open();
            cmd.ExecuteNonQuery();
            connection.Close();
            MessageBox.Show("Details Updated, Redirecting to Student Profile");
            Response.Redirect("~/Student/StudentProfile.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string name = (string)Session["UserName"];
            SqlConnection connection = new SqlConnection();
            string connString = @"Data Source=RAHUL\SQLEXPRESS;Initial Catalog=HTCMS;Integrated Security=True";
            connection.ConnectionString = connString;
            string query = "SELECT * FROM [Student Details] WHERE Username= '" + name + "'";
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
    }
}
