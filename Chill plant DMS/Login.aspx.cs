using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_login_Click(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            Response.Write("<script language='javascript'>window.alert('You Have Logged In');window.location='../Home.aspx';</script>");

        }
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "SELECT count(*) FROM Usertable WHERE Username='" + TextBox_username.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();

            if (temp == 1)
            {
                conn.Open();
                string checkpassword = "SELECT Password FROM Usertable WHERE Username='" + TextBox_username.Text + "'";
                string checkadmin = "SELECT Admin From Usertable WHERE Username='" + TextBox_username.Text + "'";
                SqlCommand passcom = new SqlCommand(checkpassword, conn);
                SqlCommand admincom = new SqlCommand(checkadmin, conn);
                string password = passcom.ExecuteScalar().ToString().Replace(" ", "");
                string admin = admincom.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBox_password.Text)
                {
                    Session["New"] = TextBox_username.Text;
                    Session["status"] = admin;
                    Response.Write("<script language='javascript'>window.alert('You Have Logged In');window.location='Home.aspx';</script>");

                }
                else
                {
                    Response.Write("<script language='javascript'>window.alert('Password is incorrect');window.location='Login.aspx';</script>");

                }
            }
            else
            {
                Response.Write("<script language='javascript'>window.alert('User name is incorrect');window.location='Login.aspx';</script>");

            }
            
        }
    }
    
   
}