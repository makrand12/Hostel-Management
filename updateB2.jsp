<!DOCTYPE html>

<html>
    <head>
        <%@page import="java.util.List"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mongodb.*" %>
        <title>Enter Update Entry</title>
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
   
        <%String gfind = request.getParameter("ip1");%>
         
    
        <h1> HOSTEL MANAGEMENT  </h1>
    <h3>
        <b> BOYS DATABASE UPDATE ENTRY </b>
         <form name="boysEntry" action="updateBEntry.jsp" method="POST">
    </h3>
        <%
        
        try{
        String str=""; 
        BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
        MongoClient m=new MongoClient("localhost",27017);
        DB db=m.getDB("Hostel_Management");
        DBCollection coll=db.getCollection("Boys_Details");
                BasicDBObject dbo=new BasicDBObject();
                 dbo.put("ID", gfind);
                 DBCursor cursor = coll.find(dbo);
                Object val=null; 
                while (cursor.hasNext()) {
                DBObject dbs = cursor.next();
                
                val = dbs.get("ID");
                    }
        if(val==null)
        {
            
            response.sendRedirect("updateB.jsp");
        }
        else
        {}
              
    }catch(Exception e)
    {}
    %>
         <%
   //     String gSet = request.getParameter("ip");
        BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
        MongoClient m=new MongoClient("localhost",27017);
        DB db=m.getDB("Hostel_Management");
        DBCollection coll=db.getCollection("Boys_Details");
                BasicDBObject dbo=new BasicDBObject();
                 dbo.put("ID", gfind);
                 DBCursor cursor = coll.find(dbo);
                Object value=null; 
				Object value0=null;
                Object value1=null;
                Object value2=null;
                Object value3=null;
                Object value4=null;
                Object value5=null;
                while (cursor.hasNext()) {
                DBObject dbs = cursor.next();
                value0 = dbs.get("ID");
				value = dbs.get("Name");
                value1 = dbs.get("DOB");
                value2 = dbs.get("Blood_Group");
                value3 = dbs.get("Address");
                value4 = dbs.get("Mobile_self");
                value5 = dbs.get("Parent_mobile_number");
                }       
                
                out.println("<center>");
                out.println("<table>");
		out.println("<tr><td><h4></h4></td> <td><input type=\"hidden\" name=\"myid\" value="+value0+" size=\"20\" /></td></tr>");		
        out.println("<tr><td><h4> Name: </h4></td> <td><input type=\"text\" name=\"Name\" value="+value+" size=\"20\" /></td></tr>");
        out.println("<tr><td><h4> Date of Birth:</h4></td> <td><input type=\"text\" name=\"DoB\" value="+value1+" size=\"20\" /></td></tr>");
        out.println("<tr><td><h4>Blood Group:</h4></td> <td><input type=\"text\" name=\"BG\" value="+value2+" size=\"20\" /></td></tr>");
        out.println("<tr><td><h4>Address:</h4></td> <td><input type=\"text\" name=\"Add\" value="+value3+" size=\"20\" /></td></tr>");
        out.println("<tr><td><h4>Mobile(Self):</h4></td> <td><input type=\"text\" name=\"MobS\" value="+value4+" size=\"20\" /></td></tr>");
        out.println("<tr><td><h4>Moblie(Parent):</h4></td> <td><input type=\"text\" name=\"MobP\" value="+value5+" size=\"20\" /></td></tr>");
                out.println("</center>");
                out.println("</table>");
				BasicDBObject lo=new BasicDBObject();
				lo.put("ID",gfind);
				coll.remove(lo);
                %>
<input type="submit" value="UPDATE" name="Go Back" style="height: 45px;width: 75px"/>  
  
          </form>
    </body>
</html>
