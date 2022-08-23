<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>Employment Enrollments</title>

            <style>
                div {
                    text-transform: capitalize;
                    text-align: center;
                    position: relative;
                    top: 200px;
                }

                table {
                    font-weight: bold;
                    width: auto;
                    margin-left: auto;
                    margin-right: auto;
                    text-align: center;
                }

                tr:first-child,
                td {
                    font-weight: bold;
                    text-align: center;
                    background-color: #02dffc;
                    border: 1px solid black;
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


        <body style="background-color: gold;">
            <div>
                <h2 style="text-decoration:underline;">List of Employees</h2>
                <table>
                    <tr>
                        <td> Employees Name <br></td>
                        <td> Joining Date <br></td>
                        <td> Salary <br></td>
                        <td> SSN <br></td>
                    </tr>
                    <c:forEach items="${employees}" var="employee">
                        <tr>
                            <td>${employee.name}</td>
                            <td>${employee.joiningDate}</td>
                            <td>${employee.salary}</td>
                            <td>${employee.ssn}</td>
                            <td><a href="<c:url value='/edit-${employee.ssn}-employee'/>">Edit </a></td>
                            <td><a href="<c:url value='/delete-${employee.ssn}-employee'/>"> Delete</a></td>
                        </tr>
                    </c:forEach>
                </table>
                <br />
                <a href="<c:url value='/new' /> ">Click here to Add New Employee</a>
            </div>
        </body>

        </html>