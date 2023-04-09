<%@ Page Title="" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WeFix.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style>
   body {
  margin: 0;
}

ul {
  list-style-type: none;
  margin-top: 90px;
  padding: 0;
  width: 20%;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

li a.active {
  background-color: #B46060;
  color: white;
}

li a:hover:not(.active) {
  background-color: #555;
  color: white;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul>
  <li><a class="active" href="#home">Profile</a></li>
  <li><a href="#news">Worker</a></li>
  <li><a href="#contact">Contractor</a></li>
  <li><a href="#about">Appointments</a></li>
</ul>

<div style="margin-left:20%;padding:1px 16px;height:1000px;background-color:#F3DEBA;">
    <img style=" margin-top:100px;width:100%;" src="https://img.freepik.com/free-vector/set-builders-foreman-handymen-holding-tools-working_1262-19315.jpg?size=626&ext=jpg&ga=GA1.1.514523336.1681013300&semt=sph" />
</div>
</asp:Content>
