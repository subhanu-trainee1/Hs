
<html>
	<title> Home page </title>	
	<style>
*
{
margin:0px;
padding:0px;
}
#main
{
background-image:url(images/bg.png);
background-repeat:repeat;
background-size:100% 100%;
}

#logo
{
width:15%;
height: 150px;
float:left;
margin-left:10px;
}
#heading
{
width:84%;
float:left;
font-size:20px;
text-align:left;
}

#header
{
width:100%;
height:150px;
}





ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}

div.img {
    margin: 5px;
    border: 1px solid #ccc;
 	float:left;
    width: 180px;
}

div.img:hover {
    border: 1px solid #777;
}

div.img img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}
</style>

</html>

<body id="main">

<!-- Header starts -->
<div id="header">
<div id="logo">
	<img alt="Logo" src="images/logo.png" width="150" height="150">

</div>

<div id="heading">
	<h1 style="margin-top:50px"><b>Hospital Management System</b></h1>

</div>

</div>
<!-- Header Ends -->
<ul>
	<li><a class="active" href="DoctorHome.jsp">Home</a></li>
	<li><a  href="insert.jsp">Add Doctor</a></li>
	<li><a href="list.jsp">Manage Doctor</a></li>
 
</ul>
	
	<div class="img">
  <a target="_blank" href="images/bg1.jpg">
    <img src="images/bg1.jpg" alt="doctor" width="500" height="500">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>

<div class="img">
  <a target="_blank" href="images/patientbg.jpg">
    <img src="images/patientbg.jpg" alt="Forest" width="300" height="200">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>


</body>
</html>