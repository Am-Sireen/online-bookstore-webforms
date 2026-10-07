<%@ Page Title="" Language="C#" MasterPageFile="~/adminPages/Site2.Master" AutoEventWireup="true" CodeBehind="insert.aspx.cs" Inherits="NewWebAapplication.adminPages.insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 508px;
            height: 464px;
        }
        .auto-style2 {
            width: 270px;
        }
        .auto-style3 {
            height: 64px;
        }
        .auto-style4 {
            
            height: 64px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            height: 64px;
            width: 94px;
        }
        .auto-style7 {
            width: 508px;
            height: 383px;
            text-align: center;
        }
        .auto-style8 {
            width: 683px;
        }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" cellspacing="4" class="auto-style7" style="background-color: #524269">
    <tr>
       <td class="auto-style6" style="background-color: #524269; color: #FFFFFF;">BookName</td>
         <td class="auto-style2" style="background-color: #DEDEDE; border-style: solid; border-color: #DEDEDE">
            <asp:TextBox ID="BookNameTextBox" runat="server"></asp:TextBox>
        </td>
        
    </tr>
    <tr>
        <td style="background-color: #524269; color: #FFFFFF;">Category</td>
        <td class="auto-style8" style="background-color: #DEDEDE; border-style: solid; border-color: #DEDEDE">
            <asp:DropDownList ID="CategoryDropDownList" runat="server">
            </asp:DropDownList>
        </td>
        
    </tr>
    <tr>
        <td style="background-color: #524269; color: #FFFFFF;">Author</td>
        <td class="auto-style2" style="background-color: #CCCCCC; border-color: #CCCCCC">
            <asp:DropDownList ID="AuthorDropDownList" runat="server" Height="16px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="background-color: #524269; color: #FFFFFF;">Price</td>
        <td class="auto-style2" style="background-color: #DEDEDE; border-style: solid; border-color: #DEDEDE">
            <asp:TextBox ID="PriceTextBox" runat="server"></asp:TextBox>
        </td>
        
    </tr>
    <tr>
        <td style="background-color: #524269; color: #FFFFFF;">Picture</td>
        <td class="auto-style2" style="background-color: #CCCCCC; border-color: #CCCCCC">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="216px" />
        </td>
    </tr>
    <tr>
        <td style="background-color: #524269; " class="auto-style5">
            <br />
        </td>
        <td class="auto-style2" style="background-color: #DEDEDE; border-style: solid; border-color: #DEDEDE">
            <asp:Button ID="Button1" runat="server" Text="Save" Width="92px" OnClick="Button1_Click" BorderColor="#524269" BorderStyle="Double" />
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" ForeColor="#524269"></asp:Label>
        </td>
        
    </tr>
</table>
</asp:Content>
