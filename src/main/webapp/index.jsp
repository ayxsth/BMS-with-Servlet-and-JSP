<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <title>Library Management System</title>
</head>
<body>
<div class="header text-center">
    <h3>Library Management System</h3>
</div>
<div class="container card w-35">
    <form>
        <div class="form-row">
            <div class="form-group col-md-8 center">
                <label>Name</label>
                <input type="text" class="form-control" name="name"><br/>
            </div>
            <div class="form-group col-md-8 center">
                <label>Email</label>
                <input type="email" class="form-control" name="email"><br/>
            </div>
            <div class="form-group col-md-8 center">
                <label>Phone Number</label>
                <input type="text" class="form-control" name="phone"><br/>
            </div>
            <div class="form-group col-md-8 center">
                <label>Gender</label>
                <select name="gender" class="form-control">
                    <option selected>Choose...</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                </select><br/>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary" name="register">Register</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
