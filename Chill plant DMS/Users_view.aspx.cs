using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            Label_user.Text = "Welcome " + Session["New"].ToString();
        }
        else
        {
            Response.Write("<script language='javascript'>window.alert('You Don't Have Access');window.location='Home.aspx';</script>");
            Response.Redirect("Home.aspx");
        }
    }
    protected void Btn_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Btn_logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Write("<script language='javascript'>window.alert('You Have Logged Out');window.location='Home.aspx';</script>");

    }
    protected void Button_home_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}