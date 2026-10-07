<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="NewWebAapplication.logIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style7 {
            text-align: center;
            width: 38%;
            height: 220px;
            background-color: #371F55;
        }
        .auto-style8 {
            width: 264px;
        }
         .auto-style9 {
             height: 80px;
             display: inline-block;
             vertical-align:middle;
             width: 40%;
             color: #FFFFFF;
             text-align:center;
             font-size:x-large;
             font-family:Gill Sans;
         }
    .auto-style10 {
        width: 100%;
        direction: ltr;
             height: 131px;
         }
         .auto-style12 {
             text-align: center;
             width: 507px;
             height: 411px;
             display: inline-block;
             vertical-align: middle;
             background-color: #371F55;
         }
         .auto-style15 {
             width: 200px;
             text-align: left;
             height: 96px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="menu" style="background-color: #371F55">

    
    <table class="auto-style12" dir="ltr">
    <tr>
        <td class="auto-style9">Log in</td>
    </tr>
    <tr>
        <td class="auto-style15" style="color: #FFFFFF">User name :<br />
&nbsp;<asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" Height="20px" Width="249px"></asp:TextBox>

        </td>
        
    </tr>
    <tr>
        <td class="auto-style15"style="color: #FFFFFF">Password :<br />
&nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" BorderStyle="None" Height="20px" Width="250px"></asp:TextBox>

        </td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="2" style="color: #FFFFFF">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="128px" BorderColor="#371F55" BorderStyle="Double" Font-Bold="True" ForeColor="#371F55" Height="33px" />
            <br />
            Dont have an account yet?
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="True" ForeColor="White" PostBackUrl="~/SignUp.aspx" OnClick="LinkButton1_Click">Sign up</asp:LinkButton>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>

        </td>
    </tr>
</table>
        <br />
        <br />
        <br />
        <br />
        </div>
</asp:Content>
