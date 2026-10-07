<%@ Page Title="" Language="C#" MasterPageFile="~/adminPages/Site1.Master" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="NewWebAapplication.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    .auto-style3 {
        margin-bottom: 0px;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="menu">
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Seren's library for progress in life & development for a better future." Font-Size="25pt" ForeColor="White" Font-Names="Castellar" ></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Outset" BorderWidth="10px" Font-Size="16pt" ForeColor="Black" Height="43px" Width="199px" CssClass="auto-style3" Font-Bold="False" Font-Underline="False" OnClick="LinkButton1_Click">GO SHOPPING</asp:LinkButton>
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
