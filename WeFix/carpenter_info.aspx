﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="carpenter_info.aspx.cs" Inherits="WeFix.carpenter_info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div style="margin-top:50px;">
    <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center"  Width="1100px" Height="126px" CellPadding="10" CellSpacing="10" ShowHeaderWhenEmpty="True" BackColor="#F6F6F6" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" ForeColor="Black" GridLines="None" OnRowCommand="GridView1_RowCommand">
        <Columns>
            
            <asp:ButtonField Text="appoint" HeaderText="Book Appointment" CommandName="Appoint" >
                <ControlStyle BorderColor="#003300" ForeColor="#CC3300" Width="60px" />
                <HeaderStyle HorizontalAlign="Center" />
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
