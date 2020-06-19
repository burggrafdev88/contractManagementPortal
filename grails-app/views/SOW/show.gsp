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
                <div class="data">${sow.name}</div>
            </div>

            <div class="grid-item">
                <div class="label">Total Spend:</div>
                <div class="data">Placeholder #</div>
            </div>

            <div class="grid-item">
                <div class="label">SOW Amount:</div>
                <div class="data">$${sow.spendCap}</div>
            </div>

            <div class="grid-item">
                <span id="expand" class="label expand right" onclick="openTab();">View More</span>
            </div>

        </div>

        <div class="closedContainers" id="closedContainers">
            <div class="grid-container">
                <div class="grid-item">
                    <g:link class="label" controller="SOWInvoice" action="create" params="[sowID: sow.id]">Add Invoice</g:link>
                </div>

                <div class="grid-item">
                    <g:link class="label" controller="SOW" action="edit" params="[id: sow.id]">Edit</g:link>
                </div>

                <div class="grid-item">
                    <g:link class="label" controller="SOW" action="delete" params="[id: sow.id]">Delete</g:link>
                </div>

                <div class="grid-item">
                    <span class="label hide right" onclick="closeTab();">Close</span>
                </div>
            </div>
        </div>

    </div>

    <table class="infoTable fullWidth">
        <tr>
            <th>#</th>
            <th>Invoice #</th>
            <th>Invoice Total</th>
            <th>SOW Amount</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>

        <g:each status="j" var="i" in="${inv}">
            <tr>
                <td>${j + 1}</td>
                <td>${i.invoiceNumber}</td>
                <td>Place holder data</td>
                <td>${i.amount}</td>
                <td>
                    <g:link controller="SOWInvoice" action="edit" params="[id: i.id]">Edit</g:link>
                </td>
                <td>
                    <g:link controller="SOWInvoice" action="delete" params="[id: i.id]">Delete</g:link>
                </td>

            </tr>
        </g:each>

    </table>

</div>

<script>

    let expanded = false;

    // Hide all elements with class="containerTab", except for the one that matches the clickable grid column
    function openTab() {
        $( "#closedContainers" ).css("display", "block")
        $( "#expand" ).css("display", "none")
    }

    function closeTab(){
        $( "#closedContainers" ).css("display", "none")
        $( "#expand" ).css("display", "block")
    }

    function expandInvoices(){
        if(!expanded){
            console.log('Expand invoices function called to open.')

            $('#expandArrow').css({'transform': 'rotate(-90deg)'});

            // let expandArrow = $('#expandArrow');
            // expandArrow.animate({
            //     '-webkit-transform': 'rotate(' + -90 + 'deg)',
            //     '-moz-transform': 'rotate(' + -90 + 'deg)',
            //     '-ms-transform': 'rotate(' + -90 + 'deg)',
            //     '-o-transform': 'rotate(' + -90 + 'deg)',
            //     'transform': 'rotate(' + -90 + 'deg)',
            // }, 2000);
            expanded = true;

        } else{
            console.log('Expand invoices function called to close.')

            $('#expandArrow').css({'transform': 'rotate(0)'});
            expanded = false;

        }


    }

</script>

</body>
</html>