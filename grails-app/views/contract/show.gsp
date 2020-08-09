<%--
  Created by IntelliJ IDEA.
  User: pburg
  Date: 8/7/2020
  Time: 12:02 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Contract (RFP)</title>
    <meta name="layout" content="mainCMP"/>
</head>

<body>
<div class="bodyContainer">
    <h1>Contract (RFP)</h1>
    <p>Listed below is the information pertaining to the selected Contract (RFP).</p>
    <hr>

    <div class="infoContainer">
        <div class="grid-container">
            <div class="grid-item">
                <div class="label">Office:</div>
                <div class="data">${contract.office.name}</div>
            </div>

            <div class="grid-item">
                <div class="label">Contract Name:</div>
                <div class="data">${contract.name}</div>
            </div>

            <div class="grid-item">
                <div class="label">Contractor:</div>
                <div class="data">${contract.contractor.name}</div>
            </div>

            <div class="grid-item">
                <span id="expand" class="label expand right" onclick="openTab();">View More</span>
            </div>

        </div>

        <div class="closedContainers" id="closedContainers">

            <div class="grid-container">
                <div class="grid-item">
                    <div class="label">Contract Start Date:</div>
                    <div class="data date">${contract.startDate}</div>
                </div>

                <div class="grid-item">
                    <div class="label">Contract End Date:</div>
                    <div class="data date">${contract.endDate}</div>
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
                    <div class="label">Contract Amount:</div>
                    <div class="data currency">${contract.spendCap}</div>
                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">
                    <div class="label">POC First Name:</div>
                    <div class="data">${contract.pointOfContactFName}</div>
                </div>

                <div class="grid-item">
                    <div class="label">POC Last Name:</div>
                    <div class="data">${contract.pointOfContactLName}</div>
                </div>

                <div class="grid-item">
                    <div class="label">POC Email:</div>
                    <div class="data">${contract.pointOfContactEmail}</div>
                </div>

                <div class="grid-item">
                    <div class="label">POC Phone:</div>
                    <div class="data">${contract.pointOfContactPhone}</div>
                </div>

                <div class="grid-item">
                    <div class="label">Bid Type</div>
                    <div class="data">${contract.bidType.name}</div>
                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">

                </div>

                <div class="grid-item">
                    <g:link class="label" controller="contractInvoice" action="create" params="[contractID: contract.id]">Add Invoice</g:link>
                </div>

                <div class="grid-item">
%{--                    <g:link class="label" controller="contract" action="edit" params="[id: contract.id]">Edit</g:link>--}%
                </div>

                <div class="grid-item">
                    <form method="post" action="delete">
                        <input name="id" value="${contract.id}" hidden>
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

    <table class="infoTable fullWidth" id="invoiceInfo">
        <tr>
            <th>#</th>
            <th>Invoice #</th>
            <th>Invoice Total</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>

        <g:each status="i" var="invoice" in="${invList}">
            <tr class="sowRow">
                <td>${i + 1}</td>
                <td>${invoice.invoiceNumber}</td>
                <td id="invoiceAmount${i + 1}" class="currency">${invoice.amount}</td>
                <td>
                    <g:link controller="contractInvoice" action="edit" params="[id: invoice.id]">Edit</g:link>
                </td>

                <td>
                    <g:link controller="contractInvoice" action="delete" params="[id: invoice.id]">Delete</g:link>
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

                /*remove last character from end of invoiceRows variable*/
                invoiceRows = invoiceRows.substr(0, invoiceRows.length - 1);
                console.log('variable substring' + invoiceRows);
            }

            expanded = false;
        }

    }

    /*Once DOM is fully loaded, run script to format table cells with currencies*/
    window.addEventListener('DOMContentLoaded', (event) => {
        console.log("Function to format currencies called.");

        let currencyElements = document.getElementsByClassName("currency");

        for(let i = 0; i < currencyElements.length; i++){
            let value = currencyElements[i].innerHTML;

            /*numeral function is part of the numeral.js package*/
            value = numeral(value).format('$0,0.00');
            currencyElements[i].innerHTML = value;
        }

        // let table = document.getElementById("invoiceInfo");
        // console.log(table);
        // console.log(table.rows.length);
        //
        // for(let i = 1, row; row = table.rows[i]; i++){
        //     let invoiceAmountTD = 'invoiceAmount' + i;
        //
        //     if(table.rows[i].className == "sowRow"){
        //         console.log("Class name = sowRow = True");
        //         let invoiceTotal = document.getElementById(invoiceAmountTD).innerHTML;
        //
        //         /*numeral function is part of the numeral.js package*/
        //         invoiceTotal = numeral(invoiceTotal).format('$0,0.00');
        //         document.getElementById(invoiceAmountTD).innerHTML = invoiceTotal;
        //     } else{
        //         console.log("No");
        //     }
        // }
    });

    /*Once DOM is fully loaded, run script to format table cells with dates*/
    window.addEventListener('DOMContentLoaded', (event) => {
        console.log("Function to format currencies called.");

        let dateElements = document.getElementsByClassName("date");

        for(let i = 0; i < dateElements.length; i++){
            let date = dateElements[i].innerHTML;

            /*moment function is part of the moment.js package*/
            date = moment(date).format('M/D/YYYY');
            dateElements[i].innerHTML = date;
        }

    });

</script>

</body>
</html>