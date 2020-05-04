<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Design2.css">
<title>Gst</title>

<style>
body {
background-image: url("Stock.jpg");
    background-repeat: no-repeat;
   background-position: center;
   background-attachment: fixed;  
   
    style="width:100%";
    opacity:0.5;
}
body{
line-height: 1.6;
color:black;
font-size:16px;
}
  </style>
 </head>
 
<body>
<div class="header">Welcome To The GST</div>
<ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="#news">News</a></li>
  <li><a href="#Gst">Gst</a></li>
  <li><a href="#about">About</a></li>
</ul>






<form >
<textarea>      
Goods and Services Tax (GST) is an indirect tax (or consumption tax) used in India on the supply of goods and services. It is a comprehensive, multistage, destination-based tax: comprehensive because it has subsumed almost all the indirect taxes except a few state taxes. Multi-staged as it is, the GST is imposed at every step in the production process, but is meant to be refunded to all parties in the various stages of production other than the final consumer and as a destination-based tax, it is collected from point of consumption and not point of origin like previous taxes.

Goods and services are divided into five different tax slabs for collection of tax - 0%, 5%, 12%, 18% and 28%. However, petroleum products, alcoholic drinks, and electricity are not taxed under GST and instead are taxed separately by the individual state governments, as per the previous tax system.[citation needed] There is a special rate of 0.25% on rough precious and semi-precious stones and 3% on gold.[1] In addition a cess of 22% or other rates on top of 28% GST applies on few items like aerated drinks, luxury cars and tobacco products.[2] Pre-GST, the statutory tax rate for most goods was about 26.5%, Post-GST, most goods are expected to be in the 18% tax range.

The tax came into effect from 1 July 2017 through the implementation of the One Hundred and First Amendment of the Constitution of India by the Indian government. The GST replaced existing multiple taxes levied by the central and state governments.
</textarea>    
</form>

<div>
<form action=Calcul  method="post" >
<input name="number" type="text" value="Enter Income" />
<input type="submit" value="Check">
</form>
</div>
<%out.print("Enter the amount of taxable income for the year 2014: "); %>
<div class="footer">GST</div>
</body>
</html>