<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_admin.master" AutoEventWireup="true" CodeFile="electonics.aspx.cs" Inherits="electonics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" runat="server" 
    contentplaceholderid="ContentPlaceHolder4">
    <p>
                <asp:Button ID="Button6" runat="server" BackColor="#6600CC" 
                    style="color: #FFFFFF; font-weight: 700" Text="ADD " Width="126px" />
                </p>
<p>
                <asp:Button ID="Button7" runat="server" BackColor="#6600CC" 
                    style="font-weight: 700; color: #FFFFFF" Text="EDIT " Width="126px" />
                </p>
<p>
                <asp:Button ID="Button8" runat="server" BackColor="#6600CC" 
                    style="font-weight: 700; color: #FFFFFF" Text="DELETE" Width="125px" />
                </p>
<p>
                <asp:Button ID="Button9" runat="server" BackColor="#6600CC" 
                    style="font-weight: 700; color: #FFFFFF" Text="Check Status" 
                    Width="126px" />
            </p>
</asp:Content>


