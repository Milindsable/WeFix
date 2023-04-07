<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Intro.aspx.cs" Inherits="WeFix.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .column {
    float: left;
    width: 50%;
    font-family: "Comic Sans MS";
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}


img{
    margin-top:100px;
}
#button{
    display: inline-block; 
    padding: 15px 25px;
    font-size: 24px;
    cursor: pointer;
    text-align: center;
    text-decoration: none;
    outline: none;
    color: #fff;
    background-color: #2d4798;
    border: none;
    border-radius: 15px;
    margin-top:100px;
    margin-left:250px;
    box-shadow: 0 9px #999;

}
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="row">
        <div class="column">
           <img src="https://media.istockphoto.com/id/910099026/vector/industrial-workers.jpg?s=612x612&w=0&k=20&c=KK2ZCQ2tgJYxyCMVuiaS9pesvYj2GKf8o9y02QFiKZM=" />
        </div>
        <div class="column">
           <h1 style="margin-left:150px;margin-top:100px;font-family:'Comic Sans MS';font-size:80px;">WeFix</h1>
           <h2 style="margin-left:30px;margin-top:30px;font-family:'Rockwell';font-size:40px;">Smart Way To Find Helpers Near You....!</h2>
           <a href="Login_Page.aspx">
               <input id="button" type="button" value="Get Started"/>
           </a>
        </div>
         </div>
    </form>
</body>
</html>
