<%--
  Created by IntelliJ IDEA.
  User: pburg
  Date: 4/29/2020
  Time: 7:39 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add a Contractor</title>
    <meta name="layout" content="mainCMP"/>
</head>

<body>

<div class="bodyContainer">
    <h1>Add Contractor</h1>
    <p>Fill in the form below to add a contractor.</p>
    <hr>

    <form method="POST" action="save">

        <!--each label and input is placed in a div so they display on a single line-->
        <div class="formField">
            <label for="nameID">Name:</label>
            <input type="text" id="nameID" name="name">
%{--            <g:textField id="nameID" name="name"/>--}%
        </div>

        <div class="formField">
            <label for="streetID">Street:</label>
            <input type="text" id="streetID" name="street">
        </div>

        <div class="formField">
            <label for="cityID">City:</label>
            <input type="text" id="cityID" name="city">
        </div>

        <div class="formFieldStateAndZip">
            <label for="state">State</label>
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

            <label for="zipID" class="zip">Zip:</label>
            <input type="text" id="zipID" name="zip">

        </div>

        <!--
        <label for="paymentID">Payment Type:</label>

        <label for="statusID">Status:</label>

        <label for="coiID">Certificate of Insurance:</label>  -->

        <button class="submit" type="submit">Submit</button>


    </form>
</div>   <!--end body container-->

</body>
</html>