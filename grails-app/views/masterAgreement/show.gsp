<%--
  Created by IntelliJ IDEA.
  User: pburg
  Date: 5/19/2020
  Time: 6:32 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Master Agreement</title>
    <meta name="layout" content="mainCMP"/>
</head>

<body>
<div class="bodyContainer">
    <h1>Master Agreement</h1>
    <p>Listed below is the information pertaining to the selected Master Agreement.</p>
    <hr>

    <div class="infoContainer">
        <div class="grid-container">
            <div class="grid-item">
                <div class="label">Office:</div>
                <div class="data">Kansas City</div>
            </div>

            <div class="grid-item">
                <div class="label">Contract Name:</div>
                <div class="data">Mechanical Work</div>
            </div>

            <div class="grid-item">
                <div class="label">Contractor:</div>
                <div class="data">Morrissey Engineering</div>
            </div>

            <div class="grid-item">
                <span id="expand" class="label expand right" onclick="openTab();">View More</span>
            </div>

        </div>

        <div class="closedContainers" id="closedContainers">

            <div class="grid-container">
                <div class="grid-item">
                    <div class="label">Contract Start Date:</div>
                    <div class="data">05/23/2020</div>
                </div>

                <div class="grid-item">
                    <div class="label">Contract End Date:</div>
                    <div class="data">05/23/2023</div>
                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">
                    <div class="label">Spend to Date $</div>
                    <div class="data">$79,000</div>
                </div>

                <div class="grid-item">
                    <div class="label">Contract Amount $</div>
                    <div class="data">$100,000</div>
                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">
                    <div class="label">POC First Name:</div>
                    <div class="data">Philip</div>
                </div>

                <div class="grid-item">
                    <div class="label">POC Last Name:</div>
                    <div class="data">Burggraf</div>
                </div>

                <div class="grid-item">
                    <div class="label">POC Email:</div>
                    <div class="data">burggrafdev88@gmail.com</div>
                </div>

                <div class="grid-item">
                    <div class="label">POC Phone:</div>
                    <div class="data">913-208-0068</div>
                </div>

                <div class="grid-item">
                    <div class="label">Bid Type</div>
                    <div class="data">Competitive - Formal</div>
                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">
                    <g:link class="label" controller="masterAgreement" action="edit">Edit</g:link>
                </div>

                <div class="grid-item">
                    <g:link class="label" controller="SOW" action="create">Add Scope of Work</g:link>
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
            <th>SOW Name</th>
            <th>Invoice Total</th>
            <th>SOW Amount</th>
            <th>View</th>
            <th class="centered">Expand</th>
        </tr>

        <tr>
            <td>1</td>
            <td>Lorem Ipsom SOW Name</td>
            <td>$xxx.xx</td>
            <td>$xxx.xx</td>
            <td>
                <g:link controller="SOW" action="show">View</g:link>
            </td>
            <td class="centered">
                <i class="fas fa-angle-left" id="expandArrow" onclick="expandInvoices();" title="Expand Invoices"></i>
            </td>
        </tr>
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