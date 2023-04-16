<%@ Page Title="" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="Plumbers_info1.aspx.cs" Inherits="WeFix.Plumbers_info1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style>
.product-container 
{
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}

.product-item 
{
  position: relative;
  margin: 10px;
  width: 200px;
  height: 300px;
  overflow: hidden;
}

.product-item img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.3s ease-in-out;
}

.product-item:hover img {
  transform: scale(1.2);
}

.product-info {
  position: absolute;
  bottom: -100%;
  left: 0;
  width: 100%;
  height: 100%;
  padding: 20px;
  background-color: rgba(255, 255, 255, 0.9);
  transition: bottom 0.3s ease-in-out;
}

.product-item:hover .product-info {
  bottom: 0;
}

.product-info h3 {
  margin-top: 0;
}

.product-info p {
  margin-bottom: 10px;
}

.product-btn {
  display: block;
  margin: auto;
}


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h1>Plumbers</h1>
<div class="product-container">
  <div class="product-item">
    <img src="../image/workers_img/plumber.jpg" alt="Product 1">
    <div class="product-info">
      <h3>Ramesh</h3>
      <p>Charges: Rs.200</p>
      <p>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      <p>Ratings: 4 star</p>
      <p>spcialization: aljd lsjdf lsdjf lakjs</p>
      <button class="product-btn">View Details</button>
    </div>
  </div>
  <div class="product-item">
    <img src="../image/workers_img/plumber.jpg" alt="Product 2">
    <div class="product-info">
      <h3>Ram</h3>
      <p>Price: Rs.400</p>
      <p>Description: Pellentesque suscipit magna id quam rhoncus.</p>
      <p>Ratings: 4 star</p>
      <p>spcialization: aljd lsjdf lsdjf lakjs</p>
      <button class="product-btn">View Details</button>
    </div>
  </div>
    <div class="product-item">
    <img src="../image/workers_img/plumber.jpg" alt="Product 2">
    <div class="product-info">
      <h3>Kishor</h3>
      <p>Price: Rs.300</p>
      <p>Description: Pellentesque suscipit magna id quam rhoncus.</p>
      <p>Ratings: 4 star</p>
      <p>spcialization: aljd lsjdf lsdjf lakjs</p>
      <button class="product-btn">View Details</button>
    </div>
  </div>
    <div class="product-item">
    <img src="../image/workers_img/plumber.jpg" alt="Product 2">
    <div class="product-info">
      <h3>Shyam</h3>
      <p>Price: Rs.350</p>
      <p>Description: Pellentesque suscipit magna id quam rhoncus.</p>
      <p>Ratings: 4 star</p>
      <p>spcialization: aljd lsjdf lsdjf lakjs</p>
      <button class="product-btn">View Details</button>
    </div>
  </div>
    <div class="product-item">
    <img src="../image/workers_img/plumber.jpg" alt="Product 2">
    <div class="product-info">
      <h3>Suresh</h3>
      <p>Price: Rs.450</p>
      <p>Description: Pellentesque suscipit magna id quam rhoncus.</p>
       <p>Ratings: 4 star</p>
        <p>spcialization: aljd lsjdf lsdjf lakjs</p>
      <button class="product-btn">View Details</button>
    </div>
  </div>
    <div class="product-item">
    <img src="../image/workers_img/plumber.jpg" alt="Product 2">
    <div class="product-info">
      <h3>Sanket</h3>
      <p>Price: Rs.550</p>
      <p>Description: Pellentesque suscipit magna id quam rhoncus.</p>
         <p>Ratings: 4 star</p>
        <p>spcialization: aljd lsjdf lsdjf lakjs</p>
      <button class="product-btn">View Details</button>
    </div>
  </div>
    <div class="product-item">
    <img src="../image/workers_img/plumber.jpg" alt="Product 2">
    <div class="product-info">
      <h3>Karan</h3>
      <p>Price: Rs.600</p>
      <p>Description: Pellentesque suscipit magna id quam rhoncus.</p>
         <p>Ratings: 4 star</p>
        <p>spcialization: aljd lsjdf lsdjf lakjs</p>
      <button class="product-btn">View Details</button>
    </div>
  </div>
</div>

</asp:Content>
