<%@ Page Title="" Language="C#" MasterPageFile="~/first.Master" AutoEventWireup="true" CodeBehind="Login_Page.aspx.cs" Inherits="WeFix.Login_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style>
	    body {
	        background-color:white;
	        font-family: Arial, sans-serif;

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
.login-container {
  background-color:white;
  width: 400px;
  margin: 100px auto;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0,0,0,0.3);
  height:400px;
}

h2 {
  text-align: center;
  margin-bottom: 30px;
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

input[type="text"], input[type="password"] {
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

.register-link {
  text-align: center;
  margin-top: 20px;
}

.register-link a {
  color: #4CAF50;
  text-decoration: none;
  font-weight: bold;
}

.register-link a:hover {
  text-decoration: underline;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="row">
       <div class="column">
           <img src="https://img.freepik.com/free-vector/maintenance-concept-illustration_114360-381.jpg?size=626&ext=jpg&ga=GA1.1.685505820.1680966427&semt=sph" />
       </div>
       <div class="column">
    <div class="login-container">
      <h2>Login</h2>
        <div class="form-group">
          <label for="username">Username:</label>
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the username" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
          <label for="password">Password:</label>
            <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>  
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter the password" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Login" BackColor="#33CCFF" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" Height="35px" Width="75px" />
      <div class="register-link">
        Don't have an account? <a href="Registration_Page.aspx">Register now</a>
      </div>
    </div>
</div>
</div>
</asp:Content>
