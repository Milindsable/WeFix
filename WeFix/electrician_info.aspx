<%@ Page Title="" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="electrician_info.aspx.cs" Inherits="WeFix.electrician_info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div style="margin-top:50px;">
    <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center"  Width="1100px" Height="126px" CellPadding="15" CellSpacing="15" ShowHeaderWhenEmpty="True" BackColor="#F6F6F6" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" ForeColor="Black" GridLines="None">
        <Columns>
            <asp:ButtonField Text="appoint" HeaderText="Book Appointment" >
            <ControlStyle BorderColor="#003300" ForeColor="#CC3300" Width="60px" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:ButtonField>
        </Columns>
       

        <EditRowStyle BackColor="#C4BBF0" BorderStyle="Solid" BorderWidth="2px" />
        <HeaderStyle BackColor="#B2A4FF" BorderStyle="Solid" BorderWidth="2px" ForeColor="#52006A" />
        <PagerStyle BackColor="#FF0066" />
        <RowStyle BorderStyle="Solid" BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" />
        <SelectedRowStyle BorderStyle="Solid" BorderWidth="2px" />
       

    </asp:GridView>
</div>

</asp:Content>
