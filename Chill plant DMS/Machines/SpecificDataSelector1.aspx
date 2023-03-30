<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SpecificDataSelector1.aspx.cs" Inherits="Machines_SpecificDataSelector1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 1123px;
        }
        .auto-style6 {
            width: 280px;
        }
        .auto-style7 {
            width: 281px;
        }
        .auto-style8 {
            width: 280px;
            height: 32px;
        }
        .auto-style9 {
            width: 281px;
            height: 32px;
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
                <h3 style="color: #044b98; padding:20px;border-bottom-style:solid; border-top-style:solid; border-width: 2px" class="text-center"" class="text-center"> Specific Data Select</h3>
         <hr />
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">Machine:</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList_Machine" runat="server" CssClass="form-control">
                        <asp:ListItem>Machine1table</asp:ListItem>
                        <asp:ListItem>Machine2table</asp:ListItem>
                        <asp:ListItem>Machine3table</asp:ListItem>
                        <asp:ListItem>Machine4table</asp:ListItem>
                        <asp:ListItem>Machine5table</asp:ListItem>
                        <asp:ListItem>Machine6table</asp:ListItem>
                        <asp:ListItem>Machine7table</asp:ListItem>
                        <asp:ListItem>Machine8table</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button_Parameter" runat="server" OnClick="Button_Parameter_Click" Text="Select the Machine to choose the parameters" CausesValidation="False" Class="btn btn-primary" style="padding:5px"/>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">Parameter</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList_Parameter" runat="server" CssClass="form-control">
                    </asp:DropDownList>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList_Parameter" ErrorMessage="Please enter the Parameter"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9">Date,</td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; From&nbsp;</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox_DateFrom" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_DateFrom" ErrorMessage="Please enter the starting date"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To&nbsp;</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox_DateTo" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_DateTo" ErrorMessage="Please enter the end date"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="Button_Search" runat="server" Text="Search" OnClick="Button_Search_Click" Class="btn btn-primary" style="padding:5px"/>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
        <p style="padding:20px">
            <asp:Button ID="Button_download" runat="server" OnClick="Button_download_Click" Text="Download data in to a excel sheet" Class="btn btn-primary"/>
        </p>
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered">
        </asp:GridView>
    </form>
</body>
</html>
