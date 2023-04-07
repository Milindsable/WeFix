<%@ Page Title="" Language="C#" MasterPageFile="~/first.Master" AutoEventWireup="true" CodeBehind="Registration_Page.aspx.cs" Inherits="WeFix.Registration_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
		#div1 
		{
		font-family: Arial, Helvetica, sans-serif;
		margin-left:25%;
		margin-right:25%;
		border: 1px solid #000000;
		margin-bottom: 5px;
		margin-top:10px;
		padding: 14px 15px 0 15px;
		background-color:#9DF1DF;
		}
	input[type=text], input[type=password] 
		{
		width: 97%;
		padding: 10px;
		margin: 5px 0 22px 0;
		display: inline-block;
		border: none;
		background: #F5F5F5;
		}
	hr 
		{
		border: 1px solid #e6e6e6;
		margin-bottom: 5px;
		}
	.registerbutton
		{
		background-color: #29a329;
		color: white;
		padding: 15px 20px;
		margin: 10px 0px;
		border: none;
		cursor: pointer;
		width: 100%;
		text:bold;
		}
	

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div id="div1">
         <p>Please fill in this form to create an account.</p>
		<hr>
		
		<label for="name"><b>Name
         </b></label>
		&nbsp;<input type="text" placeholder="Enter Your Name" name="name" required><br>
		
		<label for="number"><b>Contact No.</b></label>
		<input type="text" placeholder="Enter Your Contact No." name="number" required><br>
		
		<label for="email"><b>Email</b></label> 
		<input type="text" placeholder="Enter Your E-mail" name="email" required><br>

		<label for="pwd"><b>Password</b></label>
		<input type="password" placeholder="Enter Your Password" name="psw" required><br>

		<label for="psw-repeat"><b>Repeat Password</b></label>
		<input type="password" placeholder="Repeat Your Password" name="psw-repeat" required><br>
		<hr>
		<p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

		<button type="submit" class="registerbutton">Register</button>

		<p>Already have an account? <a href="Login_Page.aspx">Sign in</a>.</p>
</div>
</asp:Content>
