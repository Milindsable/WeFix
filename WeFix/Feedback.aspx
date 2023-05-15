<%@ Page Title="" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="WeFix.Feedback" EnableEventValidation="false" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	 <style>
     .container1 {
	max-width: 550px;
	margin: 30px auto;
	padding: 50px 20px;
	background: #fff;
	
	border-radius: 5px;
	box-shadow: 0px 0px 10px #ccc;
}



h1 {
	text-align: center;
	margin-bottom: 30px;
}

label {
	display: block;
	font-weight: bold;
	margin-bottom: 10px;
}

input,
textarea {
	padding: 10px;
	border-radius: 5px;
	
	width: 95%;
	margin-bottom: 20px;
}

textarea {
	height: 150px;
	resize: none;
}

.submit {
	background: #3498db;
	color: #fff;
	border: none;
	padding: 10px 20px;
	border-radius: 5px;
	cursor: pointer;
}

.submit:hover {
	background: #2980b9;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container1">
		
			<h1>Feedback</h1>
			<label for="name">Username</label>
		    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
			<label for="email">Worker Name</label>
		    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
			<label for="message">Message</label>
			<asp:TextBox ID="TextBox3" runat="server" multiline="true"></asp:TextBox>
		    <asp:Button ID="Button1" runat="server" Text="Feedback" OnClick="Button1_Click" />
	</div>
</asp:Content>
