<%@ page import="Model.User" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="base.jsp"%>
<html>
<head>
    <title></title>
</head>
<body>

  <div class="container">
    <h5><b>当前位置</b>：个人信息 > 个人信息修改</h5>
    <hr>
    <% StudentDAO studentDAO = new StudentDAO();%>
    <%=studentDAO.getUser(((User)session.getAttribute("currentUser")).getEmail())%>
  </div>

</body>
</html>
