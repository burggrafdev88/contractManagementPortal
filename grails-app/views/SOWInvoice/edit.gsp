<%--
  Created by IntelliJ IDEA.
  User: pburg
  Date: 5/31/2020
  Time: 4:53 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Invoice</title>
    <meta name="layout" content="mainCMP"/>
</head>

<body>
<div class="bodyContainer">
    <h1>Edit Invoice</h1>
    <p>Edit invoice information below.</p>
    <hr>

    <div class="container">
        <form method="POST" controller="SOWInvoice" action="edit">

            <div class="row">
                <div class="col-15">
                    <label for="invoiceNumber">Invoice #:</label>
                </div>

                <div class="col-40">
                    <input type="text" id="invoiceNumber" name="invoiceNumber" required readonly>
                </div>

                <div class="editIcon">
                    <i id="editIcon" class="far fa-edit" title="Edit Invoice"></i>
                </div>
            </div>

            <div class="row positionRel">
                <div class="col-15">
                    <label for="amount">Invoice Amount $</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <input type="number" id="amount" name="amount" step=".01"
                           pattern="^\\$?(([1-9](\\d*|\\d{0,2}(,\\d{3})*))|0)(\\.\\d{1,2})?$" title="Enter Invoice Amount"required readonly>
                </div>

            </div>

            <!--Line below was copied and pasted over from another view. May need something similar once I begin working on controller code-->
            <input type="hidden" id="master_agreement_id" name="master_agreement_id" value="1">

            <div class="row">
                <input type="submit" value="Update">
            </div>
        </form>
    </div>

</div>

<script>
    let clicked = false;

    /*When icon edit icon is clicked, set readOnly/disabled values to false and input/icon colors to appropriate colors*/
    $( "#editIcon" ).click(function() {
        console.log("Edit called.")

        if(!clicked){
            $( "#invoiceNumber" ).prop('readonly', false)
            $( "#amount" ).prop('readonly', false)

            //Set input color to black
            $( "#invoiceNumber" ).css("color", "black")
            $( "#amount" ).css("color", "black")

            //Set icon to red
            $("#editIcon").css("color", "red")

            clicked = true;
        } else{
            $( "#invoiceNumber" ).prop('readonly', true)
            $( "#amount" ).prop('readonly', true)

            //Set input color to black
            $( "#invoiceNumber" ).css("color", "gray")
            $( "#amount" ).css("color", "gray")

            //Set icon to red
            $("#editIcon").css("color", "#7543b7")

            clicked = false;
        }

    });

</script>

</body>
</html>