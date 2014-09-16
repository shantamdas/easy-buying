<%@ Page Title="" Language="C#" MasterPageFile="~/securepages/MasterPage.master" AutoEventWireup="true" CodeFile="myorder.aspx.cs" Inherits="securepages_myorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 100%;
        }
        .style12
        {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p align="center">
        <asp:Label ID="Label11" runat="server" 
            style="font-weight: 700; font-style: italic; color: #0000CC"></asp:Label>
    </p>
    <p>
        <br />
        <table class="style11">
            <tr>
                <td align="center" class="style12">
                    <asp:DropDownList ID="drd_orderid" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="drd_orderid_SelectedIndexChanged">
                        <asp:ListItem>select order id</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <p>
        <br />
        <table class="style11">
            <tr>
                <td align="center">
                    <asp:Label ID="Label1" runat="server" Text="ORDER ID" 
                        style="text-decoration: underline"></asp:Label>
                </td>
                <td align="center">
                    <asp:Label ID="Label2" runat="server" Text="NAME" 
                        style="text-decoration: underline"></asp:Label>
                </td>
                <td align="center">
                    <asp:Label ID="Label3" runat="server" Text="BOOKING DATE" 
                        style="text-decoration: underline"></asp:Label>
                </td>
                <td align="center">
                    <asp:Label ID="Label4" runat="server" Text="DELIVERY DATE" 
                        style="text-decoration: underline"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
                <td align="center">
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
                <td align="center">
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
                <td align="center">
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center">
        <br />
    </p>
        <asp:GridView ID="grid_showbill" runat="server" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" Width="319px">

         <Columns>

   <asp:TemplateField HeaderText="Product Id">
        <ItemTemplate>
            <asp:Label ID="lbl_pid" runat="server" Text='<% # Eval("product_id") %>'></asp:Label>
        </ItemTemplate>
        
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Product Price">
        <ItemTemplate>
            <asp:Label ID="lbl_p_price" runat="server" Text='<% # Eval("product_price") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

     <asp:TemplateField HeaderText="Product Quantity">
        <ItemTemplate>
            <asp:Label ID="lbl_p_price0" runat="server" Text='<% # Eval("product_qty") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
       
       </Columns>

            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />

        </asp:GridView>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="TOTAL : "></asp:Label>
        <asp:Label ID="Label10" runat="server" 
            style="font-size: x-large; font-weight: 700; color: #3333FF"></asp:Label>
    </asp:Content>

