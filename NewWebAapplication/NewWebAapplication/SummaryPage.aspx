<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="SummaryPage.aspx.cs" Inherits="NewWebAapplication.Summary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 362px;
        }
        .auto-style10 {
            width: 582px;
        }
        .auto-style11 {
            top: inherit;
            width: 800px;
        }
        .auto-style12 {
            width: 601px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <asp:DataList ID="DataList1" runat="server" BackColor="#371F55" Width="100%">
        <ItemTemplate>
            <table>
                <tr>
                    <td class="auto-style10">
                        <asp:Image ID="Image1" runat="server"  imageUrl='<%# Eval("Picture","~/pics/{0}")  %>' Height="457px" Width="297px" BorderColor="#F7CE6B" BorderStyle="Double" BorderWidth="12px" />
                    </td>
                     <td style="font-size: xx-large;  color: #F7CE6B;" class="auto-style11">
                   <font>Book Name:<br />
                         <br />
                         </font><asp:Label ID="Label1" runat="server" Text='<%# Bind("BookName") %>' Font-Names="Georgia" Font-Size="XX-Large" ForeColor="White"></asp:Label> </td>
                </tr>
                    <tr>
                        <td class="auto-style10"></td>
                     <td style="font-size: x-large; color: #F7CE6B;" class="auto-style12">
                   <font>By: </font><asp:Label ID="Label2" runat="server" Text='<%# Bind("Author") %>' Font-Names="Georgia" Font-Size="X-Large" ForeColor="White"></asp:Label> 
                         <br />
                         <br />
                         <br />
                        </td>
                   </tr>
                    <caption>
                        <br />
                        <br />
                        <tr>
                            <td class="auto-style10"></td>
                            <td class="auto-style11" style="font-size: x-large;  color: #F7CE6B;"><font>Rating: </font><asp:Label ID="Label3" runat="server" Font-Names="Georgia" Font-Size="X-Large" ForeColor="White" Text='<%# Bind("Rating") %>'></asp:Label>
                                <br />
                                <br />
                                <br />
                            </td>
                        </tr>
                </caption>
                       <caption>
                           <br />
                           <br />
                           <tr>
                               <td class="auto-style10"></td>
                               <td style="font-size: x-large; color: #F7CE6B;" class="auto-style11"><font>Summary:<br /></font> <asp:Label ID="Label4" runat="server" Font-Names="Serif" Font-Size="21pt" ForeColor="White" Text='<%# Bind("Summary") %>'></asp:Label>
                                   <br />
                                   <br />
                                   <br />
                                   <br />
                               </td>
                           </tr>
                </caption>

                
                
            </table>
        </ItemTemplate>
    </asp:DataList> 
</asp:Content>
