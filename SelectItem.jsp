<%@ include file="connection.jsp" %>
<%rs=stat.executeQuery(" select P_Name,P_ID,Price from Reg_Product Order By P_ID ASC ");%>


<table border=0>
<tr><td>&nbsp
</table>

<table border=0>
<tr><td>&nbsp
</table>
<table border=1  align=center width=50% style='border-collapse:collapse' >

	<tr>
	<th align=center widht=50% bgcolor=#000055 > <font color=white>  Product Selection</th>
	</tr>

	<tr>
	<td >
		<table border=0 width=50% align=center style='border-collapse:collapse'>
			<tr><td>Select-Item:<td><select name=pnm>
									<%
										while(rs.next())
										{
											out.println( "<option>" + rs.getString(1) + "</option>");
										}
						
									%>
						</select></td>								
		
			<tr><td>Quantity:<td><select name=quant>
									<%
										rs=stat.executeQuery(" select StockQuant from Reg_Product ");
										while(rs.next())
										{
											String str=rs.getString(1);
											int n_quant=Integer.parseInt(str);
											for(int i=1;i<=n_quant;i++)
												{
													out.println("<option>"+i+"<option>");
												}
										}																                                 %>  


			<td><input type=submit>
		</table>
	</td>
	</tr>	
</table>

<table border=0>
<tr><td>&nbsp
</table>

<center>&copy;sHaKeMeNoW


<%
	String pnm=request.getParameter("pnm");
	String quant=request.getParameter("quant");
	String qry=" insert into ItemSelected values('" + pnm + "'," + quant + ")";
        stat.executeUpdate(qry);			
%>




<center>
Successfully added to shopping list
<p>
Name : <b> <%=pnm%> </b>
</center>
