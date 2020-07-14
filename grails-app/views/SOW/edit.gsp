<%--
  Created by IntelliJ IDEA.
  User: pburg
  Date: 5/31/2020
  Time: 3:32 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Scope of Work</title>
    <meta name="layout" content="mainCMP"/>
</head>

<body>
<div class="bodyContainer">
    <h1>Edit Scope of Work</h1>
    <p>Edit Scope of Work information below.</p>
    <hr>

    <div class="container">
        <form method="POST" controller="SOW" action="../update">
            <!--hidden field for sow id-->
            <input name="id" value="${sow.id}" hidden>

            <div class="row">
                <div class="col-15">
                    <label for="name">SOW Name:</label>
                </div>

                <div class="col-40">
                    <input type="text" id="name" name="name" class="readOnly" value="${sow.name}" required readonly>
                </div>

                <div class="editIcon">
                    <i id="editIcon" class="far fa-edit" title="Edit Scope of Work"></i>
                </div>
            </div>

            <div class="row positionRel">
                <div class="col-15">
                    <label for="spendCap">SOW Amount $</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <input type="number" id="spendCap" name="spendCap" class="readOnly" min="0" step=".01" value="${sow.spendCap}"
                           pattern="^\\$?(([1-9](\\d*|\\d{0,2}(,\\d{3})*))|0)(\\.\\d{1,2})?$" title="Contract Spend Cap" required readonly>
                </div>

            </div>

%{--            <!--not sure if line below is needed, copied it over from create view-->--}%
%{--            <input type="hidden" id="master_agreement_id" name="master_agreement_id" value="1">--}%

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
            $( "#name" ).prop('readonly', false)
            $( "#spendCap" ).prop('readonly', false)

            //Set input color to black
            $( "#name" ).css("color", "black")
            $( "#spendCap" ).css("color", "black")

            //Set icon to red
            $("#editIcon").css("color", "red")

            clicked = true;
        } else{
            $( "#name" ).prop('readonly', true)
            $( "#spendCap" ).prop('readonly', true)

            //Set input color to black
            $( "#name" ).css("color", "gray")
            $( "#spendCap" ).css("color", "gray")

            //Set icon to red
            $("#editIcon").css("color", "#7543b7")

            clicked = false;
        }

    });

</script>

</body>
</html>