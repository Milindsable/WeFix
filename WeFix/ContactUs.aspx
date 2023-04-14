<%@ Page Title="" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="WeFix.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
     .container1 {
	max-width: 800px;
	margin: 30px auto;
	padding:30px;
	background: #fff;
	width:500px;
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
	
	width:90%;
	margin-bottom: 20px;
}

textarea {
	height: 150px;
	resize: none;
}

.submit {
	background: #9b5de5;
	color: #fff;
	border: none;
	padding: 10px 20px;
	border-radius: 5px;
	cursor: pointer;
}

.submit:hover {
	background: #7209b7;
}
 .column {
    float: left;
    width: 49%;
    font-family: "Comic Sans MS";
    background-color:white;
    
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="row">
	<div class="column">
		<img style="margin-top:190px;" src="image/undraw_contact_us_re_4qqt (1).svg" />
	</div>
		<div class="column">
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
  </div>
</div>

</asp:Content>
