using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Machine3_default : System.Web.UI.Page
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
        }

        
        
        
    }
    protected void Btn_logout_Click(object sender, EventArgs e)
    {
        Response.Write("<script language='javascript'>window.alert('You Have Logged Out');window.location='../Home.aspx';</script>");
    }
    protected void Btn_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Login.aspx");
    }
    protected void Button_submit_Click(object sender, EventArgs e)
    {
        try
        {
            var CurrentDate = DateTime.Now.ToString();
           

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "INSERT INTO Machine3table (system_datetime, date, time, operator_name, checkedby_name, P_suction, P_Discharge, P_Oil, DP_Oil_Differential_Oil_Pressure, Crank_Case_Pressure, T_Suction, T_Discharge, T_Oil, T_Oil_Seperator, Suction_Superheat, Ref_High_Level, Ref_Low_Level, Motor_Amp, Capacity, Run_Hrs, Chilled_Water_Inlet_Temperature, Chilled_Water_Outlet_Temperature, Cold_Well_Manual_Gauge_Temp_Reading, Ammonia_Status_In_Sight_Glass_Clear_And_Free_Of_Bubbles, Chill_Operating_Condition, Chill_Water_Tank_Level_Hot_Well_Side, Chill_Water_Tank_Level_Cold_Well_Side, Cooling_Tower_Chemical_Add_3DT177, Cooling_Tower_Chemical_Add_3DT104, Cooling_Tower_Chemical_Add_ST70, Cooling_Tower_Chemical_Add_NALCO_7348, Cooling_Tower_Chemical_Add_NALCO_7348_2, Cold_Well_Delivery_Pump_Pressure, Any_Leaks_From_Running_Pump, Any_Abnormal_Noise_Or_Vibration, Stand_By_Pumps_Suction_Filter_Condition_Clean_or_Not, Cooling_Tower_Circulation_Pump_Pressure, Any_Leaks_From_Running_Pump_2, Any_Abnormal_Noise_Or_Vibration_2, C_Tower_Circulation_Pump_Suction_Filter_Clean, C_Tower_Make_Up_Water_Line_Ball_Float_Valve_Function, Cooling_Tower_Any_Water_Leaks, All_Chill_Water_Lines_Insulations_Condition) VALUES (@system_datetime, @date, @time, @operator_name, @checkedby_name, @data1, @data2, @data3, @data4, @data5, @data6, @data7, @data8, @data9, @data10, @data11, @data12, @data13, @data14, @data15, @data16, @data17, @data18, @data19, @data20, @data21, @data22, @data23, @data24, @data25, @data26, @data27, @data28, @data29, @data30, @data31, @data32, @data33, @data34, @data35, @data36, @data37, @data38)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@system_datetime", CurrentDate);
            com.Parameters.AddWithValue("@date", TextBox_date.Text);
            com.Parameters.AddWithValue("@time", DropDownList_time.SelectedValue.ToString());
            com.Parameters.AddWithValue("@operator_name", Session["New"].ToString());
            com.Parameters.AddWithValue("@checkedby_name", "No");
            com.Parameters.AddWithValue("@data1", data1.Text);
            com.Parameters.AddWithValue("@data2", data2.Text);
            com.Parameters.AddWithValue("@data3", data3.Text);
            com.Parameters.AddWithValue("@data4", data4.Text);
            com.Parameters.AddWithValue("@data5", data5.Text);
            com.Parameters.AddWithValue("@data6", data6.Text);
            com.Parameters.AddWithValue("@data7", data7.Text);
            com.Parameters.AddWithValue("@data8", data8.Text);
            com.Parameters.AddWithValue("@data9", data9.Text);
            com.Parameters.AddWithValue("@data10", data10.Text);
            com.Parameters.AddWithValue("@data11", data11.Text);
            com.Parameters.AddWithValue("@data12", data12.Text);
            com.Parameters.AddWithValue("@data13", data13.Text);
            com.Parameters.AddWithValue("@data14", data14.Text);
            com.Parameters.AddWithValue("@data15", data15.Text);
            com.Parameters.AddWithValue("@data16", data16.Text);
            com.Parameters.AddWithValue("@data17", data17.Text);
            com.Parameters.AddWithValue("@data18", data18.Text);
            com.Parameters.AddWithValue("@data19", data19.Text);
            com.Parameters.AddWithValue("@data20", data20.Text);
            com.Parameters.AddWithValue("@data21", data21.Text);
            com.Parameters.AddWithValue("@data22", data22.Text);
            com.Parameters.AddWithValue("@data23", data23.Text);
            com.Parameters.AddWithValue("@data24", data24.Text);
            com.Parameters.AddWithValue("@data25", data25.Text);
            com.Parameters.AddWithValue("@data26", data26.Text);
            com.Parameters.AddWithValue("@data27", data27.Text);
            com.Parameters.AddWithValue("@data28", data28.Text);
            com.Parameters.AddWithValue("@data29", data29.Text);
            com.Parameters.AddWithValue("@data30", data30.Text);
            com.Parameters.AddWithValue("@data31", data31.Text);
            com.Parameters.AddWithValue("@data32", data32.Text);
            com.Parameters.AddWithValue("@data33", data33.Text);
            com.Parameters.AddWithValue("@data34", data34.Text);
            com.Parameters.AddWithValue("@data35", data35.Text);
            com.Parameters.AddWithValue("@data36", data36.Text);
            com.Parameters.AddWithValue("@data37", data37.Text);
            com.Parameters.AddWithValue("@data38", data38.Text);
      

            com.ExecuteNonQuery();
            Response.Write("<script language='javascript'>window.alert('Data entry is successfull');window.location='Machines.aspx';</script>");
           

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }
    
}