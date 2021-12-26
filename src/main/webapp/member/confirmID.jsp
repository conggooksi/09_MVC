<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="member.*"
    %>
<%--confirmID.jsp --%>
<%-- html주석 쓰지 마세요, 에러 나와요 --%>

<%
String id=request.getParameter("id");//Ajax가 넘겨준
MemberDAO dao=MemberDAO.getDAO();
int x=dao.confirmId(id);//dao메서드 호출 1은 사용중, -1은 사용가능
%>

<%--json 타입으로 값 넘기기 --%>
{
"x":<%=x%>
}

