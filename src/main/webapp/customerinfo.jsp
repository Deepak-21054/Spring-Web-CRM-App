<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Info</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f4f6f9;
            padding: 40px;
        }

        h1 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        .add-btn {
            display: inline-block;
            margin-bottom: 25px;
            padding: 10px 18px;
            background: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }

        .add-btn:hover {
            background: #218838;
        }

        .customer-card {
            background: white;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 15px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .customer-card p {
            margin: 8px 0;
            font-size: 16px;
            color: #444;
        }

        .actions {
            margin-top: 15px;
        }

        .btn {
            padding: 8px 15px;
            text-decoration: none;
            color: white;
            border-radius: 5px;
            margin-right: 10px;
        }

        .update-btn {
            background: #007bff;
        }

        .update-btn:hover {
            background: #0056b3;
        }

        .delete-btn {
            background: #dc3545;
        }

        .delete-btn:hover {
            background: #b02a37;
        }
    </style>

</head>
<body>

<h1>Customer Information</h1>

<a href="./form.jsp" class="add-btn">+ Add Customer</a>

<c:forEach var="customer" items="${customers}">

    <c:url var="update" value="update">
        <c:param name="custId" value="${customer.id}"/>
    </c:url>

    <c:url var="delete" value="deleteCust">
        <c:param name="custId" value="${customer.id}"/>
    </c:url>

    <div class="customer-card">
        <p><strong>Customer ID:</strong> ${customer.id}</p>
        <p><strong>Customer Name:</strong> ${customer.name}</p>
        <p><strong>Customer City:</strong> ${customer.city}</p>

        <div class="actions">
            <a href="${update}" class="btn update-btn">Update</a>
            <a href="${delete}" class="btn delete-btn"
               onclick="return confirm('Are you sure you want to delete this customer?');">
                Delete
            </a>
        </div>
    </div>

</c:forEach>

</body>
</html>