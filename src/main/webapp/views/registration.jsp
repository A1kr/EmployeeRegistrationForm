<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
                <title>Employee Registration Form</title>

                <style>
                    .error {
                        color: red;
                    }

                    div {
                        font-weight: bold;
                        text-align: center;
                        text-transform: capitalize;
                        width: auto;
                        margin-left: auto;
                        margin-right: auto;
                        position: relative;
                        top: 200px;
                    }

                    table {
                        font-weight: bold;
                        text-transform: capitalize;
                        width: auto;
                        margin-left: auto;
                        margin-right: auto;
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

            <body style="background-color: yellow;">

                <div>
                    <h1 style="text-decoration:underline;">Registration Form</h1>

                    <form:form method="POST" modelAttribute="employee">
                        <form:input type="hidden" path="id" id="id" />
                        <table>
                            <tr>
                                <td><label for="name">Employee Name: </label> </td>
                                <td>
                                    <form:input path="name" id="name" />
                                </td>
                                <td>
                                    <form:errors path="name" cssClass="error" />
                                </td>
                            </tr>

                            <tr>
                                <td><label for="joiningDate">Joining Date: </label> </td>
                                <td>
                                    <form:input path="joiningDate" id="joiningDate" />
                                </td>
                                <td>
                                    <form:errors path="joiningDate" cssClass="error" />
                                </td>
                            </tr>

                            <tr>
                                <td><label for="salary">Salary: </label> </td>
                                <td>
                                    <form:input path="salary" id="salary" />
                                </td>
                                <td>
                                    <form:errors path="salary" cssClass="error" />
                                </td>
                            </tr>

                            <tr>
                                <td><label for="ssn">SSN: </label> </td>
                                <td>
                                    <form:input path="ssn" id="ssn" />
                                </td>
                                <td>
                                    <form:errors path="ssn" cssClass="error" />
                                </td>
                            </tr>

                            <tr>
                                <td colspan="5" style="text-align:center;">
                                    <c:choose>
                                        <c:when test="${edit}">
                                            <input type="submit" value="Update" />
                                        </c:when>
                                        <c:otherwise>
                                            <input type="submit" value="Register" />
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                            </tr>
                        </table>
                    </form:form>
                    <br />
                    <br />
                    <a href="<c:url value='/list' />">Go back to List</a>
                </div>
                <br />
            </body>

            </html>