<%@ Page Title="" Language="C#" MasterPageFile="~/masterContractor.Master" AutoEventWireup="true" CodeBehind="contractor_current.aspx.cs" Inherits="WeFix.contractor_current" %>
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
                <th>User Name</th>
                <th>Mobile No</th>
                <th>Location</th>
                <th>Email</th>
                <th>Date</th>
                <th>Delete Appointments</th>
            </tr>
            </thead>
    </HeaderTemplate>
   
    <ItemTemplate>
        <tbody>
        <tr>
          <td>
              <asp:Label ID="Label1" runat="server" Text='<%#Eval("username")%>' />
          </td>
         <td>
             <asp:Label ID="Label2" runat="server" Text='<%#Eval("mobileU")%>' />
         </td>
        <td>
            <asp:Label ID="Label3" runat="server" Text='<%#Eval("locationU")%>' />
        </td>
        <td>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("emailU")%>' />
        </td>
             <td>
                 <asp:Label ID="lbldate" runat="server" Text='<%# Eval("date") %>' />
            </td>
            
         <td>
                <asp:Button ID="Button1" runat="server" Text="Delete"  />
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
