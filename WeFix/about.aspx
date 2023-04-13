<%@ Page Title="" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="WeFix.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        p{
            font-size:30px;
            font-family: "Times New Roman", Times, serif;
            align-content:center;
            margin-left:30px;
}
        img{
            margin-left:70px;
            height:400px;
        }
        h1{
           font-family:cursive;
           text-align:center;
        }
        .content{
            margin-top:100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
    <div>
        <h1>About Us</h1>
    </div>
        <br />
        <br />
    <div style="margin-top:20px;margin-left:230px;">
    <img src="image/undraw_team_spirit_re_yl1v.svg"/>
        </div>
    <div>
        <p>Welcome to our website! We are a team of dedicated professionals who strive to provide high-quality services to our valued customers. 
            Our goal is to meet and exceed your expectations by delivering innovative solutions that are tailored to your specific needs.
            At our core, we believe in the value of hard work, honesty, and integrity. These values guide everything we do, from the way we interact with our clients to the way we approach each project. We understand that our clients rely on us to deliver exceptional results, and we take that responsibility very seriously.
        </p>
    </div>
</div>
</asp:Content>
