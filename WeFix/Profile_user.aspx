<%@ Page Title="" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="Profile_user.aspx.cs" Inherits="WeFix.Profile_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
		.container1 {
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			height: 100vh;
		}
		.profile-card {
			background-color: #fff;
			border-radius: 10px;
			box-shadow: 0px 5px 10px rgba(0,0,0,0.1);
			display: flex;
			flex-direction: column;
			align-items: center;
			padding: 30px;
			width: 90%;
			max-width: 600px;
		}
		.profile-image {
			border-radius: 50%;
			height: 150px;
			margin-bottom: 20px;
			object-fit: cover;
			width: 150px;
		}
		.profile-name {
			font-size: 30px;
			font-weight: bold;
			margin-bottom: 10px;
		}
		.profile-job {
			color: #999;
			font-size: 18px;
			margin-bottom: 20px;
		}
		.profile-description {
			color: #555;
			font-size: 20px;
			line-height: 1.5;
			margin-bottom: 30px;
			text-align: center;
		}
		.profile-button {
			background-color: #007bff;
			border: none;
			border-radius: 5px;
			color: #fff;
			cursor: pointer;
			font-size: 18px;
			padding: 10px 20px;
			text-align: center;
			text-decoration: none;
			transition: background-color 0.3s ease-in-out;
		}
		.profile-button:hover {
			background-color: #0056b3;
		}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container1">
		<div class="profile-card">
			<img class="profile-image" src="https://i.pravatar.cc/150?img=3" alt="Profile Image">
			<h1 class="profile-name">John Doe</h1>
			<h2 class="profile-job">Web Developer</h2>
			<p class="profile-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed lacus euismod, rutrum eros eu, aliquet mi. Vestibulum tincidunt est sed velit lobortis, vel efficitur eros dictum. Ut gravida iaculis purus, vitae mollis lectus dapibus vel.</p>
			<a class="profile-button" href="#">Contact Me</a>
		</div>
	</div>
</asp:Content>
