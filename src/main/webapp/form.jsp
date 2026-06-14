<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Registration</title>

    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:Arial, Helvetica, sans-serif;
        }

        body{
            background:#f4f6f9;
            display:flex;
            justify-content:center;
            align-items:center;
            height:100vh;
        }

        .container{
            width:400px;
            background:#fff;
            padding:30px;
            border-radius:10px;
            box-shadow:0 4px 12px rgba(0,0,0,0.15);
        }

        h1{
            text-align:center;
            margin-bottom:25px;
            color:#333;
        }

        .form-group{
            margin-bottom:18px;
        }

        label{
            display:block;
            margin-bottom:8px;
            font-weight:bold;
            color:#555;
        }

        input[type="text"]{
            width:100%;
            padding:10px;
            border:1px solid #ccc;
            border-radius:5px;
            font-size:16px;
        }

        input[type="text"]:focus{
            outline:none;
            border-color:#007bff;
        }

        button{
            width:100%;
            padding:12px;
            background:#007bff;
            color:white;
            border:none;
            border-radius:5px;
            font-size:16px;
            cursor:pointer;
        }

        button:hover{
            background:#0056b3;
        }
    </style>

</head>
<body>

<div class="container">

    <h1>Customer Registration</h1>

    <form:form method="post" action="/register">

        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" placeholder="Enter your name">
        </div>

        <div class="form-group">
            <label>City</label>
            <input type="text" name="city" placeholder="Enter your city">
        </div>

        <button type="submit">Register</button>

    </form:form>

</div>

</body>
</html>
