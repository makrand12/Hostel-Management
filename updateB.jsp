<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Search entry</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    
    
<style>
   body{
	background-color: #EBF4FA;
	font-family : Helvetica; 
    }
    h1{
	background-color: #728FCE;
	color : white;
	text-align : center;
	padding:10px;
    }
     h3{
        text-align: center;
        clear:both;
	padding:7px;
	background-color:#cde5ef;
	color:#333;
	text-align:center;
        font-family:initial;
    }
    
</style>
    
    </head>
    <body>
        <h1> HOSTEL MANAGEMENT  </h1>
    <center>
    <form name="updatepg" action="updateB2.jsp" method="POST">
    <h3><b> BOYS DATABASE ENTRY SEARCH </b></h3>
    <h4>Enter the ID to Update:</h4>
    <input type="text" name="ip1" value="" size="25" /></br></br>
    <input class="btn btn-primary" type="submit" value="SUBMIT" name="gobttn" />
    <p></p>
    </form>
    </center>
    <a href="boyoptn.html"> <button class="btn btn-success"> <h4>GO BACK</h4>  </button>  </a>
    </body>
</html>


