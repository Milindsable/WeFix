<%@ Page Title="" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="Profile_user.aspx.cs" Inherits="WeFix.Profile_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
		.container1 {
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
		
			}
		.profile-card {
			background-color: #ACB1D6;
			border-radius: 10px;
			box-shadow: 0px 5px 10px rgba(0,0,0,0.1);
			display: flex;
			flex-direction: column;
			align-items: center;
			padding: 30px;
			width: 400px;
			max-width: 600px;
			margin-top:100px;
			margin-bottom:50px;
			height:400px;
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
		.view{
			margin-top:50px;
			margin-left:50px;
		}
		.button{
			margin-top:60px;
		}

		.b {
  background-color:#F3DEBA;
  color:black;
  font-weight:bold;
  font-size:medium;
  padding: 10px;
  border: none;
  border-radius: 5px;
  box-shadow: 0 0 5px rgba(0,0,0,0.1);
  cursor: pointer;
  margin-left:30px;
  width:200px;
}

button:hover {
  background-color: #3e8e41;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container1">
		<div class="profile-card">
			<img class="profile-image" src="image/undraw_pic_profile_re_7g2h.svg" alt="Profile Image">
			<div class="view">
			<asp:DetailsView ID="DetailsView1" runat="server" Height="64px" Width="1202px" BorderColor="#ACB1D6" BorderStyle="None" BorderWidth="0px" CellPadding="5" CellSpacing="100" CssClass="container1" Font-Bold="True" Font-Names="Century Gothic">
			</asp:DetailsView>
			</div>
			<div class="button">
				<asp:Button ID="Button1" CssClass="b" runat="server" OnClick="Button1_Click" Text="Update Profile" />
			</div>

      </div>
	</div>
</asp:Content>
