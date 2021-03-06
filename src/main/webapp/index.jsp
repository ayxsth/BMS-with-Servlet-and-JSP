<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <link rel="icon" href="img/icon.png">
    <title>Book Management System</title>
</head>

<body>
<div class="container card w-35">
    <h2>Book Management System</h2>
    <form action="FormValidation" method="post">
        <div class="form-row">
            <div class="form-group col-md-8 center">
                <label>Book Name</label>
                <input type="text" class="form-control" name="book-name" placeholder="Half Girlfriend" value="${book.getName()}"><br/>
            </div>
            <div class="form-group col-md-8 center">
                <label>Author</label>
                <input type="text" class="form-control" name="author" placeholder="Chetan Bhagat" value="${book.getAuthor()}"><br/>
            </div>
            <div class="form-group col-md-8 center">
                <label>Price</label>
                <input type="text" class="form-control" name="price" placeholder="750" value="${book.getPrice()}"><br/>
            </div>
            <div class="form-group col-md-8 center">
                <label>Page</label>
                <input type="text" class="form-control" name="page" placeholder="1000" value="${book.getPage()}"><br/>
            </div>
            <div class="error">
                <p>${error}</p>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary" name="register">Register</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
<%
    session.removeAttribute("error");
    session.invalidate();
%>
