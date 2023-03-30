<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Machine2.aspx.cs" Inherits="Machine2_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1163px;
            height: 986px;
            margin-right: 37px;
        }
        .auto-style7 {
            text-align: center;
        }
        #Reset1 {
            width: 209px;
        }
        .auto-style54 {
            width: 224px;
            height: 36px;
        }
        .auto-style55 {
            width: 225px;
            height: 36px;
        }
        .auto-style56 {
            width: 224px;
            height: 37px;
        }
        .auto-style57 {
            width: 225px;
            height: 37px;
        }
        </style>
        <link href="../css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div id="header" style="background-color: #b3dcf6">
                <div>
                    <h2 style="padding:10px; color:#044b98">Unilever Sri Lanka Limited</h2>
                    <br />
                    <img alt="" class="auto-style7" src="../images/logo.png" style=" padding:10px; margin-top:-50px; height: 83px; width: 70px;" />
                </div>
                <div style="float:right; margin-top:-100px; margin-right:20px">
                    <asp:Label ID="Label_user" runat="server" Text="You are not logged in"></asp:Label> <br />
                    <%
                    if(Session["New"] != null)
                    {%>

                    <asp:Button ID="Btn_logout" runat="server" Text="Logout" Class="btn btn-info" OnClick="Btn_logout_Click"  style="padding:5px" CausesValidation="False" />

                    <% } 
                    else 
                    {
                    %>
                    <asp:Button ID="Btn_login" runat="server" Text="Login" Class="btn btn-info" OnClick="Btn_login_Click"  style="padding:5px" CausesValidation="False" />
                    <% } %>
                </div>
            </div>
            <div>
               <h4 style="background-color:blue; color:white; padding:10px"><a href="../Home.aspx" style="color:white"> Home </a></h4> 
            </div>
            <hr>
                <h3 style="color: #044b98; padding:20px;border-bottom-style:solid; border-top-style:solid; border-width: 2px" class="text-center"> Machine 2 Add a data</h3>
            <hr>
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Machine 2 - GEA CHILL PLANT - 20C<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nominal capacity - 11.5 TR</strong></p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style54"></td>
                <td class="auto-style55">Date</td>
                <td class="auto-style55">
                    <asp:TextBox ID="TextBox_date" runat="server" class="form-control" Width="220px" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style55">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_date" ErrorMessage="Date is Required" ForeColor="Red" style="text-align: left"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style55">
                    </td>
                <td class="auto-style55">
                    </td>
            </tr>
            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">Time</td>
                <td class="auto-style55">
                    <asp:DropDownList ID="DropDownList_time" runat="server" CausesValidation="True" Width="218px">
                        <asp:ListItem Value="none" >Please select</asp:ListItem>
                        <asp:ListItem>6 am</asp:ListItem>
                        <asp:ListItem>7 am</asp:ListItem>
                        <asp:ListItem>8 am</asp:ListItem>
                        <asp:ListItem>9 am</asp:ListItem>
                        <asp:ListItem>10 am</asp:ListItem>
                        <asp:ListItem>11 am</asp:ListItem>
                        <asp:ListItem>12 pm</asp:ListItem>
                        <asp:ListItem>1 pm</asp:ListItem>
                        <asp:ListItem>2 pm</asp:ListItem>
                        <asp:ListItem>3 pm</asp:ListItem>
                        <asp:ListItem>4 pm</asp:ListItem>
                        <asp:ListItem>5 pm</asp:ListItem>
                        <asp:ListItem>6 pm</asp:ListItem>
                        <asp:ListItem>7 pm</asp:ListItem>
                        <asp:ListItem>8 pm</asp:ListItem>
                        <asp:ListItem>9 pm</asp:ListItem>
                        <asp:ListItem>10 pm</asp:ListItem>
                        <asp:ListItem>11 pm</asp:ListItem>
                        <asp:ListItem>12 am</asp:ListItem>
                        <asp:ListItem>1 am</asp:ListItem>
                        <asp:ListItem>2 am</asp:ListItem>
                        <asp:ListItem>3 am</asp:ListItem>
                        <asp:ListItem>4 am</asp:ListItem>
                        <asp:ListItem>5 am</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style55">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" InitialValue="none" runat="server" ControlToValidate="DropDownList_time" ErrorMessage="Time is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style55">
                    &nbsp;</td>
                <td class="auto-style55">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style55">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">P_suction_Bar_A</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data1" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style55">P_suction_T_Evep</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data2" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">P_Discharge_Bar_A</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data3" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style55">P_Discharge_T_Disch</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data4" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">P_Oil</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data5" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style55">DP_Oil</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data6" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">P_Oil_Filter</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data7" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55"></td>
                <td class="auto-style55">DP_Oil_Filter</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data8" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">T_Suc</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data9" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55"></td>
                <td class="auto-style55">T_Disch</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data10" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">T_Oil</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data11" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55"></td>
                <td class="auto-style55">Ext_Temp</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data12" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">Mot_Amp</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data13" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55"></td>
                <td class="auto-style55">Capacity</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data14" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">Run_Hrs</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data15" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55"></td>
                <td class="auto-style55">Chiller_Operating_Condition</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data16" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">Chill_Water_tank_Level_Hot_well_side</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data17" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55"></td>
                <td class="auto-style55">Chill_Water_tank_Level_Cold_well_side</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data18" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">Cold_Well_Manual_Gauge_Temp_Reading</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data19" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55"></td>
                <td class="auto-style55">S_G_of_Glycol</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data20" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57">Oil_differential_pressure_pOil_PSuc</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data21" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">Oil_differential_pressure_Suction_superheat</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data22" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56"></td>
                <td class="auto-style57">Oil_differential_pressure_Discharge_superheat</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data23" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">All_pmp_suction_and_discharge_valves_in_Open_mode</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data24" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57">Hot_well_circulation_pump_pressure</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data25" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">Any_Leaks_from_running_pump_hot_well</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data26" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57">Any_abnormal_noize_or_vibration_hot_well</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data27" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">Stand_by_Pumps_suction_filter_condition_Clean_not_hot_well</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data28" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57">Cold_well_delivary_pump_pressure</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data29" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">Any_leaks_from_running_pump_cold_well</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data30" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56"></td>
                <td class="auto-style57">Any_abnormal_noize_or_vibration_cold_well</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data31" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">Stand_by_Pumps_suction_filter_condition_Clean_not_cold_well</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data32" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57">Cooling_tower_circulation_pump_pressure</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data33" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">Any_leaks_from_running_pump</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data34" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57">Any_abnormal_noize_or_vibration</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data35" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">C_Tower_circulation_pump_Suction_filter_Clean</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data36" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57">C_Tower_make_up_water_line_ball_float_valve_function</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data37" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">Cooling_tower_any_water_leaks</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data38" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57">All_chill_water_lines_insulations_condition</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data39" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style56">
                    &nbsp;</td>
                <td class="auto-style57">
                    <input id="Reset1" type="reset" value="reset" class="btn btn-danger" style="padding:5px" /></td>
                <td class="auto-style57">
                    <asp:Button ID="Button_submit" runat="server" Text="Submit the data" Width="203px" class="btn btn-primary" style="padding:5px" OnClick="Button_submit_Click" />
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style56">
                    &nbsp;</td>
                <td class="auto-style57">
                    &nbsp;</td>
                <td class="auto-style57">
                    &nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style56">
                    &nbsp;</td>
                <td class="auto-style57">
                    &nbsp;</td>
                <td class="auto-style57">
                    &nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
