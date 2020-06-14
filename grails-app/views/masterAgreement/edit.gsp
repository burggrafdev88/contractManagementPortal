<%--
  Created by IntelliJ IDEA.
  User: pburg
  Date: 5/13/2020
  Time: 3:56 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Master Agreement</title>
    <meta name="layout" content="mainCMP"/>
</head>

<body>
<div class="bodyContainer">
    <h1>Edit Master Agreement</h1>
    <p>Edit Master Agreement information below.</p>
    <hr>

    <div class="container">

        <form method="POST" action="../update">
            <!--hidden field for master agreement id-->
            <input name="id" value="${masterAgreement.id}" hidden>

            <div class="row">
                <div class="col-15">
                    <label for="office">Office:</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <select id="office" class="readOnly" name="office" required disabled>
                        <option value="1">District</option>
                        <option value="2">Kansas City</option>
                        <option value="3">Denver</option>
                    </select>
                </div>

                <div class="editIcon">
                    <i id="editIcon" class="far fa-edit" title="Edit Master Agreement"></i>
                </div>

            </div>

            <div class="row">
                <div class="col-15">
                    <label for="name">Contract Name:</label>
                </div>

                <div class="col-40">
                    <input type="text" id="name" class="readOnly" name="name" value="${masterAgreement.name}" required readonly>
                </div>
            </div>

            <div class="row">
                <div class="col-15">
                    <label for="contractor">Contractor:</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <select id="contractor" name="contractor" required disabled>
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
                    <input type="text" id="pointOfContactFName" class="readOnly" name="pointOfContactFName" title="Point of Contact First Name" value="${masterAgreement.pointOfContactFName}" required readonly>
                </div>

                <div class="col-15 rightAlignText">
                    <label for="pointOfContactLName">POC Last Name:</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <input type="text" id="pointOfContactLName" class="readOnly" name="pointOfContactLName" title="Point of Contact Last Name" value="${masterAgreement.pointOfContactLName}" required readonly>
                </div>
            </div>

            <div class="row">
                <div class="col-15">
                    <label for="pointOfContactPhone">POC Phone #:</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <input type="tel" id="pointOfContactPhone" class="readOnly" name="pointOfContactPhone" title="Point of Contact Phone Number" pattern="[0-9]{3}[0-9]{3}[0-9]{4}" placeholder="XXXXXXXXX" value="${masterAgreement.pointOfContactPhone}" required readonly>
                </div>

            </div>

            <div class="row">
                <div class="col-15">
                    <label for="pointOfContactEmail">POC Email:</label>
                </div>

                <div class="col-45 removeLeftPadding">
                    <input type="text" id="pointOfContactEmail" class="readOnly" name="pointOfContactEmail" title="Point of Contact Email" value="${masterAgreement.pointOfContactEmail}" required readonly>
                </div>
            </div>

            <div class="row">
                <div class="col-15">
                    <label for="startDate">Start Date:</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <input type="text" id="startDate" name="startDate" class="datepickerStartDate readOnly" data-date-format="yyyy-mm-dd" value="${masterAgreement.startDate}" required disabled>
                </div>

                <div class="col-15 rightAlignText">
                    <label for="endDate">End Date:</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <input type="text" id="endDate" name="endDate" class="datepickerEndDate readOnly" data-date-format="yyyy-mm-dd" value="${masterAgreement.endDate}" required disabled>
                </div>
            </div>

            <div class="row positionRel">
                <div class="col-15">
                    <label for="spendCap">Spend Cap $</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <input type="number" id="spendCap" class="readOnly" name="spendCap" min="0" step="1"
                           pattern="^\\$?(([1-9](\\d*|\\d{0,2}(,\\d{3})*))|0)(\\.\\d{1,2})?$" title="Contract Spend Cap" value="${masterAgreement.spendCap}"required readonly>
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
                    <select id="bidType" name="bidType" disabled>
                        <option value="1">Competitive - Formal</option>
                        <option value="2">Competitive - Informal</option>
                    </select>
                </div>
            </div>

            <!--Will need to update later-->
            <input type="hidden" id="masterAgreementStatus" name="masterAgreementStatus" value="1">

            <div class="row">
                <input type="submit" value="Update">
            </div>
        </form>

    </div>

</div>

<script>

    let clicked = false;

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

    /*Set initial select value for drop downs*/
    $( document ).ready(function() {
        $('#office').val("${masterAgreement.office.id}");
        $('#bidType').val("${masterAgreement.bidType.id}");
        $('#contractor').val("${masterAgreement.contractor.id}");
        console.log('Set initial drop down values executed.');
    });

    /*When icon edit icon is clicked, set readOnly/disabled values to false and input/icon colors to appropriate colors*/
    $( "#editIcon" ).click(function() {
        console.log("Edit called.")
        
        if(!clicked){
            $( "#office" ).prop('disabled', false)
            $( "#name" ).prop('readonly', false)
            $( "#contractor" ).prop('disabled', false)
            $( "#pointOfContactFName" ).prop('readonly', false)
            $( "#pointOfContactLName" ).prop('readonly', false)
            $( "#pointOfContactPhone" ).prop('readonly', false)
            $( "#pointOfContactEmail" ).prop('readonly', false)
            $( "#startDate" ).prop('disabled', false)
            $( "#endDate" ).prop('disabled', false)
            $( "#spendCap" ).prop('readonly', false)
            $( "#bidType" ).prop('disabled', false)

            //Set input color to black
            $( "#office" ).css("color", "black")
            $( "#name" ).css("color", "black")
            $( "#contractor" ).css("color", "black")
            $( "#pointOfContactFName" ).css("color", "black")
            $( "#pointOfContactLName" ).css("color", "black")
            $( "#pointOfContactPhone" ).css("color", "black")
            $( "#pointOfContactEmail" ).css("color", "black")
            $( "#paymentType" ).css("color", "black")
            $( "#startDate" ).css("color", "black")
            $( "#endDate" ).css("color", "black")
            $( "#spendCap" ).css("color", "black")
            $( "#bidType" ).css("color", "black")

            //Set icon to red
            $("#editIcon").css("color", "red")

            clicked = true;
        } else{
            $( "#office" ).prop('disabled', true)
            $( "#name" ).prop('readonly', true)
            $( "#contractor" ).prop('disabled', true)
            $( "#pointOfContactFName" ).prop('readonly', true)
            $( "#pointOfContactLName" ).prop('readonly', true)
            $( "#pointOfContactPhone" ).prop('readonly', true)
            $( "#pointOfContactEmail" ).prop('readonly', true)
            $( "#startDate" ).prop('disabled', true)
            $( "#endDate" ).prop('disabled', true)
            $( "#spendCap" ).prop('readonly', true)
            $( "#bidType" ).prop('disabled', true)

            //Set input color to black
            $( "#office" ).css("color", "gray")
            $( "#name" ).css("color", "gray")
            $( "#contractor" ).css("color", "gray")
            $( "#pointOfContactFName" ).css("color", "gray")
            $( "#pointOfContactLName" ).css("color", "gray")
            $( "#pointOfContactPhone" ).css("color", "gray")
            $( "#pointOfContactEmail" ).css("color", "gray")
            $( "#paymentType" ).css("color", "gray")
            $( "#startDate" ).css("color", "gray")
            $( "#endDate" ).css("color", "gray")
            $( "#spendCap" ).css("color", "gray")
            $( "#bidType" ).css("color", "gray")

            //Set icon to red
            $("#editIcon").css("color", "#7543b7")

            clicked = false;
        }

    });

</script>

</body>
</html>