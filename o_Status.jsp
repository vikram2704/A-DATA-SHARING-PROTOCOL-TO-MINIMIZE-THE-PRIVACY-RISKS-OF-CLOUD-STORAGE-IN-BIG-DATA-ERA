	<%@ include file="connect.jsp" %>
 	<%
  		
   	try {
		   
			
			String id=request.getParameter("id");
			String str = "Authorized";
       		Statement st1 = connection.createStatement();
       		String query1 ="update owner set status='"+str+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
			connection.close();
			response.sendRedirect("c_all_owners1.jsp");  
			
			
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
