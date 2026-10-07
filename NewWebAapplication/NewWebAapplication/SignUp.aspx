<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="NewWebAapplication.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
      .style1{
          height:400px;
      }
        .auto-style8 {
            height: 515px;
            width: 100%;
        }
        .auto-style9 {
            height: 65px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="menu">
    
        <%-- =================================================================================== --%>
        <ContentTemplate>
            <table class=auto-style8 style="font-family:Serigf; border-style: none; background-color: #371F55; color: #FFFFFF;" align="center">
            <tr>
                <td align="center" colspan="2" style="color:White; font-weight:bold; font-size: x-large;">Sign Up for Your New Account</td>
            </tr>
            <tr>
                <td align="right">
                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" ForeColor="White">User Name:</asp:Label>
             </td>
              <td>
                  <asp:TextBox ID="UserName" runat="server" placeholder="Enter User Name" ForeColor="Black" BorderStyle="None"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard3">*</asp:RequiredFieldValidator>
             </td>
         </tr>

             <tr>
               <td align="right">
                 <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" ForeColor="White">Password:</asp:Label>
               </td>
                <td>
                  <asp:TextBox ID="Password" runat="server" placeholder="Enter Password" ForeColor="Black" TextMode="Password" BorderStyle="None"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard3">*</asp:RequiredFieldValidator>
               </td>
            </tr>

            <tr>
                <td align="right">
                  <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword" ForeColor="White">Confirm Password:</asp:Label>
                </td>
                 <td>
                   <asp:TextBox ID="ConfirmPassword" runat="server" ForeColor="Black" TextMode="Password" BorderStyle="None"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard3">*</asp:RequiredFieldValidator>
                </td>
           </tr>

            <tr>
                <td align="center" colspan="2" class="auto-style9">
                  <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."></asp:CompareValidator>
                </td>
            </tr>
             <tr>
                <td align="center" colspan="2" style="color:Red;" class="auto-style9">
                  <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                </td>
             </tr>
              <tr>
                  <td></td>
                  <td>
                    <asp:Button ID="Button1" runat="server" Text="Create User" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Monocpase" ForeColor="#371F55" Height="27px" Width="159px" OnClick="Button1_Click" />
                  </td>
              </tr>

        </table>
        </ContentTemplate>
        
</div>
</asp:Content>
