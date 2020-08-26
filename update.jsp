<%
	String pnm1=(request.getParameter("pnm"));
	rs=stat.executeQuery(" select StockQuant from Reg_Product WHERE P_NAME= '" + pnm1+ "'");
	String QuantityOriginal="";
	QuantityOriginal=rs.getString(1);
	int NumOrgQuant=Integer.parseInt(QuantityOriginal);
	
%>
	
<%        
	String pnm2=request.getParameter("pnm");
	rs=stat.executeQuery(" select QuantSelected from ItemSelected WHERE P_Name='" + pnm2 + "' ");
	String quantsel="";
	quantsel=rs.getString(1);
	int numquantsel=Integer.parseInt(quantsel);
	int quantleft=NumOrgQuant-numquantsel;	

	String qry1=" insert into Reg_Product(StockQuant) values(" + quantleft + ") ";
	stat.executeUpdate(qry1);	
%>		 