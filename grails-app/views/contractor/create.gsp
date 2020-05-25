<%--
  Created by IntelliJ IDEA.
  User: pburg
  Date: 4/29/2020
  Time: 7:39 AM
--%>

<%@ page import="contractmanagementportal.PaymentType" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Contractor</title>
    <meta name="layout" content="mainCMP"/>
</head>

<body>

<div class="bodyContainer">
    <h1>Add Contractor</h1>
    <p>Fill in the form below to add a contractor.</p>
    <hr>

    <div class="container">

        <form method="POST" action="save">

            <div class="row">
                <div class="col-15">
                    <label for="name">Name:</label>
                </div>

                <div class="col-40">
                    <input type="text" id="name" name="name" value="Philip">
                </div>
            </div>

            <div class="row">
                <div class="col-15">
                    <label for="street">Street:</label>
                </div>

                <div class="col-40">
                    <input type="text" id="street" name="street">
                </div>
            </div>

            <div class="row">
                <div class="col-15">
                    <label for="city">City:</label>
                </div>

                <div class="col-40">
                    <input type="text" id="city" name="city">
                </div>

            </div>

            <div class="row">
                <div class="col-15">
                    <label for="state">State:</label>
                </div>

                <div class="col-15 removeLeftPadding">
                    <select id="state" name="state">
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
                    <input type="text" id="zip" name="zip">
                </div>

            </div>

            <div class="row">
                <div class="col-15">
                    <label for="paymentType">Payment Type:</label>
                </div>

                <div>
                    <select id="paymentType" name="paymentType">
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

    <!--old form is below...has fields I will probably need to add into my new form later on-->
    <!--

        <div class="formFieldCOIAndDate">
            <div class="formFieldCOI">
                <label for="coiID">COI:</label>
                <input type="file" id="coiID" name="coi" accept="application/pdf">
                <div class="help-tip">
                    <p>Please attach a PDF copy of the Contractor's Certificate of Insurance (COI).</p>
                </div>
            </div>

            <div class="formFieldExpDate">
                <label for="datepicker" class="dateLabel">Exp Date:</label>
                <input id="datepicker" type="date" name="expiration_date">
                <div class="help-tip">
                    <p>Please enter the expiration date of the Contractor's Certificate of Insurance (COI).</p>
                </div>
            </div>

        </div>

        <div class="formField">
            <label for="paymentID">Payment Type:</label>
            <select id="paymentID" name="paymentType">
                <option value="1">ACH</option>
                <option value="2">Credit Card</option>
            </select>
        </div>

        <div class="formField">
            <label for="paymentID">Payment Type:</label>
            g:select id="paymentID" name="name" from="" optionKey="id" optionValue="name" noSelection="Please Select..">
            /g:select>
        </div>

    </form>  -->

</div>   <!--end body container-->

</body>
</html>