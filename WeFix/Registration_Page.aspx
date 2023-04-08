<%@ Page Title="" Language="C#" MasterPageFile="~/first.Master" AutoEventWireup="true" CodeBehind="Registration_Page.aspx.cs" Inherits="WeFix.Registration_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
    	body {
  background-color: #f2f2f2;
  font-family: Arial, sans-serif;
   background-image:url("https://img.freepik.com/free-vector/maintenance-concept-illustration_114360-381.jpg?size=626&ext=jpg&ga=GA1.1.1141735572.1680859295&semt=sph");

}

.register-container {
  background-color: #fff;
  max-width: 570px;
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

button {
  background-color: #4CAF50;
  color: #fff;
  padding: 10px;
  border: none;
  border-radius: 5px;
  box-shadow: 0 0 5px rgba(0,0,0,0.1);
  cursor: pointer;
}

button:hover {
  background-color: #3e8e41;
}

.login-link {
  text-align: center;
  margin-top: 20px;
}

.login-link a {
  color: #4CAF50;
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
      <h2>Register</h2>
        <div class="form-group">
          <label for="username">Username:</label>
          <input type="text" id="username" name="username" placeholder="Enter username">
        </div>
        <div class="form-group">
          <label for="mobno">Mobile No:</label>
          <input type="tel" id="phone" name="mobno" placeholder="Enter Mobile no">
        </div>
        <div class="form-group">
          <label for="password">Password:</label>
          <input type="password" id="password" name="password" placeholder="Enter password">
        </div>
        <div class="form-group">
          <label for="confirm-password">Confirm Password:</label>
          <input type="password" id="confirm-password" name="confirm-password" placeholder="Confirm password">
        </div>
        <button type="submit">Register</button>
     
      <div class="login-link">
        Already have an account? <a href="Login_Page.aspx">Login now</a>
      </div>
    </div>
</asp:Content>
