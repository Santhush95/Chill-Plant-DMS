<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1198px;
        }
        .auto-style5 {
            width: 387px;
        }
        .auto-style7 {
            width: 70px;
            height: 62px;
        }
        .auto-style8 {
            width: 387px;
            height: 32px;
        }
        .auto-style11 {
            width: 554px;
            height: 32px;
        }
        .auto-style12 {
            width: 554px;
        }
        .auto-style13 {
            width: 530px;
        }
        .auto-style14 {
            width: 530px;
            height: 32px;
        }
        .auto-style15 {
            width: 177px;
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
                    <img alt="" class="auto-style7" src="images/logo.png" style=" padding:10px; margin-top:-50px; height: 83px;" />
                </div>
                <div style="float:right; margin-top:-100px; margin-right:20px">
                    <asp:Label ID="Label_user" runat="server" Text="You are not logged in"></asp:Label> <br />
                    
                </div>
            </div>

            <hr>
                <h3 style="color: #044b98; padding:20px;border-bottom-style:solid; border-top-style:solid; border-width: 2px" class="text-center"" class="text-center">Loging Page</h3>
            <hr>
    <div class="text-center">
        <table class="auto-style1">
            <tr>
                <td class="auto-style15" style="text-align:left; padding-left:5em" rowspan="4">&nbsp;</td>
                <td class="auto-style13" style="text-align:left"><label> Name: </label></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox_username" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_username" ErrorMessage="Please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5" rowspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13" style="text-align:left"><label> Password: </label></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox_password" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_password" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style8"></td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button_login" runat="server" Text="Login" Class="btn btn-primary" style="text-align:center; padding:5px" Width="390px" OnClick="Button_login_Click" />
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
        </table>
        </div>
    </form>
    
    
</body>
</html>
