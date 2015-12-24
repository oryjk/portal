<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Gradle + Spring MVC</title>

</head>

<body style="width:300px;height:500px">
<c:forEach var="media" items="${media}">
    ${media.url}
</c:forEach>

</body>
</html>