<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        .topnav {
            overflow: hidden;
            background-color: #e9e9e9;
        }

        .topnav a {
            float: left;
            display: block;
            color: black;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        .topnav a:hover {
            background-color: #ddd;
            color: black;
        }

        .topnav a.active {
            background-color: #2196F3;
            color: white;
        }

        .topnav .search-container {
            float: right;
        }

        .topnav input[type=text] {
            padding: 6px;
            margin-top: 8px;
            font-size: 17px;
            border: none;
        }

        .topnav .search-container button {
            float: right;
            padding: 6px;
            margin-top: 8px;
            margin-right: 16px;
            background: #ddd;
            font-size: 17px;
            border: none;
            cursor: pointer;
        }

        .topnav .search-container button:hover {
            background: #ccc;
        }

        @media screen and (max-width: 600px) {
            .topnav .search-container {
                float: none;
            }

            .topnav a, .topnav input[type=text], .topnav .search-container button {
                float: none;
                display: block;
                text-align: left;
                width: 100%;
                margin: 0;
                padding: 14px;
            }

            .topnav input[type=text] {
                border: 1px solid #ccc;
            }
        }
    </style>
</head>
<body>

<div class="topnav">
    <a href="/customer?action=quit" class="btn btn-secondary">Home</a>
    <a href="/customer?action=create" class="btn btn-success">Create</a>
    <a href="#contact">User Person</a>
    <div class="search-container">
        <form action="/customer?action=find" method="post">
            <input type="text" placeholder="Search.." name="search">
            <button type="submit" class="btn btn-warning">Search</button>
        </form>
    </div>
</div>

<div class="container">
    <h2>Edit user</h2>
    <form method="post">
    <table class="table">
        <thead>
        <tr>
            <th>Full Name</th>
            <th>User</th>
            <th>Password</th>
        </tr>
        </thead>
        <tbody>
            <tr>
                <td><input placeholder="enter full name" name="fullName" value="${listUser.fullName}" ></td>
                <td><input placeholder="enter user" name="user" value="${listUser.user}" ></td>
                <td><input placeholder="enter password" name="password" value="${listUser.password}" ></td>

            </tr>
        </tbody>
    </table>
        <button type="submit" class="btn btn-success">Edit</button>
        <a href="/customer?action=quit" class="btn btn-secondary">Quit</a>
    </form>
</div>

</body>
</html>