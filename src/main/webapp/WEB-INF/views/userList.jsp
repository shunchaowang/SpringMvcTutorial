<!DOCTYPE html>
<%@include file="taglib.jsp" %>

<html>
<head>
    <link rel='stylesheet' href='<c:url
    value="/resources/vendor/bootstrap-3.3.2/css/bootstrap.min.css" />'>
    <title>User Table</title>
</head>
<body>

<div class="col-sm-offset-1 col-sm-10">

    <legend>
        <spring:message code="table.user.title"/>
    </legend>

    <div>
        <table id="dataTable" class="table table-striped table-bordered">
            <thead>
            <tr>
                <th><spring:message code="table.user.id"/></th>
                <th><spring:message code="table.user.firstName"/></th>
                <th><spring:message code="table.user.falilyName"/></th>
                <th><spring:message code="table.user.email"/></th>
            </tr>
            <thead>
            <tbody>
            <c:forEach var="u" items="${usersModel}">
            <tr>
                <td>${u.id}</td>
                <td>${u.firstName}</td>
                <td>${u.familyName}</td>
                <td>${u.email}</td>
            <tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>