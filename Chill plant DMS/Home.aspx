<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 1123px;
        }
        .auto-style4 {
            width: 199px;
        }
        .auto-style7 {
            width: 374px;
        }
        .auto-style8 {
            width: 375px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div id="header" style="background-color: #b3dcf6">
                <div>
                    <h2 style="padding:10px; color:#044b98">Unilever Sri Lanka Limited</h2>
                    <br />
                    <img alt="" class="auto-style7" src="images/logo.png" style=" padding:10px; margin-top:-50px; height: 83px; width: 70px;" />
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
               <h4 style="background-color:blue; color:white; padding:10px"><a href="Home.aspx" style="color:white"> Home </a></h4> 
            </div>
            <hr>
                <h3 style="color: #044b98; padding:20px;border-bottom-style:solid; border-top-style:solid; border-width: 2px" class="text-center"> Home Page&nbsp; </h3>
            &nbsp;<table class="auto-style1">
                <tr>
                    <td class="auto-style7">
                        <h2>&nbsp;&nbsp;
                        <asp:Label ID="Label_message" runat="server" Text="" style="color: #CC0000"></asp:Label>
                        </h2>
                    </td>
                    <td style="text-align: left" class="auto-style7">
                        <h2>&nbsp;</h2>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td style="text-align: left" class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
        </table>
    <div>
    <div>
        <table class="auto-style4">
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style13">
                    <a href="Machines/Machines.aspx"><asp:Panel ID="Panel1" runat="server" style="background-color:#062360; color:white" Height="150px" Width="300px">
                        <p style="text-align:center; padding:5px">
                            &nbsp;</p>
                        <p style="text-align:center; padding:5px">
                            Add Machine Data</p>
                    </asp:Panel></a>
                    
                </td>
                <td class="auto-style13">
                    <a href="Machines/Dataselector.aspx"><asp:Panel ID="Panel2" runat="server" style="background-color:red; color:white"  Height="150px" Width="300px">
                        <p style="text-align:center; padding:5px">
                            &nbsp;</p>
                        <p style="text-align:center; padding:5px">
                            View Machine Data</p>
                    </asp:Panel></a>
                </td>
                <td class="auto-style13">
                    <a href="Machines/SpecificDataselector1.aspx"><asp:Panel ID="Panel3" runat="server" style="background-color:#062360; color:white"  Height="150px" Width="300px">
                        <p style="text-align:center; padding:5px">
                            &nbsp;</p>
                        <p style="text-align:center; padding:5px">
                            Specific Data Selector</p>
                    </asp:Panel></a>
                </td>
                <td class="auto-style13">
                    <a href="Register.aspx"><asp:Panel ID="Panel4" runat="server" style="background-color:red; color:white"  Height="150px" Width="300px">
                        <p style="text-align:center; padding:5px">
                            &nbsp;</p>
                        <p style="text-align:center; padding:5px">
                            Add a New User</p>
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
                    <a href="Users_view.aspx"><asp:Panel ID="Panel5" runat="server" style="background-color:red; color:white"  Height="150px" Width="300px">
                        <p style="text-align:center; padding:5px">
                            &nbsp;</p>
                        <p style="text-align:center; padding:5px">
                            View Users</p>
                    </asp:Panel></a>
                </td>
                <td class="auto-style9">
                    
                </td>
                <td class="auto-style9">
                    
                </td>
                <td class="auto-style9">
                    
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
        
    
    </div>
    </form>
</body>
</html>
