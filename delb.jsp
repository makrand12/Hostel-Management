<%--<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.messageDestinationLinkType"%>--%>

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
         <meta http-equiv="refresh" content="0;delsucc.jsp">
    </head>
    <h1>
        <%String gfind = request.getParameter("ip1");%>
        <form name="boysEntry" action="delsucc.jsp" method="POST">
    </h1>
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
        response.sendRedirect("delBB.jsp");
        }
        else
        {}
              
    }catch(Exception e)
    {}
    %>
         <%
   //     String gSet = request.getParameter("ip");
        BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
        int ch;
        MongoClient m=new MongoClient("localhost",27017);
        DB db=m.getDB("Hostel_Management");
        DBCollection coll=db.getCollection("Boys_Details");
        
    BasicDBObject lo = new BasicDBObject();
    lo.put("ID", gfind);
    coll.remove(lo);
    
                %>
<!--<input type="submit" value="DELETE" name="Go Back" style="height: 90px;width: 150px"/>-->  
  
          </form>
        
    <!--<a href="index.html"> <button> <h2>HOME</h2>  </button>  </a>-->
</html>
