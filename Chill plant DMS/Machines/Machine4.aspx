<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Machine4.aspx.cs" Inherits="Machine4_default" %>

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
        .auto-style58 {
            width: 342px;
            height: 36px;
        }
        .auto-style59 {
            width: 342px;
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
                <h3 style="color: #044b98; padding:20px;border-bottom-style:solid; border-top-style:solid; border-width: 2px" class="text-center"> Machine 4 Add a data</h3>
            <hr>
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Machine 4 - GEA GRASSO +5C CHILL PLANT<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nominal capacity - 110 TR</strong></p>
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
                <td class="auto-style58">
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
                <td class="auto-style58">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style58">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">P_suction</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data1" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style55">P_Discharge</td>
                <td class="auto-style58">
                    <asp:TextBox ID="data2" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">P_Oil</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data3" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style55">DP_Oil_Differential_Oil_Pressure</td>
                <td class="auto-style58">
                    <asp:TextBox ID="data4" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">Crank_Case_Pressure</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data5" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style55">T_Suction</td>
                <td class="auto-style58">
                    <asp:TextBox ID="data6" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">T_Discharge</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data7" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55"></td>
                <td class="auto-style55">T_Oil</td>
                <td class="auto-style58">
                    <asp:TextBox ID="data8" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">T_Oil_Seperator</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data9" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55"></td>
                <td class="auto-style55">Suction_Superheat</td>
                <td class="auto-style58">
                    <asp:TextBox ID="data10" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">Ref_High_Level</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data11" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55"></td>
                <td class="auto-style55">Ref_Low_Level</td>
                <td class="auto-style58">
                    <asp:TextBox ID="data12" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">RPM_of_the_Motor</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data13" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55"></td>
                <td class="auto-style55">Motor_Amp</td>
                <td class="auto-style58">
                    <asp:TextBox ID="data14" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">Capacity</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data15" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55"></td>
                <td class="auto-style55">Run_Hrs</td>
                <td class="auto-style58">
                    <asp:TextBox ID="data16" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">Chilled_Water_Inlet_Temperature</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data17" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55"></td>
                <td class="auto-style55">Chilled_Water_Outlet_Temperature</td>
                <td class="auto-style58">
                    <asp:TextBox ID="data18" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">Condenser_Water_Inet_Temperature</td>
                <td class="auto-style55">
                    <asp:TextBox ID="data19" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55"></td>
                <td class="auto-style55">Condenser_Water_Outlet_Temperature</td>
                <td class="auto-style58">
                    <asp:TextBox ID="data20" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57">Cold_Well_Manual_Gauge_Temp_Reading</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data21" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">Ammonia_Status_In_Sight_Glass_Clear_And_Free_Of_Bubble</td>
                <td class="auto-style59">
                    <asp:TextBox ID="data22" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56"></td>
                <td class="auto-style57">Compressor_oil_Level_Between_1_2_And_3_4</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data23" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">Chiller_Operating_Condition</td>
                <td class="auto-style59">
                    <asp:TextBox ID="data24" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57">Chill_Water_Tank_Level_Hot_Well_Side</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data25" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">Chill_Water_Tank_Level_Cold_Well_Side</td>
                <td class="auto-style59">
                    <asp:TextBox ID="data26" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57">Cooling_Tower_Chemical_Add_3DT177</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data27" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">Cooling_Tower_Chemical_Add_3DT104</td>
                <td class="auto-style59">
                    <asp:TextBox ID="data28" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57">Cooling_Tower_Chemical_Add_ST70</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data29" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">Cooling_Tower_Chemical_Add_NALCO_7348</td>
                <td class="auto-style59">
                    <asp:TextBox ID="data30" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56"></td>
                <td class="auto-style57">Cooling_Tower_Chemical_Add_NALCO_7330</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data31" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">Cold_Well_Delivery_Pump_Pressure</td>
                <td class="auto-style59">
                    <asp:TextBox ID="data32" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57">Wet_Bulb_Temperature</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data33" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">Dry_Bulb_Temperature</td>
                <td class="auto-style59">
                    <asp:TextBox ID="data34" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57">Any_Leaks_From_Running_Pump</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data35" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">Any_abnormal_noise_or_Vibration</td>
                <td class="auto-style59">
                    <asp:TextBox ID="data36" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57">Cooling_Tower_Circulation_Pump_Pressure</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data37" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">Any_Leaks_From_Running_Pump_2</td>
                <td class="auto-style59">
                    <asp:TextBox ID="data38" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57">Any_Abnormal_Noise_Or_Vibration_2</td>
                <td class="auto-style57">
                    <asp:TextBox ID="data39" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style57">C_Tower_Make_Up_Water_Line_Ball_Float_Valve_Function</td>
                <td class="auto-style59">
                    <asp:TextBox ID="data40" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style57">
                    &nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style59">&nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style59">&nbsp;</td>
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
                <td class="auto-style59">&nbsp;</td>
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
                <td class="auto-style59">&nbsp;</td>
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
                <td class="auto-style59">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
