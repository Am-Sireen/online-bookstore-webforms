<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="NewWebAapplication.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 66px;
        }
        .style1{
            text-align:center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main" style="align-content:center; text-align:center">
    
                 <div id="search" style="color: #FFFFFF; font-family: 'Times New Roman', Times, serif" class="auto-style4">
                 <br />&nbsp;&nbsp;&nbsp;&nbsp; 
                 <br />
                   &nbsp;&nbsp;&nbsp;&nbsp; 
            Search : <asp:TextBox ID="TextBox1" runat="server" placeholder="Search for books..." Width="440px" Height="19px" BorderColor="#371F55" BorderStyle="Solid"></asp:TextBox>
            &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="28px" ImageUrl="~/pics/search icon.png" Width="27px" OnClick="ImageButton1_Click" />
         
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
                Book Category : <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="175px" Font-Names="serif" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                         <asp:ListItem>Book Category</asp:ListItem>
                         <asp:ListItem>Motivation</asp:ListItem>
                         <asp:ListItem>Leadership</asp:ListItem>
                         <asp:ListItem>Finance</asp:ListItem>
                         <asp:ListItem>Psychology</asp:ListItem>
                         <asp:ListItem>Self Help</asp:ListItem>
                         <asp:ListItem>Human Development</asp:ListItem>
                </asp:DropDownList>
            </div>
                 <br />
                 <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="monospace" Font-Size="XX-Large" ForeColor="#371F55"></asp:Label>
        <br />

        <div id="datalist" style="text-align:center">
        <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" CellSpacing="60" RepeatColumns="5" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table style="text-align:center">
               <tr>
                    <td class="auto-style12">
                        <br />
                      <asp:Label ID="BookNameLabel" runat="server" Text='<%# Bind("BookName") %>' Font-Names="Castellar" Font-Bold="True"></asp:Label>
                        <br />
                        
                   </td>
               </tr>

                <tr>
                    <td class="auto-style13" >
                        <asp:Image ID="Image1" runat="server" Height="345px" imageUrl='<%# Eval("Picture","~/pics/{0}")  %>' Width="205px" BorderStyle="Solid" BorderColor="Black" BorderWidth="1.5px" />
                    </td>
                </tr>
                <tr>
                   <td class="auto-style13" ><asp:Label ID="indexLabel" runat="server" Text='<%# Bind("index") %>' Font-Size="1px" Visible="False"></asp:Label>
                </tr>

                    <tr>
                  <td class="auto-style11">
                      <asp:Image ID="Image2" runat="server" ImageUrl="~/pics/shekel icon1.png" Height="16px" Width="16px" /><asp:Label ID="priceLabel" runat="server" Text='<%# Bind("Price") %>' Font-Size="20px"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                      <asp:ImageButton ID="AddCartImageButton" runat="server" ImageUrl="~/pics/shop bag.png" />
                  </td>

                    <%--<td class="auto-style12"> 
                        
                    </td>--%>
                </tr>
                    <tr>
                        <td class="auto-style12">
                            <br />
                            <asp:LinkButton ID="LinkButton1" runat="server" Text="Summary" OnClick="LinkButton1_Click"  ForeColor="Black" CommandArgument='<%# Bind(&quot;index&quot;) %>'></asp:LinkButton>
                        </td>
                    </tr>
                    <caption>
                        <hr style="color: #000000" />
                    </caption>
                </table>
            </ItemTemplate>
        </asp:DataList>
       </div>
    </div>
</asp:Content>
