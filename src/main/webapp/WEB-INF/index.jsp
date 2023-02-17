<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Tacos</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/main.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
  </head>
  <body>
    <h1>Welcome!</h1>
    <br />
    <h3>Join our growing community.</h3>
    <br />
    <h2>Register</h2>
    <br />
    <form:form modelAttribute="newUser" action="/register" method="post">
      <p>
        <form:label path="userName">User Name:</form:label>
        <form:errors path="userName" />
        <form:input path="userName" />
      </p>
      <p>
        <form:label path="email">Email:</form:label>
        <form:errors path="email" />
        <form:input path="email" />
      </p>
      <p>
        <form:label path="password">Password:</form:label>
        <form:errors path="password" />
        <form:input type="password" path="password" />
      </p>
      <p>
        <form:label path="confirm">Confirm Password:</form:label>
        <form:errors path="confirm" />
        <form:input type="password" path="confirm" />
      </p>
      <input type="submit" value="Create User"/>
    </form:form><br>
    <form:form modelAttribute="newLogin" action="/login" method="post">
      <p>
        <form:label path="email">Email:</form:label>
        <form:errors path="email" />
        <form:input path="email" />
      </p>
      <p>
        <form:label path="password">Password:</form:label>
        <form:errors path="password" />
        <form:input type="password" path="password" />
      </p>
      <input type="submit" value="Login"/>
    </form:form>    
  </body>
</html>
