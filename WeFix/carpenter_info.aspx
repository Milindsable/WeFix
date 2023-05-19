<%@ Page Title="" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="carpenter_info.aspx.cs" Inherits="WeFix.carpenter_info" EnableEventValidation="false" ValidateRequest="false"%>
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
         .img{
              margin-left:300px;
             margin-top:50px;
              
          }
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="img">
         <img src="https://media.istockphoto.com/id/1333890575/vector/professional-contractors-installing-a-floor.jpg?s=612x612&w=0&k=20&c=_XxtazZirnGpIKw1LOfe4GvUwFJI9oKG2OTdEFUb7Xg=" />
    </div>
   
    <div style="margin-top:50px;margin-bottom:20px;">
    <asp:Repeater runat="server" ID="MyRepeater">
    <HeaderTemplate>
        <table border="1">
            <thead>
            <tr>
                <th>Name</th>
                <th>Work Type</th>
                <th>Skills</th>
                <th>Phone Number</th>
                <th>Email</th>
                <th>Location</th>
                <th>Price</th>
                <th>Book Appointment</th>
            </tr>
            </thead>
    </HeaderTemplate>
   
    <ItemTemplate>
        <tbody>
        <tr>
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
                <asp:Button Text="Appoint" runat="server" OnClick="GetValue" />
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
