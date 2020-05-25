<%--
  Created by IntelliJ IDEA.
  User: pburg
  Date: 5/12/2020
  Time: 3:30 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Master Agreement</title>
    <meta name="layout" content="mainCMP"/>
</head>

<body>

<div class="bodyContainer">
    <h1>Add Master Agreement</h1>
    <p>Fill in the form below to add a Master Agreement.</p>
    <hr>

    <div class="container">

        <form method="POST" controller="masterAgreement" action="save">

            <div class="row">
                <div class="col-15">
                    <label for="office">Office:</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <select id="office" name="office" required>
                        <option value="1">District</option>
                        <option value="2">Kansas City</option>
                        <option value="3">Denver</option>
                    </select>
                </div>

            </div>

            <div class="row">
                <div class="col-15">
                    <label for="name">Contract Name:</label>
                </div>

                <div class="col-40">
                    <input type="text" id="name" name="name" required>
                </div>
            </div>

            <div class="row">
                <div class="col-15">
                    <label for="contractor">Contractor:</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <select id="contractor" name="contractor" required>
                        <option value="1">Test Contractor 1</option>
                        <option value="2">Test Contractor 2</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col-15">
                    <label for="pointOfContactFName">POC First Name:</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <input type="text" id="pointOfContactFName" name="pointOfContactFName" title="Point of Contact First Name" required>
                </div>

                <div class="col-15 rightAlignText">
                    <label for="pointOfContactLName">POC Last Name:</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <input type="text" id="pointOfContactLName" name="pointOfContactLName" title="Point of Contact Last Name" required>
                </div>
            </div>

            <div class="row">
                <div class="col-15">
                    <label for="pointOfContactPhone">POC Phone #:</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <input type="tel" id="pointOfContactPhone" name="pointOfContactPhone" title="Point of Contact Phone Number" pattern="[0-9]{3}[0-9]{3}[0-9]{4}" placeholder="XXXXXXXXX" required>
                </div>

            </div>

            <div class="row">
                <div class="col-15">
                    <label for="pointOfContactEmail">POC Email:</label>
                </div>

                <div class="col-45 removeLeftPadding">
                    <input type="text" id="pointOfContactEmail" name="pointOfContactEmail" title="Point of Contact Email" required>
                </div>

            </div>

            <div class="row">
                <div class="col-15">
                    <label for="startDate">Start Date:</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <input type="text" id="startDate" name="startDate" class="datepickerStartDate" data-date-format="yyyy-mm-dd" required>
                </div>

                <div class="col-15 rightAlignText">
                    <label for="endDate">End Date:</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <input type="text" id="endDate" name="endDate" class="datepickerEndDate" data-date-format="yyyy-mm-dd" required>
                </div>

            </div>

            <div class="row positionRel">
                <div class="col-15">
                    <label for="spendCap">Spend Cap $</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <input type="number" id="spendCap" name="spendCap" min="0" step="1"
                           pattern="^\\$?(([1-9](\\d*|\\d{0,2}(,\\d{3})*))|0)(\\.\\d{1,2})?$" title="Contract Spend Cap"required>
                </div>

                <div class="help-tip">
                    <p>If the Master Agreement does not have a committed spend, enter zero.</p>
                </div>

            </div>

            <div class="row">
                <div class="col-15">
                    <label for="bidType">Bid Type:</label>
                </div>

                <div class="col-45">
                    <select id="bidType" name="bidType" required>
                        <option value="1">Competitive - Formal</option>
                        <option value="2">Competitive - Informal</option>
                    </select>
                </div>
            </div>

            <input type="hidden" id="masterAgreementStatus" name="masterAgreementStatus" value="1">

            <div class="row">
                <input type="submit" value="Submit">
            </div>
        </form>

    </div>

</div>   <!--end body container-->

<script>

    /*Styles for datepickers*/
    $('.datepickerStartDate').datepicker({
        weekStart: 0,
        autoclose: true,
        todayHighlight: true,
        title: 'Contract Start Date'
    });

    $('.datepickerEndDate').datepicker({
        weekStart: 0,
        autoclose: true,
        todayHighlight: true,
        title: 'Contract End Date'
    });

</script>

</body>
</html>