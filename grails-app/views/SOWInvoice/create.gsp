<%--
  Created by IntelliJ IDEA.
  User: pburg
  Date: 5/31/2020
  Time: 4:12 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Invoice</title>
    <meta name="layout" content="mainCMP"/>
</head>

<body>
<div class="bodyContainer">
    <h1>Add Invoice</h1>
    <p>Fill in the form below to add an Invoice to the selected Scope of Work.</p>
    <hr>

    <div class="container">
        <form method="POST" controller="SOWInvoice" action="save">

            <div class="row">
                <div class="col-15">
                    <label for="invoiceNumber">Invoice #:</label>
                </div>

                <div class="col-40">
                    <input type="text" id="invoiceNumber" name="invoiceNumber" required>
                </div>
            </div>

            <div class="row positionRel">
                <div class="col-15">
                    <label for="amount">Invoice Amount $</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <input type="number" id="amount" name="amount" step=".01"
                           pattern="^\\$?(([1-9](\\d*|\\d{0,2}(,\\d{3})*))|0)(\\.\\d{1,2})?$" title="Enter Invoice Amount"required>
                </div>

            </div>

            <!--Line below was copied and pasted over from another view. May need something similar once I begin working on controller code-->
            <input type="hidden" id="sow" name="sow" value="${params.sowID}">

            <div class="row">
                <input type="submit" value="Submit">
            </div>
        </form>
    </div>

</div>

</body>
</html>