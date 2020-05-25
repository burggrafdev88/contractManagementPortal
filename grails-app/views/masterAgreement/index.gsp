<%--
  Created by IntelliJ IDEA.
  User: pburg
  Date: 5/17/2020
  Time: 2:02 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Master Agreements - All</title>
    <meta name="layout" content="mainCMP"/>
</head>

<body>
<div class="bodyContainer">
    <h1>Master Agreements</h1>
    <hr>
    <p>Below are the Master Agreements for the 10th District.</p>

    <table class="infoTable">
        <tr>
            <th>#</th>
            <th>Office</th>
            <th>Contract Name</th>
            <th>Bid Type</th>
            <th>Contractor</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Spend to Date</th>
            <th>Spend Cap</th>
            <th>View/Edit</th>
        </tr>
        <g:each status="i" var="masterAgreement" in="${m}">

            <tr>
                <td>${i + 1}</td>
                <td>${masterAgreement.office.name}</td>
                <td>${masterAgreement.name}</td>
                <td>${masterAgreement.bidType.name}</td>
                <td>${masterAgreement.contractor.name}</td>
                <td>${masterAgreement.startDate}</td>
                <td>${masterAgreement.endDate}</td>
                <td>Spend to Date</td>
                <td>$${masterAgreement.spendCap}</td>
                <td>
                    <g:link controller="MasterAgreement" action="show"
                            params="[id: masterAgreement.id, officeID: masterAgreement.office.id, contractName: masterAgreement.name, bidType: masterAgreement.bidType.id,
                                     contractorID: masterAgreement.contractor.id, startDate: masterAgreement.startDate,
                                     endDate: masterAgreement.endDate, spendCap: masterAgreement.spendCap, pointOfContactFName: masterAgreement.pointOfContactFName,
                            pointOfContactLName: masterAgreement.pointOfContactLName, pointOfContactEmail: masterAgreement.pointOfContactEmail,
                            pointOfContactPhone: masterAgreement.pointOfContactPhone]">View</g:link>
                </td>
            </tr>

        </g:each>
    </table>



</div>

</body>
</html>