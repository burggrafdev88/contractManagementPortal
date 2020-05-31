<%--
  Created by IntelliJ IDEA.
  User: pburg
  Date: 5/25/2020
  Time: 3:41 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>View Scope of Work</title>
    <meta name="layout" content="mainCMP"/>
</head>

<body>
<div class="bodyContainer">
    <h1>Scope of Work</h1>
    <p>Listed below is the information pertaining to the selected Scope of Work.</p>
    <hr>

    <div class="infoContainer">
        <div class="grid-container">
            <div class="grid-item">
                <div class="label">SOW Name:</div>
                <div class="data">Loren Ipsom Name</div>
            </div>

            <div class="grid-item">
                <div class="label">Invoice Total:</div>
                <div class="data">$xxx.xx</div>
            </div>

            <div class="grid-item">
                <div class="label">SOW Amount:</div>
                <div class="data">$xxx.xx</div>
            </div>

            <div class="grid-item">
                <g:link class="label edit right" controller="SOW" action="edit">Edit</g:link>
            </div>
        </div>

    </div>



</div>

</body>
</html>