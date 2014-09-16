<%@ Page Title="" Language="C#" MasterPageFile="~/securepages/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 100%;
        }
        .style12
        {
            width: 100%;
            height: 100px;
        }
    .style13
    {
        width: 108px;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p>
        <asp:Timer ID="Timer1" runat="server" Interval="5000" ontick="Timer1_Tick">
        </asp:Timer>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <table class="style12">
            <tr>
                <td height="150px" valign="top" align="center">
                    <asp:ImageButton ID="ImageButton6" runat="server" Height="179px" 
                        Width="430px" onclick="ImageButton6_Click" 
                        ImageUrl="~/img/26b7b699a6e9912e31a900ae44c8b195.jpg" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>


<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
                    <p>
                        <br />
                    </p>
                    <table class="style11">
                        <tr>
                            <td align="center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
                                    Text="My Orders" BorderStyle="None" Height="40px" 
                                    style="color: #FFFFFF; font-weight: 700; background-color: #6A18BB" 
                                    Width="140px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Content>



<asp:Content ID="Content4" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
    <p>
        <asp:Label ID="Label5" runat="server" 
            style="color: #0000CC; font-weight: 700; font-style: italic"></asp:Label>
        <br />
        <table class="style11">
            <tr>
                <td align="center">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="160px" 
                        Width="100px" ImageUrl="~/img/1e.jpeg" onclick="ImageButton2_Click" />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="MOBILES" 
                        style="font-weight: 700; color: #0000FF; font-family: Corbel"></asp:Label>
                </td>
                <td align="center">
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="160px" 
                        Width="100px" ImageUrl="~/img/b2.jpeg" onclick="ImageButton3_Click" />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="BOOKS" 
                        style="color: #3333CC; font-weight: 700; font-family: Corbel"></asp:Label>
                </td>
                <td align="center" class="style13">
                    <asp:ImageButton ID="ImageButton4" runat="server" Height="160px" 
                        Width="100px" ImageUrl="~/img/w5.jpeg" onclick="ImageButton4_Click" />
                    <br />
                    <asp:Label ID="Label3" runat="server" BorderStyle="None" Text="WOMENS WEAR" 
                        Width="145px" 
                        style="color: #3333CC; font-weight: 700; font-family: Corbel"></asp:Label>
                </td>
                <td align="center">
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="160px" 
                        Width="100px" ImageUrl="~/img/m2.jpeg" onclick="ImageButton5_Click" />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="MENS WEAR" 
                        style="color: #3333CC; font-weight: 700; font-family: Corbel"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>




