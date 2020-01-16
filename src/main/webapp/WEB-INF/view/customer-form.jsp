<%--
  Created by IntelliJ IDEA.
  User: ЗТЛ
  Date: 16.01.2020
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add customer</title>
    <link type="text/css"
          REL="stylesheet"
          href="${pageContext.request.contextPath}/src/main/webapp/resources/css/style.css"/>
    <link type="text/css"
          REL="stylesheet"
          href="${pageContext.request.contextPath}/src/main/webapp/resources/css/add-customer-style.css"/>
</head>
<body>
    <table>
    <div id = "wrapper">
        <div id="header">
            <h2>CRM - Customer Relationship Manager</h2>
        </div>
    </div>
        <div id="container">
            <h3>Save customer</h3>
            <form:form action="saveCustomer" modelAttribute="customer" method="post">

                <!--associate this data with customer id -->
                <form:hidden path="id"/>

                <table>
                    <tbody>
                    <tr>
                        <td><label>First name:</label></td>
                        <td><form:input path="firstName"/></td>
                    </tr>
                    <br/>
                    <tr>
                        <td><label>Last name:</label></td>
                        <td><form:input path="lastName"/></td>
                    </tr>
                    <tr>
                        <td><label>Email:</label></td>
                        <td><form:input path="email"/></td>
                    </tr>
                    <tr>
                        <td><label>Save</label></td>
                        <td><input type="submit" value="save" class="save"/></td>
                    </tr>
                    </tbody>
                </table>
            </form:form>
            <div style="clear: both;"></div>
            <p>
                <a href="${pageContext.request.contextPath}/customer/list">Back to list<a/>
            </p>
        </div>
    </table>
</body>
</html>
