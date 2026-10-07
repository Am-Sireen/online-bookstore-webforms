<%@ Page Title="" Language="C#" MasterPageFile="~/adminPages/Site2.Master" AutoEventWireup="true" CodeBehind="SoldInDate.aspx.cs" Inherits="NewWebAapplication.adminPages.SoldInDate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div align ="center" style="font-size: x-large; background-color: #371F55;">
        <p style="color: #FFFFFF; font-size: large;">&nbsp;</p>
         <p style="color: #FFFFFF; font-size: large;">Sold In Date</p>
    </div>
    <div align="center" style="background-color: #371F55">
        <br />
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="253px" Width="443px" OnSelectionChanged="Calendar1_SelectionChanged" NextPrevFormat="FullMonth" BorderWidth="1px">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Size="8pt" ForeColor="#333333" Font-Bold="True" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" Font-Bold="True" Font-Size="12pt" ForeColor="#371F55" BorderColor="Black" BorderWidth="4px" />
        <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>

        <br /><br />
        <hr />
        <br />

        <br />

     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Height="221px" Width="442px" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField ConvertEmptyStringToNull="False" DataField="orderNumber" HeaderText="Order Number" />
        <asp:BoundField DataField="id" HeaderText="ID" />
        <asp:BoundField DataField="PayDate" HeaderText="Pay Date" DataFormatString="{0:dd/MM/yyyy}" />
        <asp:BoundField DataField="total" HeaderText="Total" />
    </Columns>
    <FooterStyle BackColor="#F7CE6B" />
    <HeaderStyle BackColor="#371F55" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
</asp:GridView>
        <br /><br />

        <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
        </div>
</asp:Content>
