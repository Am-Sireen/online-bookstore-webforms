<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="buy.aspx.cs" Inherits="NewWebAapplication.buy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style8 {
            height: 740px;
        }

        .auto-style9 {
            width: 100%;
            height: 665px;
        }

        .auto-style10 {
            text-align: right;
        }

    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
         <table align="center" cellspacing="3" style="border-style: none; background-color: #371F55; color: #FFFFFF;" aria-orientation="horizontal" class="auto-style9" >
        
        <tr>
            <td colspan="3" style="color: #FFFFFF;" class="menu"><strong style="color: #FFFFFF; font-size: 35px; font-family: 'Baskerville Old Face';">Please insert your details </strong></td>
        </tr>
        <tr>
            <td style="color: #FFFFFF;" class="auto-style10">ID:</td>
            <td  style="color: #FFFFFF;" class="menu">
                <asp:TextBox ID="idTextBox" runat="server" AutoPostBack="True" OnTextChanged="idTextBox_TextChanged"></asp:TextBox>
            </td>
            <td style="color: #FFFFFF;" ">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="idTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  style="color: #FFFFFF;" class="auto-style10">Full Name:</td>
            <td  style="color: #FFFFFF;" class="menu">
                <asp:TextBox ID="fullNameTextBox" runat="server"></asp:TextBox>
            </td>
            <td style="color: #FFFFFF;" ">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fullNameTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  style="color: #FFFFFF;" class="auto-style10">E-mail:</td>
            <td style="color: #FFFFFF;" class="menu">
            <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                <br />
            </td>
            <td style="color: #FFFFFF;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="emailTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #FFFFFF;" class="auto-style10">Phone Number:</td>
            <td style="color: #FFFFFF;" class="menu">
                <asp:TextBox ID="phoneTextBox" runat="server"></asp:TextBox>
            </td>
            <td style="color: #FFFFFF;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="phoneTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #FFFFFF;" class="auto-style10">Country:</td>
            <td style="color: #FFFFFF;" class="menu">
                <asp:DropDownList ID="countryDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="countryDropDownList_SelectedIndexChanged" ForeColor="#43305A">
                </asp:DropDownList>
            </td>
            <td style="color: #FFFFFF;">
                </td>
        </tr>
        <tr>
            <td style=" color: #FFFFFF;" class="auto-style10">City:</td>
            <td style=" color: #FFFFFF;" class="menu">
                <asp:DropDownList ID="cityDropDownList" runat="server" ForeColor="Black">
                </asp:DropDownList>
            </td>
            <td style="color: #FFFFFF;">
                </td>
        </tr>
        <tr>
            <td style="color: #FFFFFF;" class="auto-style10">Postal Box number:</td>
            <td style="color: #FFFFFF;" class="menu">
                <asp:TextBox ID="boxTextBox" runat="server"></asp:TextBox>
            </td>
            <td style="color: #FFFFFF;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="boxTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  style="color: #FFFFFF;" class="auto-style10">Card Number:</td>
            <td  style=" color: #FFFFFF;" class="menu">
                <asp:TextBox ID="cardTextBox" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="color: #FFFFFF;" ">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="cardTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td style="color: #FFFFFF;" class="auto-style10">CIV:</td>
            <td style="color: #FFFFFF;" class="menu">
                <asp:TextBox ID="civTextBox" runat="server"></asp:TextBox></td>

            <td style="color: #FFFFFF;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="civTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #FFFFFF;" class="auto-style10">
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="169px" OnClick="Button1_Click" BorderStyle="None" Font-Bold="True" ForeColor="#371F55" BorderColor="#371F55" Height="24px" />
            </td>
            <td style="color: #FFFFFF;" class="menu">&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="#FFFFFF"></asp:Label>
                &nbsp;</td>
            <td></td>
        </tr>
    </table>
    
</asp:Content>
