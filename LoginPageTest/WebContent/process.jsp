<%@page import="java.io.*"%>
<%-- <%@page import="java.io.IO"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java"%>
<%@ page import="java.util.*"%>
<%@ page import="com.model.User"%>
<%@ page import="com.service.RegisterService"%>
<%!%>
<jsp:useBean id="formHandler" class="com.model.User">
	<jsp:setProperty name="formHandler" property="*" />
</jsp:useBean>

<%
	try {
		RegisterService registerService = new RegisterService();
		boolean result = registerService.register(formHandler);
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Registration Successful</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<center>");
		if (result) {
			out.println("<h1>Thanks for Registering with us :</h1>");
			out.println("To login with new UserId and Password<a href=login.jsp>Click here</a>");
		} else {
			out.println("<h1>Registration Failed</h1>");
			out.println("To try again<a href=register.jsp>Click here</a>");
		}
		out.println("</center>");
		out.println("</body>");
		out.println("</html>");
	} catch (IOException e) {
		e.printStackTrace();
	} finally {
		out.print("Hii");
		//out.close();

	}
%>

