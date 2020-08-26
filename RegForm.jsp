<%@ include file="connection.jsp" %>
<%
String pnm=request.getParameter("pnm");
String price=request.getParameter("price");
String quant=request.getParameter("quant");


rs=stat.executeQuery(" select * from Reg_Product order by P_ID desc ");
String pid="";
if(!rs.next())
{
	pid="P0001";
}
else
{
	String pid1=rs.getString("P_ID");
	pid1=pid1.substring(1);
	int n=Integer.parseInt(pid1);
	n++;
	if(n>=0 && n<10)
		pid="P000" + n;
	else if(n>=10 && n<100)
		pid="P00" + n;
	else if(n>=100 && n<1000)
		pid="P0" + n;
	else if(n>=1000)
		pid="P" + n;

}
String qry=" insert into Reg_Product values('" + pnm + "', " + price + ", " + quant + ",'" + pid + "')";
//out.println(qry);
stat.executeUpdate(qry);
%>
<center>
Successfully registered
<p>
Name : <b> <%=pnm%> </b>
