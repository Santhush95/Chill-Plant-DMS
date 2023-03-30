using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

public partial class Machines_SpecificDataSelector1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            Label_user.Text = "Welcome " + Session["New"].ToString();
        }
        else
        {
            Response.Write("<script language='javascript'>window.alert('You Don't Have Access');window.location='../Home.aspx';</script>");
            Response.Redirect("../Home.aspx");
        }

       
    }
    protected void Btn_logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Write("<script language='javascript'>window.alert('You Have Logged Out');window.location='../Home.aspx';</script>");

    }
    protected void Btn_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Login.aspx");
    }
    protected void Button_Parameter_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM " + DropDownList_Machine.SelectedValue.ToString(), conn);
            DataTable dt = new DataTable();
            da.Fill(dt);

            for (int i = 6; i < dt.Columns.Count; i++)
            {
                DropDownList_Parameter.Items.Add(dt.Columns[i].ColumnName.ToString());            
            }
            
        }
    }
    protected void Button_Search_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("SELECT date, time, system_datetime, " + DropDownList_Parameter.SelectedValue.ToString() + " FROM " + DropDownList_Machine.SelectedValue.ToString() + " WHERE date BETWEEN '" + TextBox_DateFrom.Text.ToString() + "' AND '" + TextBox_DateTo.Text.ToString() + "'", conn);
            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
            

        }
    }

    protected void Button_download_Click(object sender, EventArgs e)
    {
        Response.ClearContent();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", string.Format("attachment; filename={0}", "ProductDetail.xls"));
        Response.ContentType = "application/ms-excel";
        StringWriter sw = new StringWriter();
        HtmlTextWriter htw = new HtmlTextWriter(sw);
        GridView1.AllowPaging = false;
        GridView1.HeaderRow.Style.Add("background-color", "#FFFFFF");
        for (int i = 0; i < GridView1.HeaderRow.Cells.Count; i++)
        {
            GridView1.HeaderRow.Cells[i].Style.Add("background-color", "#507CD1");
        }
        int j = 1;
        foreach (GridViewRow gvrow in GridView1.Rows)
        {
            gvrow.BackColor = System.Drawing.Color.White;
            if (j <= GridView1.Rows.Count)
            {
                if (j % 2 != 0)
                {
                    for (int k = 0; k < gvrow.Cells.Count; k++)
                    {
                        gvrow.Cells[k].Style.Add("background-color", "#EFF3FB");
                    }
                }
            }
            j++;
        }
        GridView1.RenderControl(htw);
        Response.Write(sw.ToString());
        Response.End();

    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }
}