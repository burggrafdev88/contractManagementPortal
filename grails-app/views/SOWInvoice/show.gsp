<%--
  Created by IntelliJ IDEA.
  User: pburg
  Date: 5/31/2020
  Time: 4:38 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>View Invoice</title>
    <meta name="layout" content="mainCMP"/>
</head>

<body>
<div class="bodyContainer">
    <h1>Invoice</h1>
    <p>Listed below is the information pertaining to the selected Invoice.</p>
    <hr>

    <div class="infoContainer">
        <div class="grid-container">
            <div class="grid-item">
                <div class="label">Invoice #:</div>
                <div class="data">Loren Ipsom Number</div>
            </div>

            <div class="grid-item">
                <div class="label">Invoice Total:</div>
                <div class="data">$xxx.xx</div>
            </div>

            <div class="grid-item">

            </div>

            <div class="grid-item">
                <g:link class="label edit right" controller="SOWInvoice" action="edit">Edit</g:link>
            </div>
        </div>

    </div>



</div>

</body>
</html>