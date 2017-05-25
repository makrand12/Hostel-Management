
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
    p{
        font-size:20px;
    }
</style>
    </head>
    <body>
    <%
        String gSet = request.getParameter("ip");
        BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
        int ch;
        MongoClient m=new MongoClient("localhost",27017);
        DB db=m.getDB("Hostel_Management");
        DBCollection coll=db.getCollection("Girls_Details");
                BasicDBObject dbo=new BasicDBObject();
                 dbo.put("ID", gSet);
                 DBCursor cursor = coll.find(dbo);
                 
                while (cursor.hasNext()) {
                DBObject dbs = cursor.next();
                Object value0 =dbs.get("ID");
                Object value = dbs.get("Name");
                Object value1 = dbs.get("DOB");
                Object value2 = dbs.get("Blood_Group");
                Object value3 = dbs.get("Address");
                Object value4 = dbs.get("Mobile_self");
                Object value5 = dbs.get("Parent_mobile_number");
          if (value0 !=null && value!=null && value1!=null && value2!=null && value3 !=null && value4!=null && value5!=null)
                {
                    %><table class="table table-striped">
                    <tr>
                        
                    </tr>
                    <td>NAME</br>
                    <% out.println(value); %>
                    </td>
                    <td>DATE OF BIRTH</br>
                    <% out.println(value1); %>
                    </td>
                    <td>BLOOD GROUP</br>
                    <% out.println(value2); %>
                    </td>
                    <td>ADDRESS</br>
                    <% out.println(value3); %>
                    </td>
                    <td>MOBILE SELF</br>
                    <% out.println(value4); %>
                    </td>
                    <td>MOBILE PARENT</br>
                    <% out.println(value5); %>
                    </td>
                </table>
    <%
                }
                else
                {
                }      
    %>
                
                <!--out.println("<p>"+value+"</p>"+"<p>"+value1+"</p>"+"<p>"+value2+"</p>"+"<p>"+value3+"</p>"+"<p>"+value4+"</p>"+"<p>"+value5+"</p>"); %>-->
                
                
        
   <%}%>  
    </body>
    <a href="index.html"> <button class="btn btn-success"> <h2>GO BACK</h2>  </button>  </a>
</html>
