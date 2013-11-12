<%@ language="javascript" %>

<%
function jsproc(num1,num2)
{
Response.Write(num1*num2)
}
%>

 <%
 	Response.write ("Result:")
 
 	jsproc(3,4)%>