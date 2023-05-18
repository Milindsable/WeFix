<%@ Page Title="" Language="C#" MasterPageFile="~/masterContractor.Master" AutoEventWireup="true" CodeBehind="Profile_update_contractor.aspx.cs" Inherits="WeFix.Profile_update_contractor" %>
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
      <h2>Update</h2>
        <div class="form-group">
           <label for="name">Username</label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

        </div>
        <div class="form-group">
            <label for="work_type">Work_type</label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="skills">Skills</label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
            <div class="form-group">
            <label for="price">Price</label>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </div>
    <div class="form-group">
        <label for="phone">Phone No.</label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </div>
     <div class="form-group">
         <label for="Email">Email ID</label>
         <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
     </div>
        <div class="form-group">
            <label for="location">Work Location</label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="pass">Password</label>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>

        </div>
        <div class="form-group">
            <label for="confirm-pass">Confirm Password</label>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password  doesn't match" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ForeColor="Red"></asp:CompareValidator>
        </div>
        <asp:Button class="b" ID="Button1" runat="server" OnClick="Button1_Click" Text="Update"/>
   </div>
</asp:Content>
