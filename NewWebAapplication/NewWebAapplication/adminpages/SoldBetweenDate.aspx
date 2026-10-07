<%@ Page Title="" Language="C#" MasterPageFile="~/adminPages/Site2.Master" AutoEventWireup="true" CodeBehind="SoldBetweenDate.aspx.cs" Inherits="NewWebAapplication.adminPages.SoldBetweenDate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 360px;
        }
        .auto-style10 {
            width: 360px;
            height: 49px;
        }
        .auto-style11 {
            width: 358px;
        }
        .auto-style12 {
            width: 358px;
            height: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
    <p style="color: #FFFFFF; font-size: large;">&nbsp;</p>
        <p style="color: #FFFFFF; font-size: large;">Sold between Date</p>
    <table>
        <tr>
            <td class="auto-style11">
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="228px" Width="350px" NextPrevFormat="ShortMonth">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#333333" Font-Bold="True" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" Font-Bold="True" Font-Size="12pt" ForeColor="#5A4A6E" BorderColor="Black" BorderWidth="4px" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                    <WeekendDayStyle Font-Bold="False" />
                </asp:Calendar>
            </td>
            <td class="auto-style9">
                <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="228px" Width="350px" NextPrevFormat="ShortMonth">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#333333" Font-Bold="True" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" Font-Bold="True" Font-Size="12pt" ForeColor="#5A4A6E" BorderColor="Black" BorderWidth="4px" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#F7CE6B"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="#F7CE6B"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2"style="background-color: #F7CE6B" class="menu">
                <asp:Button ID="Button1" runat="server" Text="View Orders" OnClick="Button1_Click" BorderColor="#5A4A6E" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="#F7CE6B" Height="40px" BackColor="#371F55" />
            </td>
        </tr>
    </table>
</div>
    <div align="center">

        
        <br /><br />
        <hr  />
        <br />
        <table >
            <tr>
      <td>

      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderStyle="None" BorderWidth="3px" Width="536px" Height="265px" >
    <Columns>
        <asp:BoundField ConvertEmptyStringToNull="False" DataField="orderNumber" HeaderText="Order Number" />
        <asp:BoundField DataField="id" HeaderText="ID" />
        <asp:BoundField DataField="payDate" HeaderText="Pay Date" DataFormatString="{0:dd/MM/yyyy}" />
        <asp:BoundField DataField="total" HeaderText="Total" />
         <asp:CommandField  ShowSelectButton="True" selectText="View Items" />
    </Columns>
    <FooterStyle ForeColor="#333333" />
    <HeaderStyle BackColor="#371F55" Font-Bold="True" ForeColor="#F7CE6B" />
    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#F7CE6B" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#487575" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#275353" />
</asp:GridView>
        <br /><br />

        <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="#F7CE6B"></asp:Label>
        
          </td>

          <td>
              <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="Horizontal" BackColor="White" BorderStyle="None" BorderWidth="3px" Height="261px" Width="507px">
                  <Columns>
                      <asp:BoundField DataField="BookName" HeaderText="Book Name" />
                      <asp:BoundField DataField="Category" HeaderText="Category" />
                      <asp:BoundField DataField="Author" HeaderText="Author" />
                      <asp:BoundField DataField="Price" HeaderText="Price" />
                      <asp:ImageField DataImageUrlField="Picture" DataImageUrlFormatString="~/pics/{0}" HeaderText="Picture">
                          <ControlStyle Height="50px" Width="50px" />
                      </asp:ImageField>
                  </Columns>
                  <FooterStyle BackColor="White" ForeColor="#333333" />
                  <HeaderStyle BackColor="#371F55" Font-Bold="True" ForeColor="#F7CE6B" />
                  <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="White" ForeColor="#333333" />
                  <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                  <SortedAscendingCellStyle BackColor="#F7F7F7" />
                  <SortedAscendingHeaderStyle BackColor="#487575" />
                  <SortedDescendingCellStyle BackColor="#E5E5E5" />
                  <SortedDescendingHeaderStyle BackColor="#275353" />
              </asp:GridView>

         </td>
             </tr>
            </table>
          
          
          </div>
</asp:Content>
