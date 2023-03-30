using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Machine1_default : System.Web.UI.Page
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
            string insertQuery = "INSERT INTO Machine1table (system_datetime, date, time, operator_name, checkedby_name, P_suction_Bar_A, P_suction_T_Evep, P_Discharge_Bar_A, P_Discharge_T_Disch, P_Oil, DP_Oil, P_Oil_Filter, DP_Oil_Filter, T_Suc, T_Disch, T_Oil, Ext_Temp, Mot_Amp, Capacity, Run_Hrs, Chiller_Operating_Condition, Chill_Water_tank_Level_Hot_well_side, Chill_Water_tank_Level_Cold_well_side, Cold_Well_Manual_Gauge_Temp_Reading, S_G_of_Glycol, Oil_differential_pressure_pOil_PSuc, Oil_differential_pressure_Suction_superheat, Oil_differential_pressure_Discharge_superheat, All_pmp_suction_and_discharge_valves_in_Open_mode, Hot_well_circulation_pump_pressure, Any_Leaks_from_running_pump_hot_well, Any_abnormal_noize_or_vibration_hot_well, Stand_by_Pumps_suction_filter_condition_Clean_not_hot_well, Cold_well_delivary_pump_pressure, Any_leaks_from_running_pump_cold_well, Any_abnormal_noize_or_vibration_cold_well, Stand_by_Pumps_suction_filter_condition_Clean_not_cold_well, Cooling_tower_circulation_pump_pressure, Any_leaks_from_running_pump, Any_abnormal_noize_or_vibration, C_Tower_circulation_pump_Suction_filter_Clean, C_Tower_make_up_water_line_ball_float_valve_function, Cooling_tower_any_water_leaks, All_chill_water_lines_insulations_condition) VALUES (@system_datetime, @date, @time, @operator_name, @checkedby_name, @P_suction_Bar_A, @P_suction_T_Evep, @P_Discharge_Bar_A, @P_Discharge_T_Disch, @P_Oil, @DP_Oil, @P_Oil_Filter, @DP_Oil_Filter, @T_Suc, @T_Disch, @T_Oil, @Ext_Temp, @Mot_Amp, @Capacity, @Run_Hrs, @Chiller_Operating_Condition, @Chill_Water_tank_Level_Hot_well_side, @Chill_Water_tank_Level_Cold_well_side, @Cold_Well_Manual_Gauge_Temp_Reading, @S_G_of_Glycol, @Oil_differential_pressure_pOil_PSuc, @Oil_differential_pressure_Suction_superheat, @Oil_differential_pressure_Discharge_superheat, @All_pmp_suction_and_discharge_valves_in_Open_mode, @Hot_well_circulation_pump_pressure, @Any_Leaks_from_running_pump_hot_well, @Any_abnormal_noize_or_vibration_hot_well, @Stand_by_Pumps_suction_filter_condition_Clean_not_hot_well, @Cold_well_delivary_pump_pressure, @Any_leaks_from_running_pump_cold_well, @Any_abnormal_noize_or_vibration_cold_well, @Stand_by_Pumps_suction_filter_condition_Clean_not_cold_well, @Cooling_tower_circulation_pump_pressure, @Any_leaks_from_running_pump, @Any_abnormal_noize_or_vibration, @C_Tower_circulation_pump_Suction_filter_Clean, @C_Tower_make_up_water_line_ball_float_valve_function, @Cooling_tower_any_water_leaks, @All_chill_water_lines_insulations_condition)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@system_datetime", CurrentDate);
            com.Parameters.AddWithValue("@date", TextBox_date.Text);
            com.Parameters.AddWithValue("@time", DropDownList_time.SelectedValue.ToString());
            com.Parameters.AddWithValue("@operator_name", Session["New"].ToString());
            com.Parameters.AddWithValue("@checkedby_name", "No");
            com.Parameters.AddWithValue("@P_suction_Bar_A", data1.Text);
            com.Parameters.AddWithValue("@P_suction_T_Evep", data2.Text);
            com.Parameters.AddWithValue("@P_Discharge_Bar_A", data3.Text);
            com.Parameters.AddWithValue("@P_Discharge_T_Disch", data4.Text);
            com.Parameters.AddWithValue("@P_Oil", data5.Text);
            com.Parameters.AddWithValue("@DP_Oil", data6.Text);
            com.Parameters.AddWithValue("@P_Oil_Filter", data7.Text);
            com.Parameters.AddWithValue("@DP_Oil_Filter", data8.Text);
            com.Parameters.AddWithValue("@T_Suc", data9.Text);
            com.Parameters.AddWithValue("@T_Disch", data10.Text);
            com.Parameters.AddWithValue("@T_Oil", data11.Text);
            com.Parameters.AddWithValue("@Ext_Temp", data12.Text);
            com.Parameters.AddWithValue("@Mot_Amp", data13.Text);
            com.Parameters.AddWithValue("@Capacity", data14.Text);
            com.Parameters.AddWithValue("@Run_Hrs", data15.Text);
            com.Parameters.AddWithValue("@Chiller_Operating_Condition", data16.Text);
            com.Parameters.AddWithValue("@Chill_Water_tank_Level_Hot_well_side", data17.Text);
            com.Parameters.AddWithValue("@Chill_Water_tank_Level_Cold_well_side", data18.Text);
            com.Parameters.AddWithValue("@Cold_Well_Manual_Gauge_Temp_Reading", data19.Text);
            com.Parameters.AddWithValue("@S_G_of_Glycol", data20.Text);
            com.Parameters.AddWithValue("@Oil_differential_pressure_pOil_PSuc", data21.Text);
            com.Parameters.AddWithValue("@Oil_differential_pressure_Suction_superheat", data22.Text);
            com.Parameters.AddWithValue("@Oil_differential_pressure_Discharge_superheat", data23.Text);
            com.Parameters.AddWithValue("@All_pmp_suction_and_discharge_valves_in_Open_mode", data24.Text);
            com.Parameters.AddWithValue("@Hot_well_circulation_pump_pressure", data25.Text);
            com.Parameters.AddWithValue("@Any_Leaks_from_running_pump_hot_well", data26.Text);
            com.Parameters.AddWithValue("@Any_abnormal_noize_or_vibration_hot_well", data27.Text);
            com.Parameters.AddWithValue("@Stand_by_Pumps_suction_filter_condition_Clean_not_hot_well", data28.Text);
            com.Parameters.AddWithValue("@Cold_well_delivary_pump_pressure", data29.Text);
            com.Parameters.AddWithValue("@Any_leaks_from_running_pump_cold_well", data30.Text);
            com.Parameters.AddWithValue("@Any_abnormal_noize_or_vibration_cold_well", data31.Text);
            com.Parameters.AddWithValue("@Stand_by_Pumps_suction_filter_condition_Clean_not_cold_well", data32.Text);
            com.Parameters.AddWithValue("@Cooling_tower_circulation_pump_pressure", data33.Text);
            com.Parameters.AddWithValue("@Any_leaks_from_running_pump", data34.Text);
            com.Parameters.AddWithValue("@Any_abnormal_noize_or_vibration", data35.Text);
            com.Parameters.AddWithValue("@C_Tower_circulation_pump_Suction_filter_Clean", data36.Text);
            com.Parameters.AddWithValue("@C_Tower_make_up_water_line_ball_float_valve_function", data37.Text);
            com.Parameters.AddWithValue("@Cooling_tower_any_water_leaks", data38.Text);
            com.Parameters.AddWithValue("@All_chill_water_lines_insulations_condition", data39.Text);
      

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