<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Machines.aspx.cs" Inherits="Machines_Machines" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            width: 1123px;
        }
        .auto-style7 {
            width: 65px;
        }
        .auto-style9 {
            width: 187px;
        }
        .auto-style10 {
            width: 188px;
        }
        .auto-style11 {
            width: 187px;
            height: 32px;
        }
        .auto-style12 {
            width: 188px;
            height: 32px;
        }
        .auto-style13 {
            width: 187px;
            height: 152px;
        }
        .auto-style14 {
            width: 188px;
            height: 152px;
        }
    </style>
    <link href="../css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
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
         <hr />
                <h3 style="color: #044b98; padding:20px;border-bottom-style:solid; border-top-style:solid; border-width: 2px" class="text-center"" class="text-center"> Machines Page</h3>
         <hr />
    <p class="auto-style3">
        <strong style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select the machine to enter data...</strong></p>
        <table class="auto-style4">
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style13">
                    <a href="Machine1.aspx"><asp:Panel ID="Panel1" runat="server" style="background-color:red; color:white" Height="150px" Width="300px">
                        <p style="text-align:center; padding:5px">
                            <br /> &nbsp;Machine 1
                            <br />
                            GEA CHILL PLANT - 20 C
                            <br />
                            NOMINAL CAPACITY - 21 TR</p>
                    </asp:Panel></a>
                    
                </td>
                <td class="auto-style13">
                    <a href="Machine2.aspx"><asp:Panel ID="Panel2" runat="server" style="background-color:red; color:white"  Height="150px" Width="300px">
                        <p style="text-align:center; padding:5px">
                            <br /> Machine 2 <br /> GEA CHILL PLANT - 20 C <br /> NOMINAL CAPACITY - 11.5 TR</p>
                    </asp:Panel></a>
                </td>
                <td class="auto-style13">
                    <a href="Machine3.aspx"><asp:Panel ID="Panel3" runat="server" style="background-color:red; color:white"  Height="150px" Width="300px">
                        <p style="text-align:center; padding:5px">
                            <br /> Machine 3 <br /> GEA GRASSO + 5C CHILL PLANT<br /> NOMINAL CAPACITY - 250 TR</p>
                    </asp:Panel></a>
                </td>
                <td class="auto-style13">
                    <a href="Machine4.aspx"><asp:Panel ID="Panel4" runat="server" style="background-color:red; color:white"  Height="150px" Width="300px">
                        <p style="text-align:center; padding:5px">
                            <br /> Machine 4 <br /> GEA GRASSO + 5C CHILL PLANT<br /> NOMINAL CAPACITY - 110 TR</p>
                    </asp:Panel></a>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style9">
                    <a href="Machine5.aspx"><asp:Panel ID="Panel5" runat="server" style="background-color:red; color:white"  Height="150px" Width="300px">
                        <p style="text-align:center; padding:5px">
                            <br /> Machine 5 <br /> KIRLOSKAR CHILL PLANT
                            <br />
                            NOMINAL CAPACITY - 160 TR</p>
                    </asp:Panel></a>
                </td>
                <td class="auto-style9">
                    <a href="Machine6.aspx"><asp:Panel ID="Panel6" runat="server" style="background-color:red; color:white"  Height="150px" Width="300px">
                        <p style="text-align:center; padding:5px">
                            <br /> Machine 6 <br /> (-20) GRAM CHILL PLANT
                            <br />
                            NOMINAL CAPACITY - 22.8 KW (6.5 TR)</p>
                    </asp:Panel></a>
                </td>
                <td class="auto-style9">
                    <a href="Machine7.aspx"><asp:Panel ID="Panel7" runat="server" style="background-color:red; color:white"  Height="150px" Width="300px">
                        <p style="text-align:center; padding:5px">
                            <br /> Machine 7 <br /> KIRLOSKAR AHU SCREW CHILLER - CHILLER NUMBER - 1<br /> NOMINAL CAPACITY - 110 TR</p>
                    </asp:Panel></a>
                </td>
                <td class="auto-style9">
                    <a href="Machine8.aspx"><asp:Panel ID="Panel8" runat="server" style="background-color:red; color:white"  Height="150px" Width="300px">
                        <p style="text-align:center; padding:5px">
                            <br /> Machine 8 <br /> KIRLOSKAR AHU SCREW CHILLER - CHILLER NUMBER - 2 <br /> NOMINAL CAPACITY - 110 TR</p>
                    </asp:Panel></a>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
    </form>
        
   
</body>
</html>
