
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="base.jsp"%>
<html>
<head>
    <title></title>
</head>
<body>

  <div class="container">
    <h5><b>当前位置</b>：课程查询 > 课程查询</h5>
    <hr>
    <div>
      <% TeacherDAO teacherDAO = new TeacherDAO();%>
      <%=teacherDAO.getCource()%>
    </div>
  </div>

</body>
</html>
