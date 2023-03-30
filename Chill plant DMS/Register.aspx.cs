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
        if ((Session["New"] != null) && (Session["status"].ToString() == "yes"))
        {
            Label_user.Text = "Welcome " + Session["New"].ToString();
        }
        else
        {
            Response.Write("<script language='javascript'>window.alert('You Don't Have Access');window.location='Home.aspx';</script>");
            Response.Redirect("Home.aspx");
        }
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "SELECT count(*) FROM Usertable WHERE Username='" + TextBox_username.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("<script language='javascript'>window.alert('User already exist');window.location='Register.aspx';</script>");

            }
            conn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "INSERT INTO Usertable (Username, Designation, Admin, Password) VALUES (@Username, @Designation, @Admin, @Password)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@Username", TextBox_username.Text);
            com.Parameters.AddWithValue("@Designation", TextBox_designation.Text);
            com.Parameters.AddWithValue("@Admin", DropDownList_admin.SelectedValue);
            com.Parameters.AddWithValue("@Password", TextBox_password.Text);

            com.ExecuteNonQuery();
            Response.Write("<script language='javascript'>window.alert('Registration is successfull');window.location='Home.aspx';</script>");


            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }
    protected void Button_home_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void Btn_logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Write("<script language='javascript'>window.alert('You Have Logged Out');window.location='Home.aspx';</script>");


    }
    protected void Btn_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}