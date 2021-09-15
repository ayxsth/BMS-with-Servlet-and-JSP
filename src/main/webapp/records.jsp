<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page isELIgnored="false" %>

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

<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost/servlet" user="root"
                   password=""/>

<c:if test="${param.id != null}">
    <sql:update var="count" dataSource="${db}">DELETE FROM book WHERE book_id=${param.id}</sql:update>
    <c:if test="${count>0}">
        <c:redirect url="records.jsp"/>
    </c:if>
</c:if>

<div class="container card w-35">
    <h2>Book Records</h2>

    <sql:query var="rs" dataSource="${db}">SELECT * FROM book</sql:query>
    <c:choose>
        <c:when test="${rs.rowCount>0}">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Book Name</th>
                    <th scope="col">Author</th>
                    <th scope="col">Price</th>
                    <th scope="col">Page</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${rs.rows}" var="book">
                    <tr>
                        <th scope="row"><c:out value="${book.book_id}"></c:out></th>
                        <td><c:out value="${book.book_name}"></c:out></td>
                        <td><c:out value="${book.author}"></c:out></td>
                        <td><c:out value="${book.price}"></c:out></td>
                        <td><c:out value="${book.page}"></c:out></td>
                        <td class="action">
                            <a href="./update.jsp?id=${book.book_id}" class="btn btn-primary btn-sm"><i
                                    class="far fa-edit"></i></a>
                            <a href="./records.jsp?id=${book.book_id}" class="btn btn-secondary btn-sm"><i
                                    class="far fa-trash-alt"></i></a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:when>
        <c:otherwise>
            <h3 class="no-data">No data found!</h3>
        </c:otherwise>
    </c:choose>

</div>
</body>
</html>