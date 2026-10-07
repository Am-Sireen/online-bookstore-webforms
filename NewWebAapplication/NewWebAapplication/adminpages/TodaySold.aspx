<%@ Page Title="" Language="C#" MasterPageFile="~/adminPages/Site2.Master" AutoEventWireup="true" CodeBehind="TodaySold.aspx.cs" Inherits="NewWebAapplication.adminPages.TodaySold" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
   
        .auto-style3 {
            margin-top: 0px;
        }
   
        .menu{
            align-content:center;
            text-align:center
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="auto-style3">
         <br />
        <br />   
        <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="White"></asp:Label>
        
        
         <div class="menu">
        
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True" Height="301px" Width="832px" GridLines="both" CssClass="auto-style3">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" selectText="Select"  ControlStyle-ForeColor="White" DeleteText="Delet" EditText="Edit" InsertText="Insert" UpdateText="Update" NewText="New" />
                                        
                    <asp:TemplateField HeaderText="OrderNumber" ControlStyle-ForeColor="White">
                        <ItemTemplate>
                            <asp:Label ID="orderNumberLabel" runat="server" Text='<%# Bind("orderNumber") %>' ForeColor="White"></asp:Label>
                        </ItemTemplate>
                   </asp:TemplateField>
                    
                     <asp:TemplateField HeaderText="Total" ControlStyle-ForeColor="White">
                        <ItemTemplate>
                            <asp:Label ID="totalLabel" runat="server" Text='<%# Bind("total") %>' ForeColor="White"></asp:Label>
                        </ItemTemplate>
                        
                         <FooterTemplate>
                            <asp:Label ID="SumTotalLabel" runat="server" Text=""></asp:Label>
                         </FooterTemplate>
                   </asp:TemplateField>

                </Columns>

                <SelectedRowStyle BackColor="#F7CE6B" />

            </asp:GridView>
         </div>
        </div>
</asp:Content>
