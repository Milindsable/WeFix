<%@ Page Title="" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="WeFix.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
     .container1 {
	max-width: 800px;
	margin: 0 auto;
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
	
	width: 100%;
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
		
			<h1>Contact Us</h1>
			<label for="name">Name</label>
			<input type="text" id="name" name="name" required>
			<label for="email">Email</label>
			<input type="email" id="email" name="email" required>
			<label for="subject">Subject</label>
			<input type="text" id="subject" name="subject" required>
			<label for="message">Message</label>
			<textarea id="message" name="message" required></textarea>
			<button type="submit" class="submit">Submit</button>
		
	</div>
</asp:Content>
