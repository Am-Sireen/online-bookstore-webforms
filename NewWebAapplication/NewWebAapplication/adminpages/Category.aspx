<%@ Page Title="" Language="C#" MasterPageFile="~/adminPages/Site2.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="NewWebAapplication.adminPages.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" Height="577px" OnRowCommand="GridView1_RowCommand" ShowFooter="True" Width="474px" BackColor="White" BorderColor="White" BorderWidth="2px" CellPadding="3" GridLines="None" HorizontalAlign="Center" BorderStyle="Ridge" CellSpacing="1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
                        <asp:Button ID="SaveButton" runat="server" Text="Save" CommandName="save" BackColor="#CCCCCC" BorderColor="#F7CE6B" BorderStyle="Double" Font-Bold="True" Width="81px" />
                    </FooterTemplate>
                     </asp:TemplateField>

             <asp:TemplateField  HeaderText="CategoryName">

                    <ItemTemplate>
                        <asp:Label ID="CategoryNameLable" runat="server" Text='<%# Bind("CategoryName")%>'></asp:Label>
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox ID="EditCategoryNameTextBox" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterCategoryNameTextBox" runat="server" BackColor="#DEDEDE" BorderColor="#F7CE6B" BorderStyle="Double"></asp:TextBox> 
                    </FooterTemplate>
                     </asp:TemplateField>

             </Columns>
          <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
          <HeaderStyle BackColor="#503E66" Font-Bold="True" ForeColor="#E7E7FF" />
          <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
          <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
          <SelectedRowStyle BackColor="#9471DE" ForeColor="White" Font-Bold="True" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#594B9C" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#33276A" />
          </asp:GridView>

</asp:Content>
