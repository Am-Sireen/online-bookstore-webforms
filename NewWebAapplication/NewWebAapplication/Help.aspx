<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="NewWebAapplication.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style type="text/css">
       .title
       {
           background-color:#371F55;
           width:100%;
           height:500px;
           text-align: center;
       }
      
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Title" class="title">
    
        <br />
        <br />
    
        <asp:Label ID="Label1" runat="server" Text="Help Center" Font-Size="40pt" ForeColor="White"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:TextBox ID="ProblemTextBox" runat="server" Height="28px" Width="592px" placeHolder="What do you need help with?" BorderStyle="None"></asp:TextBox>
        <br />
        <br />
        <br />
        &nbsp;<asp:TextBox ID="EmailTextBox" runat="server" Height="28px" Width="592px" placeHolder="write your e-mail" BorderStyle="None"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="Medium" Height="28px" Text="submit" Width="138px" OnClick="Button1_Click" />
    </div>
    
</asp:Content>
