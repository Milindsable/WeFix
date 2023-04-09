<%@ Page Title="" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="WeFix.ContactUs" %>
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
        
        <h1 style="margin-top:100px; margin-left:400px;"> Contact US</h1>
    </div>
</asp:Content>
