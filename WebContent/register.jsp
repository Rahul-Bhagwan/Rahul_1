<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GST</title>

<style>

* {

  box-sizing: border-box;
   
}
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
           }
.container {
  position:absolute;
  right: 0;
  margin: 10px;
  max-width: 300px;
  padding: 0px;
  background-color: white;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
     }
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
                                       }
input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
                                                    }

ul li:before
{
content:'\2713';
  display:inline-block;
  color:red;
  padding:0 6px 0 0;
 }
ul li{list-style-type:none;font-size:1em; list-color:green;}
ul.theme{
color:Green;}
       
body {
  background-image: url("rr1.jpg");
}
  
</style>
</head>

 <body>
<center> <h2>Who Should Register for GST?</h2></center>
<ul class=theme>
<strong>
<li>Individuals registered under the Pre-GST law (i.e., Excise, VAT, Service Tax etc.)</li>
<li>Businesses with turnover above the threshold limit of Rs. 40 Lakhs* (Rs. 10 Lakhs for North-Eastern States, J&K, Himachal Pradesh and Uttarakhand)</li>
<li>Casual taxable person / Non-Resident taxable person</li>
<li>Agents of a supplier & Input service distributor.</li>
<li>Those paying tax under the reverse charge mechanism.</li>
<li>Person who supplies via e-commerce aggregator.</li>
<li>Every e-commerce aggregator.</li>
<li>Person supplying online information and database access or retrieval services from a place outside India to a person in India, other than a registered taxable person.</li>
<li>CBIC has notified the increase in threshold turnover from Rs 20 lakhs to Rs 40 lakhs. The notification will come into effect from 1st April 2019.</li>
</strong>
 </ul>
 
<center>
<h3><a>Goods and Services Tax</a></h3>

<div>
<form action="LoginServlet" method="post"  class="container">


 <label for="Name"><b>First Name</b></label>
    <input type="text" placeholder="Enter Name" name="first_name" required>
    
<label for="Last Name"><b>Last Name</b></label>
    <input type="text" placeholder="Enter Name" name="last_name" required>
    
  <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>
    
    <label for="password"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>

    <button type="submit" class="btn" >Login</button>
			
			</form>
			</div></center>
</body>
</html>