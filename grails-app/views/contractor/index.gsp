<%--
  Created by IntelliJ IDEA.
  User: pburg
  Date: 5/4/2020
  Time: 3:00 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Contractors</title>
    <meta name="layout" content="mainCMP"/>
</head>

<body>

<div class="bodyContainer">
    <h1>Contractors</h1>
    <hr>
    <p>Below are the Contractors currently in the database.</p>

    <table class="contractorTable">
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Street</th>
            <th>City</th>
            <th>State</th>
            <th>Zip</th>
            <th>Payment Type</th>
            <th>COI</th>
            <th>Edit</th>
        </tr>
        <g:each status="i" var="contractor" in="${c}">

            <tr>
                <td>${i + 1}</td>
                <td>${contractor.name}</td>
                <td>${contractor.street}</td>
                <td>${contractor.city}</td>
                <td>${contractor.state}</td>
                <td>${contractor.zip}</td>
                <td>${contractor.paymentType.name}</td>
                <td>PDF Link</td>
                <td>
                    <g:link controller="contractor" action="edit"
                            params="[id: contractor.id, name: contractor.name, street: contractor.street, city: contractor.city, state: contractor.state, zip: contractor.zip, paymentType: contractor.paymentType.name]">Edit</g:link>
                </td>
            </tr>

        </g:each>
    </table>


</div>  <!--end body container-->

</body>
</html>