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
                <div class="data">${masterAgreement.office.name}</div>
            </div>

            <div class="grid-item">
                <div class="label">Contract Name:</div>
                <div class="data">${masterAgreement.name}</div>
            </div>

            <div class="grid-item">
                <div class="label">Contractor:</div>
                <div class="data">${masterAgreement.contractor.name}</div>
            </div>

            <div class="grid-item">
                <span id="expand" class="label expand right" onclick="openTab();">View More</span>
            </div>

        </div>

        <div class="closedContainers" id="closedContainers">

            <div class="grid-container">
                <div class="grid-item">
                    <div class="label">Contract Start Date:</div>
                    <div class="data">${masterAgreement.startDate}</div>
                </div>

                <div class="grid-item">
                    <div class="label">Contract End Date:</div>
                    <div class="data">${masterAgreement.endDate}</div>
                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">
                    <div class="label">Spend to Date $</div>
                    <div class="data">PLACEHOLDER</div>
                </div>

                <div class="grid-item">
                    <div class="label">Contract Amount $</div>
                    <div class="data">${masterAgreement.spendCap}</div>
                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">
                    <div class="label">POC First Name:</div>
                    <div class="data">${masterAgreement.pointOfContactFName}</div>
                </div>

                <div class="grid-item">
                    <div class="label">POC Last Name:</div>
                    <div class="data">${masterAgreement.pointOfContactLName}</div>
                </div>

                <div class="grid-item">
                    <div class="label">POC Email:</div>
                    <div class="data">${masterAgreement.pointOfContactEmail}</div>
                </div>

                <div class="grid-item">
                    <div class="label">POC Phone:</div>
                    <div class="data">${masterAgreement.pointOfContactPhone}</div>
                </div>

                <div class="grid-item">
                    <div class="label">Bid Type</div>
                    <div class="data">${masterAgreement.bidType.name}</div>
                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">
                    <g:link class="label" controller="SOW" action="create" params="[masterAgreementID: masterAgreement.id]">Add Scope of Work</g:link>
                </div>

                <div class="grid-item">
                    <g:link class="label" controller="masterAgreement" action="edit" params="[id: masterAgreement.id]">Edit</g:link>
                </div>

                <div class="grid-item">
                    <form method="post" action="delete">
                        <input name="id" value="${masterAgreement.id}" hidden>
                        <button type="submit" class="link-button">
                            Delete
                        </button>
                    </form>
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

        <g:each status="i" var="s" in="${sow}">
            <tr>
                <td>${i + 1}</td>
                <td>${s.name}</td>
                <td>$${s.sowInvoices.amount.sum()}</td>
                <td>$${s.spendCap}</td>
                <td>
                    <g:link controller="SOW" action="show" params="[id: s.id]">View</g:link>
                </td>
                <td class="centered">
                    <i class="fas fa-angle-left" id="expandArrow${i}" onclick="expandInvoices(${i}, ${s.getSowInvoices().size()});" title="Expand Invoices"></i>
                </td>
            </tr>

            <g:each status="j" var="inv" in="${s.getSowInvoices()}">

                <tr id="invoiceRows${i}${j}" class="invoiceRows">
                    <td>INV ${j + 1}</td>
                    <td>INV #: ${inv.invoiceNumber}</td>
                    <td>$${inv.amount}</td>
                    <td></td>
                    <td>Edit</td>
                    <td>Delete</td>
                </tr>

            </g:each>

        </g:each>

    </table>

</div>

<script>
    let expanded = false;
    // let elem = document.getElementById('invoiceRows0');
    // let visibility = window.getComputedStyle(elem, null).getPropertyValue("visibility");
    // console.log(visibility)

    // Hide all elements with class="containerTab", except for the one that matches the clickable grid column
    function openTab() {
        $( "#closedContainers" ).css("display", "block")
        $( "#expand" ).css("display", "none")
    }

    function closeTab(){
        $( "#closedContainers" ).css("display", "none")
        $( "#expand" ).css("display", "block")
    }

    //function to expand and collapse invoice rows under each SOW.
    function expandInvoices(i, sowInvoices){
        if(!expanded){
            console.log('Expand invoices function called to open.')

            /*initialize expandArrow variable and rotate element*/
            let expandArrow = '#expandArrow' + i;
            $(expandArrow).css({'transform': 'rotate(-90deg)'});

            /*declare increment variable and variable to be used in jQuery in order to collapse / show invoices*/
            let j;
            let invoiceRows = '#invoiceRows' + i;
            console.log('sowInvoices: ' + sowInvoices);

            /*loop through sowInvoices variable, make invoices visible*/
            for(j = 0; j < sowInvoices; j++){
                invoiceRows += j;
                console.log('variable' + invoiceRows);

                $( invoiceRows ).css("visibility", "visible");
                // let elem = document.getElementById('invoiceRows0');
                // let visibility = window.getComputedStyle(elem, null).getPropertyValue("visibility");
                //
                // console.log(visibility);

                /*remove last character from end of invoiceRows variable*/
                invoiceRows = invoiceRows.substr(0, invoiceRows.length - 1);
                console.log('variable substring' + invoiceRows);
            }

            expanded = true;

        } else{
            console.log('Expand invoices function called to close.')

            /*initialize expandArrow variable and rotate element*/
            let expandArrow = '#expandArrow' + i;
            $(expandArrow).css({'transform': 'rotate(0deg)'});

            /*declare increment variable and variable to be used in jQuery in order to collapse / show invoices*/
            let j;
            let invoiceRows = '#invoiceRows' + i;
            console.log('sowInvoices: ' + sowInvoices);

            /*loop through sowInvoices variable, make invoices visible*/
            for(j = 0; j < sowInvoices; j++){
                invoiceRows += j;
                console.log('variable' + invoiceRows);

                $( invoiceRows ).css("visibility", "collapse");
                // let elem = document.getElementById('invoiceRows0');
                // let visibility = window.getComputedStyle(elem, null).getPropertyValue("visibility");
                //
                // console.log(visibility);

                /*remove last character from end of invoiceRows variable*/
                invoiceRows = invoiceRows.substr(0, invoiceRows.length - 1);
                console.log('variable substring' + invoiceRows);
            }

            expanded = false;
        }

    }


</script>

</body>
</html>