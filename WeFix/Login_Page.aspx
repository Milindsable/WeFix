<%@ Page Title="" Language="C#" MasterPageFile="~/first.Master" AutoEventWireup="true" CodeBehind="Login_Page.aspx.cs" Inherits="WeFix.Login_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style>
		
		h2 {
			text-align: center;
			color: #333333;
			margin-top: 50px;
		}
		#div {
			margin: 50px auto;
			width: 400px;
			padding: 20px;
			background-color: #ffffff;
			border-radius: 10px;
			box-shadow: 0px 0px 10px #cccccc;
			font-family: Arial, sans-serif;
			background-color:aquamarine;
		}
		label {
			display: block;
			font-weight: bold;
			margin-bottom: 10px;
			color: #666666;
		}
		input[type="text"], input[type="password"] {
			width: 100%;
			padding: 10px;
			border-radius: 5px;
			border: 1px solid #cccccc;
			margin-bottom: 20px;
			box-sizing: border-box;
		}
		input[type="submit"] {
			background-color: #4CAF50;
			color: #ffffff;
			padding: 10px;
			border-radius: 5px;
			border: none;
			cursor: pointer;
			font-size: 16px;
		}
		input[type="submit"]:hover {
			background-color: #3e8e41;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="div">
           <label for="username">Username:</label>
		<input type="text" id="username" name="username" />
		<label for="password">Password:</label>
		<input type="password" id="password" name="password" />
		<center>
		<input type="submit" value="Login" />
		</center>
    </div>
	<center>
	<a href="Registration_Page.aspx">Don't Have An Account</a>
		</center>

</asp:Content>
