<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="MyCart.aspx.cs" Inherits="NewWebAapplication.MyCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color: #FFFFFF; text-align:center">
            <asp:GridView ID="GridView1" runat="server" style="align-content:center" AutoGenerateColumns="False"   OnRowDeleting="GridView1_RowDeleting" Width="351px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1"  >
                <Columns>
                   

                    <asp:CommandField ShowDeleteButton="True"  ShowSelectButton="True"
                        selectText="select"
                        deleteText="delete"/>
                    
                   


                    <asp:TemplateField HeaderText="index">
                        <ItemTemplate>
                            <asp:Label ID="indexLabel" runat="server" Text='<%# Bind("index") %>'></asp:Label>
                        </ItemTemplate>
                       

                   </asp:TemplateField>
                    

                     <asp:TemplateField HeaderText="Item Name">
                        <ItemTemplate>
                            <asp:Label ID="BookNameLabel" runat="server" Text='<%# Bind("BookName") %>'></asp:Label>
                        </ItemTemplate>
                        
                         

                   </asp:TemplateField>

                    
                     <asp:TemplateField HeaderText="Author">
                        <ItemTemplate>
                            <asp:Label ID="AuthorLabel" runat="server" Text='<%# Bind("Author") %>'></asp:Label>
                        </ItemTemplate>
                         
                   </asp:TemplateField>
                   
                    <asp:TemplateField HeaderText="For To">
                        <ItemTemplate>
                            <asp:Label ID="CategoryLabel" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                        </ItemTemplate>
                         
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="price">
                        <ItemTemplate>
                             <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Picture">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Picture","~/pics/{0}")  %>' Width="153px" Height="209px" /> 
                        </ItemTemplate>
                         
                    </asp:TemplateField>
                </Columns>

                <SelectedRowStyle BackColor="#371F55"/>

            </asp:GridView>
            </div>
    <br />
 &nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Bold="True" Font-Size="Large" ForeColor="#43305A">Go To Buy</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelTotal" runat="server" ForeColor="#43305A"></asp:Label>
      
</asp:Content>
