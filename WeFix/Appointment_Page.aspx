<%@ Page Title="" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="Appointment_Page.aspx.cs" Inherits="WeFix.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       
        .register-container {
  background-color: #fff;
  width: 570px;
  margin: 50px auto;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0,0,0,0.3);
}

h2 {
  text-align: center;
  margin-bottom: 30px;
}

form {
  display: flex;
  flex-direction: column;
}

.form-group {
  display: flex;
  flex-direction: column;
  margin-bottom: 20px;
}

label {
  font-weight: bold;
  margin-bottom: 5px;
}

input[type="text"], input[type="tel"], input[type="password"] {
  padding: 10px;
  border-radius: 5px;
  border: 1px solid #ccc;
  box-shadow: 0 0 5px rgba(0,0,0,0.1);
}

.b {
  background-color: #F3DEBA;
  color:black;
  font-weight:bold;
  font-size:medium;
  padding: 10px;
  border: none;
  border-radius: 5px;
  box-shadow: 0 0 5px rgba(0,0,0,0.1);
  cursor: pointer;
  margin-left:190px;
  width:200px;
}

button:hover {
  background-color: #3e8e41;
}

.login-link {
  text-align: center;
  margin-top: 20px;
}

.login-link a {
  color: #B46060;
  text-decoration: none;
  font-weight: bold;
}

.login-link a:hover {
  text-decoration: underline;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="register-container">
         <div class="form-group">
          <label for="username">Username:</label>
            <asp:TextBox ID="TextBox1" Enabled="false" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
          <label for="workerid">Worker ID:</label>
            <asp:TextBox ID="TextBox2" Enabled="false" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
          <label for="worktype">Work Type:</label>
            <asp:TextBox ID="TextBox3" Enabled="false" runat="server"></asp:TextBox>
        </div>
         <div class="form-group">
          <label for="Skills">Skills:</label>
            <asp:TextBox ID="TextBox4" Enabled="false" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
          <label for="location">Location:</label>
            <asp:TextBox ID="TextBox5" Enabled="false" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
          <label for="date">Date:</label>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </div>

        <asp:Button CssClass="b" ID="Button1" runat="server" Text="Book Appointment" OnClick="Button1_Click" />

    </div>
</asp:Content>

