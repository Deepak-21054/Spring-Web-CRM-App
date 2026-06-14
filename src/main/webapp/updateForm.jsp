<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Customer</title>

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
            width:420px;
            background:#fff;
            padding:30px;
            border-radius:10px;
            box-shadow:0 4px 10px rgba(0,0,0,0.15);
        }

        h1{
            text-align:center;
            color:#333;
            margin-bottom:25px;
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

        .btn{
            width:100%;
            padding:12px;
            background:#007bff;
            color:white;
            border:none;
            border-radius:5px;
            font-size:16px;
            cursor:pointer;
        }

        .btn:hover{
            background:#0056b3;
        }
    </style>

</head>
<body>

<div class="container">

    <h1>Update Customer</h1>

    <form action="/register" method="post">

        <input type="hidden" name="id" value="${customer.id}">

        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name"
                   value="${customer.name}"
                   placeholder="Enter customer name">
        </div>

        <div class="form-group">
            <label>City</label>
            <input type="text" name="city"
                   value="${customer.city}"
                   placeholder="Enter customer city">
        </div>

        <button type="submit" class="btn">Update Customer</button>

    </form>

</div>

</body>
</html>
