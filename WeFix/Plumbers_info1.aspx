<%@ Page Title="" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="Plumbers_info1.aspx.cs" Inherits="WeFix.Plumbers_info1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style>
.product-container 
{
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}

.product-item 
{
  position: relative;
  margin: 10px;
  width: 200px;
  height: 300px;
  overflow: hidden;
}

.product-item img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.3s ease-in-out;
}

.product-item:hover img {
  transform: scale(1.2);
}

.product-info {
  position: absolute;
  bottom: -100%;
  left: 0;
  width: 100%;
  height: 100%;
  padding: 20px;
  background-color: rgba(255, 255, 255, 0.9);
  transition: bottom 0.3s ease-in-out;
}

.product-item:hover .product-info {
  bottom: 0;
}

.product-info h3 {
  margin-top: 0;
}

.product-info p {
  margin-bottom: 10px;
}

.product-btn {
  display: block;
  margin: auto;
}


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="margin-top:50px;">
    <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center"  Width="1100px" Height="126px" CellPadding="10" CellSpacing="10" ShowHeaderWhenEmpty="True" BackColor="#F6F6F6" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" ForeColor="Black">
        <Columns>
            <asp:ButtonField Text="appointment" >
            <ControlStyle BorderColor="#003300" ForeColor="#CC3300" Width="60px" />
            </asp:ButtonField>
        </Columns>
       

        <EditRowStyle BackColor="#C4BBF0" BorderStyle="Solid" BorderWidth="2px" />
        <HeaderStyle BackColor="#B030B0" BorderStyle="Solid" BorderWidth="2px" ForeColor="#F9FBFC" />
        <PagerStyle BackColor="#FF0066" />
        <RowStyle BorderStyle="Solid" BorderWidth="2px" />
        <SelectedRowStyle BorderStyle="Solid" BorderWidth="2px" />
       

    </asp:GridView>
</div>
</asp:Content>
