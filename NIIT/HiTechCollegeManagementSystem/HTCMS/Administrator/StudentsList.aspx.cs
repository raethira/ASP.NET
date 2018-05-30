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
    public partial class StudentsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
            SqlConnection connection = new SqlConnection();
            string connString = ConfigurationManager.ConnectionStrings["HTCMSConnectionString"].ConnectionString;
            connection.ConnectionString = connString;
            string query = "INSERT INTO [Student Details] ([Roll No],[First Name],[Last Name],[Date of Birth],[Gender],[Admission No],[Nationality],[Native Country],[Native District],[Religion],[Mother Tongue],[Maritial Status],[Hostellite],[Day Scholar],[Email],[Mobile No],[Residential Address],[Residential Phone No],[Father Name],[Father Mobile No],[Father Work Address],[Mother Name],[Mother Mobile No],[Mother Work Address],[Username],[Teacher]) VALUES('" + TextBox7.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','"+ TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "','" + TextBox26.Text + "','" + TextBox21.Text + "','" + TextBox23.Text + "','" + TextBox27.Text + "','" + TextBox25.Text + "','" + TextBox29.Text + "','" + TextBox28.Text +"')";
            SqlCommand cmd = new SqlCommand(query, connection);
            connection.Open();
            cmd.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("~/Administrator/StudentsList.aspx");
        }
    }
}
