<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page isELIgnored="false" %>

<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost/servlet" user="root"
                   password=""/>

<c:choose>
    <c:when test="${book.getId()==null && param.id!=null}">
        <sql:query var="rs" dataSource="${db}">SELECT * FROM book WHERE book_id=${param.id}</sql:query>
        <c:if test="${rs.rowCount<=0}">
            <c:redirect url="records.jsp"/>
        </c:if>
        <c:forEach items="${rs.rows}" var="b">
            <jsp:useBean id="book" class="com.code.Book" scope="session">
            </jsp:useBean>
            <jsp:setProperty property="id" name="book" value="${b.book_id}"></jsp:setProperty>
            <jsp:setProperty property="name" name="book" value="${b.book_name}"></jsp:setProperty>
            <jsp:setProperty property="author" name="book" value="${b.author}"></jsp:setProperty>
            <jsp:setProperty property="price" name="book" value="${b.price}"></jsp:setProperty>
            <jsp:setProperty property="page" name="book" value="${b.page}"></jsp:setProperty>
        </c:forEach>
    </c:when>
    <c:when test="${book.getId()==null && param.id==null}">
        <c:redirect url="records.jsp"/>
    </c:when>
</c:choose>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="./css/style.css"/>
    <link rel="icon" href="img/icon.png">
    <title>Book Management System</title>
</head>
<body>

<div class="container card w-35">
    <h2>Update Records</h2>
    <form action="FormValidation" method="post">
        <input type="hidden" name="id" value="${book.getId()}">
        <div class="form-row">
            <div class="form-group col-md-8 center">
                <label>Book Name</label>
                <input type="text" class="form-control" name="book-name" value="${book.getName()}"><br/>
            </div>
            <div class="form-group col-md-8 center">
                <label>Author</label>
                <input type="text" class="form-control" name="author" value="${book.getAuthor()}"><br/>
            </div>
            <div class="form-group col-md-8 center">
                <label>Price</label>
                <input type="text" class="form-control" name="price" value="${book.getPrice()}"><br/>
            </div>
            <div class="form-group col-md-8 center">
                <label>Page</label>
                <input type="text" class="form-control" name="page" value="${book.getPage()}"><br/>
            </div>
            <div class="error">
                <p>${error}</p>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary" name="register">Update</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
<%
    session.removeAttribute("book");
    session.invalidate();
%>