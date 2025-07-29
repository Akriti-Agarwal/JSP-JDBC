<%--
  Created by IntelliJ IDEA.
  User: akrit
  Date: 29-07-2025
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import ="java.sql.*"%>
<html>
<head>
    <title>hii baby</title>
</head>
<body>
 101<br>
Navin<br>
88<br>
<%
    String url ="jdbc:postgresql://localhost:5432/alien";
    String username= "postgres";
    String password ="Avaya@123";
    String sql ="select * from stud where userid = 1 ";
    Class.forName("org.postgresql.Driver");
    Connection con= DriverManager.getConnection(url,username,password);
    Statement st=con.createStatement();
    ResultSet rs =st.executeQuery(sql);
  if (rs.next()) { %>

 Rollno : <%= rs.getString(1) %><br>
 Name  : <%= rs.getString(2) %><br>

     <%
} else {
      %>
 not found

<%
        }

        rs.close();
        st.close();
        con.close();
        %>





        </body>
    </html>

