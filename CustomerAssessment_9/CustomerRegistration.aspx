<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="CustomerAssessment_9.CustomerRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 290px;
        }
        .auto-style3 {
            position: absolute;
            top: 174px;
            left: 307px;
        }
        .auto-style4 {
            position: absolute;
            top: 44px;
            left: 307px;
            z-index: 1;
            width: 289px;
        }
        .auto-style5 {
            position: absolute;
            top: 70px;
            left: 307px;
            z-index: 1;
            width: 288px;
        }
        .auto-style6 {
            position: absolute;
            top: 96px;
            left: 307px;
            z-index: 1;
            width: 287px;
        }
        .auto-style7 {
            position: absolute;
            top: 122px;
            left: 307px;
            z-index: 1;
            width: 288px;
        }
        .auto-style8 {
            width: 290px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style10 {
            width: 353px;
        }
        .auto-style11 {
            height: 26px;
            width: 353px;
        }
        .auto-style12 {
            position: absolute;
            top: 44px;
            left: 664px;
            right: 425px;
        }
        .auto-style13 {
            position: absolute;
            top: 70px;
            left: 664px;
        }
        .auto-style14 {
            position: absolute;
            top: 98px;
            left: 664px;
        }
        .auto-style16 {
            position: absolute;
            top: 124px;
            left: 664px;
        }
        .auto-style17 {
            position: absolute;
            top: 122px;
            left: 919px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 231px;
            left: 307px;
        }
        .auto-style20 {
            position: absolute;
            top: 45px;
            left: 917px;
            z-index: 1;
        }
    </style>
    <link href="OurStyle.css" rel="stylesheet" />
</head>
<body>
    
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style10">Registration</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td id="TxtName" class="auto-style2">Customer Name</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="auto-style12" ErrorMessage="*Name is Required" ForeColor="Red" style="z-index: 1" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td id="TxtMobile" class="auto-style8">MobileNo</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" CssClass="auto-style13" ErrorMessage="*10 digits only" ForeColor="Red" style="z-index: 1" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td id="TxtEmail" class="auto-style2">EmailId</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style6"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" CssClass="auto-style14" ErrorMessage="*Invalid mailId" ForeColor="Red" style="z-index: 1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td id="Txtpwd" class="auto-style2">Password</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style7"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" CssClass="auto-style16" ErrorMessage="*Required" ForeColor="Red" style="z-index: 1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9" colspan="3">
                    <asp:Button ID="BtnReg" runat="server" CssClass="auto-style3" OnClick="BtnReg_Click" style="z-index: 1" Text="Register" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style9" colspan="2">
                    <asp:Label ID="LblInfo" runat="server" CssClass="auto-style18" style="z-index: 1" Text="Result"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox4" CssClass="auto-style17" ErrorMessage="*doesn't match{pass@123}" ForeColor="Red" ValueToCompare="pass@123"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style20" ErrorMessage="*minimum 6 characters" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
