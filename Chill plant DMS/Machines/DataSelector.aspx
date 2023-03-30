<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataSelector.aspx.cs" Inherits="Machines_Dataview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1199px;
        }
        .auto-style5 {
            height: 45px;
        }
        .auto-style7 {
            width: 70px;
            height: 62px;
        }
        .auto-style10 {
            width: 387px;
        }
        .auto-style11 {
            width: 233px;
        }
        .auto-style12 {
            height: 45px;
            width: 91px;
        }
        .auto-style13 {
            width: 91px;
        }
        .auto-style15 {
            width: 287px;
        }
        .auto-style16 {
            width: 209px;
        }
        .auto-style17 {
            width: 91px;
            height: 34px;
        }
        .auto-style18 {
            width: 233px;
            height: 34px;
        }
        .auto-style19 {
            width: 209px;
            height: 34px;
        }
        .auto-style20 {
            width: 287px;
            height: 34px;
        }
        .auto-style21 {
            width: 387px;
            height: 34px;
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
                <h3 style="color: #044b98; padding:20px;border-bottom-style:solid; border-top-style:solid; border-width: 2px" class="text-center"> Home Page</h3>
            <hr>
            
    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style12" style="margin-left:50px"></td>
                <td class="auto-style5" colspan="3" style="margin-left:50px"><strong>Select your Machine and Date to search</strong><br />
                    <hr />
                </td>
                <td class="auto-style5" style="margin-left:50px">&nbsp;</td>
                <td class="auto-style5" style="margin-left:50px"></td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Machine </td>
                <td class="auto-style19">
                    <asp:DropDownList ID="DropDownList_Machine" runat="server" class="form-control">
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
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList_Machine" ErrorMessage="Please select a machine" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style21">
                    </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date</td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox_date" runat="server" TextMode="Date" class="form-control" Width="220px"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_date" ErrorMessage="Please select a date" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Button ID="Button_search" runat="server" Text="Search" Class="btn btn-primary" style="padding:5px" OnClick="Button_search_Click" />
                </td>
                <td class="auto-style15">
                    <%
                    if(Session["status"].ToString() == "yes")
                    {%>
                    <asp:Button ID="Button_verify" runat="server" OnClick="Button_verify_Click" Text="Verify" />

                    <% } 
                    else 
                    {
                    %>
                    
                    <% } %>
                </td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>

        </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button_download" runat="server" OnClick="Button_download_Click" Text="Download data in to a excel sheet" Class="btn btn-primary"/>
        </p>
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered">
        </asp:GridView>

    </form>
</body>
</html>
