<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import=" java.io.File" %>    
<% 
	String type = request.getParameter("type");
	String callback = request.getParameter("GNCallBack");
	

		File path = new File("./Image/"+type);
		String files[] = path.list(); 
		int fileLength = files.length;
%>
	<%=callback%>([
<%
		for(int idx=0;idx<fileLength;idx++){%>
				{"seq":"<%=idx+1 %>","image":"http://gnimageserver.appspot.com/Image/<%=type%>/<%=files[idx] %>"}<%
				if(idx+1<fileLength){
					%>,<%
				}
		}
%>])<%
	
%>
