<%@ Page Title="" Language="C#" MasterPageFile="~/first.Master" AutoEventWireup="true" CodeBehind="Registration_Page.aspx.cs" Inherits="WeFix.Registration_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
    	body {
  background-color: white;
  font-family: Arial, sans-serif;
}

.register-container {
  background-color:white;
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
	<div class="register-container">
      <h2>Register</h2>
        <div class="form-group">
          <label for="usertype">User Type:</label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" CellPadding="10" CellSpacing="10" RepeatDirection="Horizontal">
                <asp:ListItem>Worker</asp:ListItem>
                <asp:ListItem>User</asp:ListItem>
                <asp:ListItem>Contractor</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div class="form-group">
          <label for="username">Username:</label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter the Username" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Username" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="^[A-Za-z][A-Za-z0-9_@#$&amp;*]{7,29}$"></asp:RegularExpressionValidator>
        </div>
        <div class="form-group">
          <label for="mobno">Mobile No:</label>
            <asp:TextBox ID="TextBox2" runat="server" Height="17px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter the Mobile no" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Phone Number" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
        </div>
        <div class="form-group">
          <label for="password">Password:</label>
            <asp:TextBox ID="TextBox3" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter the Password" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        
        <div class="form-group">
          <label for="confirm-password">Confirm Password:</label>
            <asp:TextBox ID="TextBox4" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Re-enter the password" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doset match" ControlToValidate="TextBox4" ControlToCompare="TextBox3" ForeColor="Red"></asp:CompareValidator>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Register" BackColor="#33CCFF" BorderColor="Black" BorderStyle="Solid" Height="35px" Width="75px" Font-Size="Medium" />
        
     
      <div class="login-link">
        Already have an account? <a href="Login_Page.aspx">Login now</a>
      </div>
    </div>
    </div>
        <div class="column">
        
    </div>
</div>
</asp:Content>
