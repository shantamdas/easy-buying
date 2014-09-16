<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mens.aspx.cs" Inherits="mens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p align="center">
        <asp:Label ID="Label8" runat="server" 
            style="font-weight: 700; font-style: italic; color: #0000CC"></asp:Label>
    </p>
    <p align="center">
    <br />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" Width="140px" 
            onclick="ImageButton2_Click" BorderStyle="Ridge" 
            ImageUrl="~/img/cart.png" />
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <p align="left">
    <br />
        <asp:Label ID="Label4" runat="server" Text="PRODUCT ID : "></asp:Label>
        <asp:Label ID="Label1" runat="server" style="color: #0000CC"></asp:Label>
    </p>
<p>
        <asp:Label ID="Label6" runat="server" Text="PODUCT NAME : "></asp:Label>
        <asp:Label ID="Label2" runat="server" style="color: #0000CC"></asp:Label>
    </p>
<p>
        <asp:Label ID="Label7" runat="server" Text="PODUCT QUANTITY : "></asp:Label>
        <asp:Label ID="Label3" runat="server" style="color: #0000CC"></asp:Label>
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center">
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        style="margin-right: 0px" BackColor="White" BorderColor="#999999" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
            AllowPaging="True" Height="90%" Width="100%" 
            onpageindexchanging="GridView1_PageIndexChanging" PageSize="3">

  
        <AlternatingRowStyle BackColor="#DCDCDC" />

  
  <Columns>

   <asp:TemplateField HeaderText="Product Id">
        <ItemTemplate>
            <asp:Label ID="lbl_pid" runat="server" Text='<% # Eval("product_id") %>'></asp:Label>
        </ItemTemplate>
        
        </asp:TemplateField>



        <asp:TemplateField HeaderText="Product Name">
        <ItemTemplate>
            <asp:Label ID="lbl_pname" runat="server" Text='<% # Eval("product_name") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Product Price">
        <ItemTemplate>
            <asp:Label ID="lbl_p_price" runat="server" Text='<% # Eval("product_price") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Product Image">
        <ItemTemplate>
            <asp:Image ID="Image2" runat="server" Height="100" Width="100" ImageUrl='<% # Eval("product_image") %>'/>
        </ItemTemplate>
        </asp:TemplateField>
       
        <asp:CommandField HeaderText="Select Product" SelectText="Add to Cart" 
          ShowSelectButton="True" />

          <asp:TemplateField HeaderText="Quantity">
        <ItemTemplate>
            <asp:TextBox ID="Txt_product_qty" value="1" width="50px" runat="server"></asp:TextBox>
        </ItemTemplate>
        </asp:TemplateField>
       
        </Columns>

        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />

    </asp:GridView>
    </p>
</asp:Content>

