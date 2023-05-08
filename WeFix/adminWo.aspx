﻿<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="adminWo.aspx.cs" Inherits="WeFix.adminWo"  EnableEventValidation="false" ValidateRequest="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
		table {
			border-collapse: collapse;
			width: 90%;
			font-family: Arial, sans-serif;
			font-size: 14px;
            margin-left:50px;
            margin-right:30px;
            
		 }
		 th, td {
			 padding: 8px;
			 text-align: center;
			 border-bottom: 1px solid #ddd;
		 }
		 th {
		 	background-color: #f2f2f2;
		 } 
		 tr:hover {
		 	background-color: #f2f2f2;
		 }
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div style="margin-top:50px;">
    <asp:Repeater runat="server" ID="MyRepeater">
    <HeaderTemplate>
        <table border="1">
            <thead>
            <tr>
                <th>id</th>
                <th>Name</th>
                <th>Work Type</th>
                <th>Skills</th>
                <th>Phone Number</th>
                <th>Email</th>
                <th>Location</th>
                <th>Price</th>
                <th>Delete worker</th>
            </tr>
            </thead>
    </HeaderTemplate>
   
    <ItemTemplate>
        <tbody>
        <tr>
              <td>
               <asp:Label ID="Label1" runat="server" Text='<%# Eval("wid") %>' />
            </td>
            <td>
               <asp:Label ID="lblName" runat="server" Text='<%# Eval("name") %>' />
            </td>
            <td>
                <asp:Label ID="lblWorktype" runat="server" Text='<%# Eval("work_type") %>' />
            </td>
            <td>
                <asp:Label ID="lblskills" runat="server" Text='<%# Eval("skills") %>' />
            </td>
            <td>
                <asp:Label ID="lblphoneno" runat="server" Text='<%# Eval("phoneno") %>' />
            </td>
            <td>
                 <asp:Label ID="lblemail" runat="server" Text='<%# Eval("email") %>' />
            </td>
            <td>
                 <asp:Label ID="lbllocation" runat="server" Text='<%# Eval("location") %>' />
            </td>
             <td>
                 <asp:Label ID="lblprice" runat="server" Text='<%# Eval("price") %>' />
            </td>
            <td>
                <asp:Button Text="Delete" runat="server" OnClick="GetValue" />
            </td>
        </tr>
        </tbody>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
</div>
</asp:Content>
