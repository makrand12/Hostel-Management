<!DOCTYPE html>
<html>
    
    <head>
<%@page import="java.util.List"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mongodb.*" %>
<link href='bootstrap/css/bootstrap.min.css' rel="stylesheet" />
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
    p{
        font-size:20px;
        
    }
    
</style>

    </head>
     
    <body class="masthead">
       <h1> HOSTEL MANAGEMENT  </h1>
        <h3><b>List of All Hostel Girls</b></h3>    
    <%
        String gSet = request.getParameter("ip");
        BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
        int ch;
        MongoClient m=new MongoClient("localhost",27017);
        DB db=m.getDB("Hostel_Management");
        DBCollection coll=db.getCollection("Girls_Details");
                BasicDBObject dbo=new BasicDBObject();
//                 dbo.put("ID", gSet);
                 DBCursor cursor = coll.find(dbo);
                  out.println(" <table class=\"table table-hover\">");
                  out.println("<td> <h4> ID </h4></td>"+
                          "<td>  <h4> Name </h4></td>"
                          + "<td> <h4>Date of Birth</h4> </td>"
                          + "<td> <h4>Blood Group</h4> </td>"
                          + " <td> <h4>Address</h4>  </td>"
                          + "<td> <h4>Mobile(self)</h4> </td>"
                          + "<td> <h4>Mobile(parent)</h4></td>");
                while (cursor.hasNext()) {
                DBObject dbs = cursor.next();
				Object value0 = dbs.get("ID");
                Object value = dbs.get("Name");
                Object value1 = dbs.get("DOB");
                Object value2 = dbs.get("Blood_Group");
                Object value3 = dbs.get("Address");
                Object value4 = dbs.get("Mobile_self");
                Object value5 = dbs.get("Parent_mobile_number");
                if(value0 !=null && value!=null && value1!=null && value2!=null && value3!=null && value4!=null && value5!=null)
				{
                    out.println("<tr>");
                    out.println("<td>"+value0+"</td><td>"+value+"</td>");
                    out.println("<td>"+value1+"</td>"+"<td>"+value2+"</td>"+"<td>"+value3+"</td>"+"<td>"+value4+"</td>"+"<td>"+value5+"</td>"); 
                    out.println("</tr>");
                }
				else{}
     %>  
   <%}
                out.println("</table>");
   %>  
  
    </body>
    <a href="girloptn.html"> <button class="btn btn-success" title="GO BACK"> <h4>GO BACK</h4>  </button>  </a>
</html>
