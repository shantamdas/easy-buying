﻿<%@ Page Title="" Language="C#" MasterPageFile="~/securepages/MasterPage.master" AutoEventWireup="true" CodeFile="showBill.aspx.cs" Inherits="securepages_showBill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p align="center">
        <asp:Label ID="Label12" runat="server" 
            style="font-weight: 700; font-style: italic; color: #0000CC"></asp:Label>
    </p>
    <p>
        <br />
        <table class="style11">
            <tr>
                <td align="center">
                    <asp:Label ID="Label11" runat="server" Text="SHOW MY ALL ORDERS"></asp:Label>
                </td>
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
                <td align="center">
                                &nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                                <asp:Label ID="Label14" runat="server" BorderStyle="None" Height="26px" 
                                    style="color: #FFFF00; font-weight: 700; background-color: #FF3300" 
                                    Text="PAY WHEN DELIVERED" Width="186px"></asp:Label>
                            </td>
            </tr>
        </table>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <p align="center">
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
                    <asp:Label ID="Label13" runat="server" BorderStyle="None" 
                        style="font-size: x-small" Text="PLEASE NOTE YOUR ORDER ID CAREFULLY"></asp:Label>
                </td>
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
            <asp:Label ID="lbl_p_price" runat="server" Text='<% # Eval("product_qty") %>'></asp:Label>
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
    </p>
    <p align="center">
        <asp:Label ID="Label9" runat="server" Text="TOTAL : "></asp:Label>
        <asp:Label ID="Label10" runat="server" 
            style="font-size: x-large; font-weight: 700; color: #3333FF"></asp:Label>
    </p>
</asp:Content>

