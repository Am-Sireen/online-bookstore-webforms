<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="thankYou.aspx.cs" Inherits="NewWebAapplication.thankYou" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width: 330px;
            background-color: #C0C0C0;
            height: 351px;
            margin-bottom: 122px;
        }
        .auto-style3 {
            width: 459px;
        }
        .auto-style5 {
            width: 100%;
        height: 294px;
             
         }
        .auto-style6 {
            color: #CC0000;
        }
        .auto-style8 {
            height: 73px;
            width: 760px;
            text-align: center;
        }
        .auto-style7 {
            color: #3333FF;
        }
        .auto-style14 {
        width: 100%;
        height: 241px;
        text-align: center;
        margin-bottom: 122px;
        background-color: #C0C0C0;
    }
        .auto-style9 {
            color: #FFFFFF;
        }
        .auto-style11 {
            font-size: large;
        }
        .auto-style13 {
            color: #CC0000;
            font-size: large;
        }
        .auto-style12 {
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style10 {
            color: #000000;
            font-size: large;
        }
         .auto-style15 {
             color: #3333FF;
             display: inline-block;
             vertical-align: middle;
         }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14" align="center" >
        <tr>
            <asp:Image ID="Image1" runat="server" />
         <tr>

            <td class="auto-style5" style="background-color: #FFFFFF; color: #000000;">
                <br />
                <span class="auto-style9" style="color: #000000"><span class="auto-style11">
                <br />
                <br />
                <br />
                FullName:</span><strong><asp:Label ID="Label1" runat="server" ForeColor="#46345E" Text="Label" CssClass="auto-style11"></asp:Label>
                </strong>
                <br />
                <br class="auto-style11" />
                <span class="auto-style11">Order number :</span></span><span class="auto-style13"> </span>
                <strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style13" Text="Label" ForeColor="#46345E"></asp:Label>
                </strong>&nbsp;<br class="auto-style13" />
                <br />
                <span class="auto-style12" style="color: #000000">Total price :</span><span class="auto-style13">
                <strong>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style13" Text="Label" ForeColor="#46345E"></asp:Label>
                </strong>
                </span>
                <br class="auto-style13" />
                <br class="auto-style13" />
                <span class="auto-style12" style="color: #000000">&nbsp;your order will be send to </span><span class="auto-style6"> </span>
                <strong>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style13" Text="Label" ForeColor="#46345E"></asp:Label>
                </strong>
                <span class="auto-style10" style="color: #46345E;">&nbsp; ,&nbsp;</span><span class="auto-style13"> </span>
                <strong>
                <asp:Label ID="Label5" runat="server" CssClass="auto-style13" Text="Label" ForeColor="#46345E"></asp:Label>
                </strong>,<span class="auto-style13">&nbsp;</span><span class="auto-style9" style="color: #000000">
                <br />
                <br class="auto-style11" />
                <span class="auto-style11">box : </span> </span>
                <strong>
                <asp:Label ID="Label6" runat="server" CssClass="auto-style10" Text="Label" ForeColor="#46345E"></asp:Label>
                </strong>
                <span class="auto-style12">&nbsp; 
                <br />
                <br />
                <span class="auto-style9" style="color: #000000">
                 Date : <strong> <asp:Label ID="Label7" runat="server" CssClass="auto-style15" Text="Label" ForeColor="#46345E" Font-Italic="False" Font-Strikeout="False" Height="22px" Width="65px" Font-Size="Large"></asp:Label>
                </strong>
               </span> </span>
                <br class="auto-style12" />
                <br class="auto-style12" />
                <span class="auto-style12" ForeColor="#D3C889" style="color: #000000">Your Order Will Arrive In Tow Weeks</span><br class="auto-style11" />
                <br />
                <br />
                <asp:Image ID="Image3" runat="server" Height="396px" ImageUrl="~/pics/2thank.png" Width="620px" />
                <br />
                <br />
                <br />
                <br />
             </td>
        </tr>
    </table>
</asp:Content>
