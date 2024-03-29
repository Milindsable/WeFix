﻿<%@ Page Title="" Language="C#" MasterPageFile="~/first.Master" AutoEventWireup="true" CodeBehind="Worker_registration.aspx.cs" Inherits="WeFix.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
  background-color: #f2f2f2;
  font-family: Arial, sans-serif;
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
      <h2>Register</h2>
         <div class="form-group">
            <label for="type">Register As</label><br />
             <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                 <asp:ListItem Value="Worker">Worker</asp:ListItem>
                 <asp:ListItem Value="Contractor">Contractor</asp:ListItem>
             </asp:RadioButtonList>
        </div>
        <div class="form-group">
           <label for="name">Username</label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*fill this field" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="invalid name" ControlToValidate="TextBox5" ForeColor="Red" ValidationExpression="^[A-Za-z][A-Za-z0-9_@#$*]{7,29}$"></asp:RegularExpressionValidator>
        </div>
        <div class="form-group">
            <label for="work_type">Work_type</label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*fill this field" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="invalid work type" ControlToValidate="TextBox1" ValidationExpression="^[a-zA-Z][a-zA-Z\\s]+$" ForeColor="Red"></asp:RegularExpressionValidator>
        </div>
        <div class="form-group">
            <label for="skills">Skills</label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
            <div class="form-group">
            <label for="price">Price</label>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox9" ErrorMessage="charges must in between Rs.100 to Rs.100000" ForeColor="Red" MaximumValue="1000000" MinimumValue="100" Type="Integer"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="*fill this field" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    <div class="form-group">
        <label for="phone">Phone No.</label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*fill this field" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="invalid number" ControlToValidate="TextBox6" ForeColor="Red" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
    </div>
     <div class="form-group">
         <label for="Email">Email ID</label>
         <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*fill this field" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
     </div>
        <div class="form-group">
            <label for="location">Work Location</label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*fill this field" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label for="pass">Password</label>
            <asp:TextBox ID="TextBox7" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*fill this field" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>

        </div>
        <div class="form-group">
            <label for="confirm-pass">Confirm Password</label>
            <asp:TextBox ID="TextBox8" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*fill this field" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password  doesn't match" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ForeColor="Red"></asp:CompareValidator>
        </div>
       
        <asp:Button class="b" ID="Button1" onClick="Button1_Click" runat="server" Text="Register" />
       <div class="login-link">
        Already have an account? <a href="Login_Page.aspx">Login now</a>
    </div>
    </div>
</asp:Content>
