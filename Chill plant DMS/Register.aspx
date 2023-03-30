<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1199px;
            height: 282px;
        }
        .auto-style7 {
        }
        #Reset1 {
            width: 220px;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style22 {
            width: 329px;
            height: 41px;
        }
        .auto-style30 {
            width: 220px;
            height: 41px;
        }
        .auto-style33 {
            width: 220px;
            height: 40px;
        }
        .auto-style34 {
            width: 240px;
            height: 40px;
        }
        .auto-style35 {
            width: 329px;
            height: 40px;
        }
        .auto-style36 {
            height: 41px;
        }
        .auto-style37 {
            width: 240px;
            height: 41px;
        }
    </style>
        <link href="css/bootstrap.css" rel="stylesheet" />
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
         <hr />
                <h3 style="color: #044b98; padding:20px;border-bottom-style:solid; border-top-style:solid; border-width: 2px" class="text-center"" class="auto-style9">Register Page</h3>
         <hr />


        <table class="auto-style1">
            <tr>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style34">User Name</td>
                <td class="auto-style34">
                    <asp:TextBox ID="TextBox_username" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style35">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_username" ErrorMessage="User Name is required" ForeColor="Red" style="margin-left:25px"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style34">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style34">Designation</td>
                <td class="auto-style34">
                    <asp:TextBox ID="TextBox_designation" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style35">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_designation" ErrorMessage="Designation is required" ForeColor="Red" style="margin-left:25px"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style34">
                    </td>
            </tr>
            <tr>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style34">Admin</td>
                <td class="auto-style34">
                    <asp:DropDownList ID="DropDownList_admin" runat="server" Width="237px">
                        <asp:ListItem>No</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style35">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList_admin" ErrorMessage="Please select admin status" ForeColor="Red" style="margin-left:25px"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style34">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style34">Password</td>
                <td class="auto-style34">
                    <asp:TextBox ID="TextBox_password" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style35">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox_password" ErrorMessage="Password is required" ForeColor="Red" style="margin-left:25px"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style34">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style34">Confirm Password</td>
                <td class="auto-style34">
                    <asp:TextBox ID="TextBox_confirmpassword" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style35">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox_confirmpassword" ErrorMessage="Confirm Password is required" ForeColor="Red" style="margin-left:25px"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_password" ControlToValidate="TextBox_confirmpassword" ErrorMessage="Two passwords are missmatch" ForeColor="Red" style="margin-left:25px"></asp:CompareValidator>
                </td>
                <td class="auto-style34">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style30"></td>
                <td class="auto-style36" colspan="3"></td>
                <td class="auto-style36"></td>
            </tr>
            <tr>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style37">&nbsp;&nbsp;</td>
                <td class="auto-style37">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="220px" class="btn btn-primary" style="padding:5px" />
                    </td>
                <td class="auto-style22">
                    <input id="Reset1" type="reset" value="reset"  class="btn btn-danger" style="padding:5px" /></td>
                <td class="auto-style37">&nbsp;</td>
            </tr>
        </table>
    
    </form>
</body>
</html>
