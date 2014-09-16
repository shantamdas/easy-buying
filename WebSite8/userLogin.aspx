<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userLogin.aspx.cs" Inherits="userLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 46px;
        }
        .style2
        {
            width: 80%;
        }
        .style3
        {
            background-color: #EAEAEA;
        }
        .style7
        {
            height: 32px;
            background-color: #414192;
        }
        .style8
        {
            width: 100%;
            height: 25px;
        }
        .style9
        {
            width: 62px;
        }
    </style>
</head>
<body background="dimension.png">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td style="background-color: #414192">
                    <asp:Image ID="Image1" runat="server" Height="58px" ImageUrl="~/img/logo.png" 
                        Width="367px" />
                </td>
            </tr>
        </table>
    
    </div>
    <table align="center" class="style2">
        <tr>
            <td class="style8" colspan="4">
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style7" colspan="4">
                <asp:Label ID="Label8" runat="server" BorderStyle="None" 
                    style="color: #FFFFFF; font-weight: 700; text-decoration: underline" 
                    Text="USERS PLEASE LOGIN" Width="243px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="background-color: #414192" width="80%">
                <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" 
                    BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                    Font-Size="0.8em" ForeColor="#333333" Height="150px" 
                    onauthenticate="Login1_Authenticate" style="font-size: large" Width="328px">
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                        BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                    <TextBoxStyle Font-Size="0.8em" />
                    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                        ForeColor="White" />
                </asp:Login>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
            <td align="center" rowspan="17" valign="top">
                <br />
                <asp:Image ID="Image3" runat="server" BorderStyle="None" Height="400px" 
                    ImageUrl="~/img/Holiday-Shopping-online.jpg" style="margin-top: 0px" 
                    Width="500px" />
                <br />
                <asp:Image ID="Image4" runat="server" Height="173px" ImageUrl="~/img/logo.png" 
                    Width="500px" />
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center" style="background-color: #CCCFD2">
                <asp:Label ID="Label1" runat="server" BorderStyle="None" 
                    style="text-decoration: underline; font-weight: 700; color: #000066; background-color: #CCCCCC" 
                    Text="New User please signup" Width="239px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Name  : "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_cname" runat="server"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_cname" ErrorMessage="enter name please" 
                    ValidationGroup="cust" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Email ID :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_mailid" runat="server"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txt_mailid" ErrorMessage="enter valid mail id" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="cust" SetFocusOnError="True"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_pass" runat="server" Text="Password : "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_pass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_pass" ErrorMessage="enter a password" 
                    ValidationGroup="cust" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Retype Password :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txt_pass" ControlToValidate="TextBox4" 
                    ErrorMessage="password missmatch" ValidationGroup="cust" 
                    SetFocusOnError="True"></asp:CompareValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="retype password please" 
                    ValidationGroup="cust"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_mobile" runat="server" Text="Mobile No :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_mbile" runat="server"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txt_mbile" ErrorMessage="enter valid mobile no" 
                    ValidationExpression="[0-9]{10}" ValidationGroup="cust"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txt_mbile" ErrorMessage="enter mobile no" 
                    ValidationGroup="cust"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Address :"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="txt_add" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txt_add" ErrorMessage="give address" 
                    ValidationGroup="cust" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" Text="Age :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_age" runat="server"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txt_age" ErrorMessage="age must be 18 to 99" 
                    MaximumValue="99" MinimumValue="18" Type="Integer" ValidationGroup="cust" 
                    SetFocusOnError="True"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style3" colspan="3">
                <asp:ImageButton ID="ImageButton1" runat="server" BorderStyle="Inset" 
                    Height="71px" ImageUrl="~/img/sign_up.jpg" ValidationGroup="cust" 
                    Width="94px" onclick="ImageButton1_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
