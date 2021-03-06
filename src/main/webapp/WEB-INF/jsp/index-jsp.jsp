<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="forms" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<%@ include file="head.jspf" %>
<body>
<div class="container">
  <%@ include file="pageTitle.jspf" %>
  <c:forEach items="${presentations}" var="item">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><c:out value="${item.title}"/> - <c:out value="${item.speakerName}"/></h3>
      </div>
      <div class="panel-body">
          <c:out value="${item.summary}" escapeXml="false"/>
      </div>
    </div>
  </c:forEach>
</div>
<%@ include file="scripts.jspf" %>
</body>
</html>