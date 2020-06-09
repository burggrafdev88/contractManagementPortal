<%--
  Created by IntelliJ IDEA.
  User: pburg
  Date: 5/24/2020
  Time: 11:38 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Scope of Work</title>
    <meta name="layout" content="mainCMP"/>
</head>

<body>
<div class="bodyContainer">
    <h1>Add Scope of Work</h1>
    <p>Fill in the form below to add a Scope of Work.</p>
    <hr>

    <div class="container">
        <form method="POST" controller="SOW" action="save">

            <div class="row">
                <div class="col-15">
                    <label for="name">SOW Name:</label>
                </div>

                <div class="col-40">
                    <input type="text" id="name" name="name" required>
                </div>
            </div>

            <div class="row positionRel">
                <div class="col-15">
                    <label for="spendCap">SOW Amount $</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <input type="number" id="spendCap" name="spendCap" min="0" step="1"
                           pattern="^\\$?(([1-9](\\d*|\\d{0,2}(,\\d{3})*))|0)(\\.\\d{1,2})?$" title="Contract Spend Cap"required>
                </div>

            </div>

            <input type="hidden" id="masterAgreement" name="masterAgreement" value="${params.masterAgreementID}">

            <div class="row">
                <input type="submit" value="Submit">
            </div>
        </form>
    </div>


</div>

</body>
</html>