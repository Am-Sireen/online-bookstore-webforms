<%@ Page Title="" Language="C#" MasterPageFile="~/adminPages/Site2.Master" AutoEventWireup="true" CodeBehind="ViewItems.aspx.cs" Inherits="NewWebAapplication.adminPages.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">--%>
        <ContentTemplate>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing"  OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" Height="1018px" OnRowCommand="GridView1_RowCommand" ShowFooter="True" Width="800px" HorizontalAlign="Justify" style="text-align: center" GridLines="Horizontal" DataKeyNames="index" Fore-color="White" CellPadding="4" ForeColor="White" >
      <Columns>

          <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True"
                        selectText="select"
                        deleteText="delete"
                        editText="Edit"
                       CancelText  ="cancel" ItemStyle-ForeColor="White" />
        
                    <asp:TemplateField HeaderText="index">
                        <ItemTemplate>
                            <asp:Label ID="indexLabel" runat="server" Text='<%# Bind("index") %>' ForeColor="White"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="indexEditLabel" runat="server" Text='<%# Bind("index") %>' ForeColor="White"></asp:Label>

                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:Button ID="Button1" runat="server" Text="Save"  CommandName="save"  backcolor="#F7CE6B" Font-Bold="True" Width="127px" BorderStyle="None" Height="35px" />

                        </FooterTemplate>

                   </asp:TemplateField>
                    

                     <asp:TemplateField HeaderText="Book Name">
                        <ItemTemplate>
                            <asp:Label ID="BookNameLabel" runat="server" Text='<%# Bind("BookName") %>' ForeColor="White"></asp:Label>
                        </ItemTemplate>
                        
                         <EditItemTemplate>
                           <asp:TextBox ID="BookNameEditTextBox" runat="server" Text='<%# Bind("BookName") %>' BorderStyle="None"></asp:TextBox>
                         </EditItemTemplate>
                         <FooterTemplate>
                             <asp:TextBox ID="BookNameFooterTextBox" runat="server" BackColor="#F7CE6B" BorderColor="#F7CE6B" BorderStyle="Solid"></asp:TextBox>
                         </FooterTemplate>

                   </asp:TemplateField>

                    
                     <asp:TemplateField HeaderText="Category">
                        <ItemTemplate>
                            <asp:Label ID="CategoryLabel" runat="server" Text='<%# Bind("Category") %>' ForeColor="White"></asp:Label>
                        </ItemTemplate>
                         <EditItemTemplate>
                             <asp:DropDownList ID="CategoryEditDropDownList" runat="server" DataTextField="CategoryName"></asp:DropDownList>

                         </EditItemTemplate>

                         <FooterTemplate>
                           <asp:DropDownList ID="CategoryFooterDropDownList" runat="server" DataTextField="CategoryName" BackColor="#F7CE6B"></asp:DropDownList>

                         </FooterTemplate>
                   </asp:TemplateField>
                   



                    <asp:TemplateField HeaderText="Author">
                        <ItemTemplate>
                            <asp:Label ID="AuthorLabel" runat="server" Text='<%# Bind("Author") %>' ForeColor="White"></asp:Label>
                        </ItemTemplate>
                         <EditItemTemplate>
                             <asp:DropDownList ID="AuthorEditDropDownList" runat="server" DataTextField="AuthorName"></asp:DropDownList>

                         </EditItemTemplate>

                         <FooterTemplate>
                           <asp:DropDownList ID="AuthorFooterDropDownList" runat="server" DataTextField="AuthorName" BackColor="#F7CE6B"></asp:DropDownList>

                         </FooterTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                             <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("Price") %>' ForeColor="White"></asp:Label>
                        </ItemTemplate>

                        <EditItemTemplate>
                          <asp:TextBox ID="PriceEditTextBox" runat="server" Text='<%# Bind("Price") %>' BorderStyle="None"></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>
                             <asp:TextBox ID="PriceFooterTextBox" runat="server" BackColor="#F7CE6B" BorderColor="#F7CE6B" BorderStyle="Solid"></asp:TextBox>
                         </FooterTemplate>
                    </asp:TemplateField>

                    


                     <asp:TemplateField HeaderText="Picture">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Picture","~/pics/{0}")  %>' Width="141px" Height="215px" /> 
                        </ItemTemplate>
                         <EditItemTemplate>
                           <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Picture","~/pics/{0}")  %>' Width="142px" Height="215px" />
                             <asp:FileUpload ID="FileUpload1" runat="server" />

                         </EditItemTemplate>
                         <FooterTemplate>
                             <asp:FileUpload ID="PictureFooterFileUpload" runat="server" BackColor="#F7CE6B" Height="33px" Width="287px" BorderColor="#F7CE6B" BorderStyle="Solid" />
                         </FooterTemplate>
                    </asp:TemplateField>
      </Columns>
        
        <FooterStyle BackColor="#371F55" ForeColor="#333333" />
        <HeaderStyle BackColor="#371F55" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#371F55" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#F7CE6B" Font-Bold="True" ForeColor="White" />
        <SortedAscendingHeaderStyle BackColor="#371F55" />
        
       
    </asp:GridView>
            </ContentTemplate>
   <%-- </asp:UpdatePanel>--%>
</asp:Content>
