<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>Registration Confirmation Page</title>
            <style>
                div {
                    text-transform: capitalize;
                    text-align: center;
                    position: relative;
                    top: 200px;
                }

                a {
                    font-weight: bold;
                    background-color: crimson;
                    color: bisque;
                    padding: 5px 5px;
                    border: 1px solid black;
                    text-align: center;
                    text-decoration: none;
                    display: inline-block;

                }
            </style>

        </head>

        <body style="background-color: greenyellow;">
            <div>
                <h1 style="text-decoration: underline;">Registration Successful</h1>
                <h3>Employee Name : ${success1}<br /></h3>
                <h3>Joining Date :${success2}<br /></h3>
                <h3>Salary : ${success3}<br /></h3>
                <h3>SSN : ${success4}<br /></h3>
                <a href="<c:url value='/list' />">Back to the list</a>
            </div>
        </body>

        </html>