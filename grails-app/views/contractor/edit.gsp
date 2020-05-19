<%--
  Created by IntelliJ IDEA.
  User: pburg
  Date: 5/6/2020
  Time: 9:56 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Contractor</title>
    <meta name="layout" content="mainCMP"/>
</head>

<body>
<div class="bodyContainer">
    <h1>Edit Contractor</h1>
    <p>Edit contractor information below.</p>
    <hr>

    <div class="container">
        <form method="POST" action="../update">
            <!--hidden field for contractor id-->
            <input name="id" value="${params.id}" hidden>

            <div class="row">
                <div class="col-15">
                    <label for="name">Name:</label>
                </div>

                <div class="col-40">
                    <input class="readOnly" type="text" id="name" name="name" value="${params.name}" readonly>
                </div>

                <div class="editIcon">
                    <i id="editIcon" class="far fa-edit" title="Edit Contractor"></i>
                </div>
            </div>

            <div class="row">
                <div class="col-15">
                    <label for="street">Street:</label>
                </div>

                <div class="col-40">
                    <input class="readOnly" type="text" id="street" name="street" value="${params.street}" readonly>
                </div>
            </div>

            <div class="row">
                <div class="col-15">
                    <label for="city">City:</label>
                </div>

                <div class="col-40">
                    <input class="readOnly" type="text" id="city" name="city" value="${params.city}" readonly>
                </div>
            </div>

            <div class="row">
                <div class="col-15">
                    <label for="state">State:</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <select id="state" name="state" disabled>
                        <option value="AL">Alabama</option>
                        <option value="AK">Alaska</option>
                        <option value="AZ">Arizona</option>
                        <option value="AR">Arkansas</option>
                        <option value="CA">California</option>
                        <option value="CO">Colorado</option>
                        <option value="CT">Connecticut</option>
                        <option value="DE">Delaware</option>
                        <option value="DC">District Of Columbia</option>
                        <option value="FL">Florida</option>
                        <option value="GA">Georgia</option>
                        <option value="HI">Hawaii</option>
                        <option value="ID">Idaho</option>
                        <option value="IL">Illinois</option>
                        <option value="IN">Indiana</option>
                        <option value="IA">Iowa</option>
                        <option value="KS">Kansas</option>
                        <option value="KY">Kentucky</option>
                        <option value="LA">Louisiana</option>
                        <option value="ME">Maine</option>
                        <option value="MD">Maryland</option>
                        <option value="MA">Massachusetts</option>
                        <option value="MI">Michigan</option>
                        <option value="MN">Minnesota</option>
                        <option value="MS">Mississippi</option>
                        <option value="MO">Missouri</option>
                        <option value="MT">Montana</option>
                        <option value="NE">Nebraska</option>
                        <option value="NV">Nevada</option>
                        <option value="NH">New Hampshire</option>
                        <option value="NJ">New Jersey</option>
                        <option value="NM">New Mexico</option>
                        <option value="NY">New York</option>
                        <option value="NC">North Carolina</option>
                        <option value="ND">North Dakota</option>
                        <option value="OH">Ohio</option>
                        <option value="OK">Oklahoma</option>
                        <option value="OR">Oregon</option>
                        <option value="PA">Pennsylvania</option>
                        <option value="RI">Rhode Island</option>
                        <option value="SC">South Carolina</option>
                        <option value="SD">South Dakota</option>
                        <option value="TN">Tennessee</option>
                        <option value="TX">Texas</option>
                        <option value="UT">Utah</option>
                        <option value="VT">Vermont</option>
                        <option value="VA">Virginia</option>
                        <option value="WA">Washington</option>
                        <option value="WV">West Virginia</option>
                        <option value="WI">Wisconsin</option>
                        <option value="WY">Wyoming</option>
                    </select>
                </div>

                <div class="col-05 zip">
                    <label for="zip">Zip:</label>
                </div>
                <div class="col-13">
                    <input class="readOnly" type="text" id="zip" name="zip" value="${params.zip}" readonly>
                </div>

            </div>

            <div class="row">
                <div class="col-15">
                    <label for="paymentType">Payment Type:</label>
                </div>

                <div>
                    <select id="paymentType" name="paymentType" disabled>
                        <option value="1">ACH</option>
                        <option value="2">Credit Card</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <input type="submit" value="Submit">
            </div>
        </form>

    </div>

</div>

<script>
    /*Set initial select value for state*/
    $( document ).ready(function() {
        $("#state").val("${params.state}");
    });

    /*Set initial select value for paymentType*/
    $( document ).ready(function() {
        if(${params.paymentType == 'ACH'}){
            console.log("Payment type should be set to ACH.");
            $("#paymentType").val(${1});
        } else if(${params.paymentType == 'Credit Card'}){
            console.log("Payment type should be set to credit card");
            $("#paymentType").val(${2});
        } else{
            console.log("Error. No payment type was selected.");
        }
    });

    /*When icon edit icon is clicked, set readOnly/disabled values to false and input/icon colors to appropriate colors*/
    $( "#editIcon" ).click(function() {
        console.log("Edit called.")
        $( "#name" ).prop('readonly', false)
        $( "#street" ).prop('readonly', false)
        $( "#city" ).prop('readonly', false)
        $( "#state" ).prop('disabled', false)
        $( "#zip" ).prop('readonly', false)
        $( "#paymentType" ).prop('disabled', false)

        //Set input color to black
        $( "#name" ).css("color", "black")
        $( "#street" ).css("color", "black")
        $( "#city" ).css("color", "black")
        $( "#state" ).css("color", "black")
        $( "#zip" ).css("color", "black")
        $( "#paymentType" ).css("color", "black")

        //Set icon to red
        $("#editIcon").css("color", "red")
    });

</script>

</body>
</html>