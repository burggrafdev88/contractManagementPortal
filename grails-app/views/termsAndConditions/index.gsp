<%--
  Created by IntelliJ IDEA.
  User: pburg
  Date: 7/14/2020
  Time: 5:49 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Terms and Conditions - All</title>
    <meta name="layout" content="mainCMP"/>
</head>

<body>
<div class="bodyContainer">
    <h1>Terms and Conditions</h1>
    <hr>
    <p>Below are the Terms and Conditions with term lengths for the District.</p>

    <table class="infoTable">
        <tr>
            <th>#</th>
            <th>Office</th>
            <th>T&C Name</th>
            <th>Bid Type</th>
            <th>Contractor</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Spend to Date</th>
            <th>Spend Cap</th>
            <th>View</th>
        </tr>
        <g:each status="i" var="termsAndConditions" in="${t}">

            <tr>
                <td>${i + 1}</td>
                <td>${termsAndConditions.office.name}</td>
                <td>${termsAndConditions.name}</td>
                <td>${termsAndConditions.bidType.name}</td>
                <td>${termsAndConditions.contractor.name}</td>
                <td class="date">${termsAndConditions.startDate}</td>
                <td class="date">${termsAndConditions.endDate}</td>
                <td>Spend to Date</td>
                <td class="currency">$${termsAndConditions.spendCap}</td>
                <td>
                    <g:link controller="TermsAndConditions" action="show"
                            params="[id: termsAndConditions.id]">View</g:link>
                </td>
            </tr>

        </g:each>
    </table>

</div>

<script>
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