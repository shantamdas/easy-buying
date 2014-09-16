<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GenerateBill.aspx.cs" Inherits="securepages_GenerateBill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p align="center">
        <asp:Label ID="Label4" runat="server" 
            style="font-weight: 700; font-style: italic; color: #0000CC"></asp:Label>
        <br />
        <asp:ImageButton ID="ImageButton2" runat="server" BorderStyle="Ridge" 
            Height="38px" ImageUrl="~/img/cart_2.png" style="margin-bottom: 0px" 
            Width="95%" onclick="ImageButton2_Click" />
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <p align="center" style="background-color: #CCFF99">
        <asp:Label ID="Label1" runat="server" Text="MY CART" 
            style="color: #000066; text-decoration: underline; font-weight: 700; background-color: #CCFF99"></asp:Label>
    </p>
<p align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            Height="159px" onselectedindexchanged="GridView1_SelectedIndexChanged" 
            Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" 
            BorderWidth="1px" CellPadding="3">


            <AlternatingRowStyle BackColor="#DCDCDC" />


            <Columns>

   <asp:TemplateField HeaderText="Product Id">
        <ItemTemplate>
            <asp:Label ID="lbl_pid" runat="server" Text='<% # Eval("pitemid") %>'></asp:Label>
        </ItemTemplate>
        
        </asp:TemplateField>



        <asp:TemplateField HeaderText="Product Name">
        <ItemTemplate>
            <asp:Label ID="lbl_pname" runat="server" Text='<% # Eval("pname") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Product Price">
        <ItemTemplate>
            <asp:Label ID="lbl_p_price" runat="server" Text='<% # Eval("pprice") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

     
          <asp:TemplateField HeaderText="Quantity">
        <ItemTemplate>
            <asp:TextBox ID="Txt_product_qty"   width="50px" runat="server" Text='<% # Eval("pqty") %>'></asp:TextBox>
        </ItemTemplate>
        </asp:TemplateField>
       
                <asp:CommandField HeaderText="delete order" SelectText="delete" 
                    ShowSelectButton="True" />
       
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
        <br />
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center">
        <asp:Button ID="Button6" runat="server" Text="SHOW BILL AMMOUNT" 
            onclick="Button6_Click" 
            style="color: #FFFFFF; font-weight: 700; background-color: #6A18BB" />
    </p>
    <p align="center">
        &nbsp;<asp:Label ID="Label3" runat="server" 
            style="font-weight: 700; text-decoration: underline" 
            Text="YOUR TOTAL BILL AMMOUNT IS :"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            
            style="color: #0000CC; font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: x-large;"></asp:Label>
        <br />
    </p>
</asp:Content>

