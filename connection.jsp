<%@ page import="java.sql.*" %>
<%!
Connection con;
Statement stat;
ResultSet rs;
ResultSetMetaData md;
%>
<%
Class.forName("oracle.jdbc.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "1997");
stat=con.createStatement();
%>
