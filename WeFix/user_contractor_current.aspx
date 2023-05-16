<%@ Page Title="" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="user_contractor_current.aspx.cs" Inherits="WeFix.user_contractor_current"EnableEventValidation="false" ValidateRequest="false" %>
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
                <th>Contractor ID</th>
                <th>Name</th>
                <th>Work Type</th>
                <th>Skills</th>
                <th>Location</th>
                <th>Date</th>
                <th>Delete</th>
            </tr>
            </thead>
    </HeaderTemplate>
   
    <ItemTemplate>
        <tbody>
        <tr>
            <td>
               <asp:Label ID="lblid" runat="server" Text='<%# Eval("contid") %>' />
            </td>
            <td>
                <asp:Label ID="lblWname" runat="server" Text='<%# Eval("contName") %>' />
            </td>
            <td>
                <asp:Label ID="lblwtype" runat="server" Text='<%# Eval("wtype") %>' />
            </td>
            <td>
                <asp:Label ID="lblskills" runat="server" Text='<%# Eval("skills") %>' />
            </td>
            <td>
                 <asp:Label ID="lbllocation" runat="server" Text='<%# Eval("location") %>' />
            </td>
            <td>
                 <asp:Label ID="lbldate" runat="server" Text='<%# Eval("date") %>' />
            </td>
             <td>
                 <asp:Button ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click"/>
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
