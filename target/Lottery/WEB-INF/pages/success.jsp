<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
success<br>
<c:forEach var="u" items="${users}" >
    <span>${u.name} : ${u.pass}</span> <br>
</c:forEach>

</body>
</html>
