<%@ Page Title="" Language="C#" MasterPageFile="~/adminPages/Site2.Master" AutoEventWireup="true" CodeBehind="Author.aspx.cs" Inherits="NewWebAapplication.adminPages.Author" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowEditing="GridView2_RowEditing"  OnRowDeleting="GridView2_RowDeleting" OnRowUpdating="GridView2_RowUpdating" Height="501px" OnRowCommand="GridView2_RowCommand" ShowFooter="True" Width="480px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" BackColor="White" HorizontalAlign="Center" style="text-align: center" BorderColor="White" BorderWidth="2px" CellPadding="3" BorderStyle="Ridge" GridLines="None" CellSpacing="1">
         <Columns>
                <asp:CommandField ShowSelectButton="true" ShowEditButton="true" SelectText="Select" EditText="Edit " CancelText="Cancel" DeleteText="Delete" UpdateText="Update"

                    ShowDeleteButton="True" />
             
                <asp:TemplateField  HeaderText="index">

                    <ItemTemplate>
                        <asp:Label ID="indexLable" runat="server" Text='<%# Bind("index")%>'></asp:Label>
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:Label ID="indexEditLable" runat="server" Text='<%# Bind("index")%>'></asp:Label>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="SaveButton" runat="server" Text="Save" CommandName="save" BackColor="#DEDEDE" BorderColor=" #F7CE6B" BorderStyle="Double" Width="80px" />
                    </FooterTemplate>
                     </asp:TemplateField>

             <asp:TemplateField  HeaderText="AuthorName">

                    <ItemTemplate>
                        <asp:Label ID="AuthorNameLable" runat="server" Text='<%# Bind("AuthorName")%>'></asp:Label>
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox ID="EditAuthorNameTextBox" runat="server" BackColor="#DEDEDE" BorderColor="#FF9966" BorderStyle="Solid"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterAuthorNameTextBox" runat="server" BackColor="#DEDEDE" BorderColor="#F7CE6B" BorderStyle="Double"></asp:TextBox> 
                    </FooterTemplate>
                     </asp:TemplateField>

             </Columns>
          <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
         <HeaderStyle BackColor="#371F55" Font-Bold="True" ForeColor="#E7E7FF" />
         <PagerStyle ForeColor="Black" HorizontalAlign="Right" BackColor="#C6C3C6" />
          <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
          <SelectedRowStyle ForeColor="White" Wrap="True" BackColor="#9471DE" Font-Bold="True" />
          </asp:GridView>

</asp:Content>
