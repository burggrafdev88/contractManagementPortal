<%--
  Created by IntelliJ IDEA.
  User: pburg
  Date: 4/22/2020
  Time: 6:50 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="applicationCMP.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <g:layoutHead/>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>

    <!--source for font icons-->
    <script src="https://kit.fontawesome.com/de549dec9f.js" crossorigin="anonymous"></script>

    <!-- Include Bootstrap Datepicker -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js"></script>

    <!--Include numeral.js for formatting numbers as currencies-->
    <script src="//cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>

    <!--Moment library for dates-->
    <script src="https://cdn.jsdelivr.net/npm/moment@2.27.0/moment.min.js"></script>
</head>

<body>
<div id="container">
    <div id="main">

        <!--Navigation bar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

            <!--navbar brand-->
            <a class="navbar-brand" href="#">Contract Management Portal</a>

            <!--toggler-->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02"
                    aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!--collapsable nav-items-->
            <div class="collapse navbar-collapse" id="navbarTogglerDemo02">

                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <!--first unordered item-->
                    <li class="nav-item dropdown">
                        <g:link class="nav-link dropdown-toggle" controller="masterAgreement" action="index" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">Master Agreements</g:link>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <g:link controller="masterAgreement" action="create" class="dropdown-item">Add</g:link>
                            <g:link controller="masterAgreement" action="index" class="dropdown-item">View All</g:link>
                        </div>
                    </li>

                    <!--second unordered item-->
                    <li class="nav-item dropdown">
                    <g:link class="nav-link dropdown-toggle" controller="masterAgreement" action="index" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false">Contracts (RFPs)</g:link>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
%{--                            <g:link controller="" action="" class="dropdown-item">Add</g:link>--}%
%{--                            <g:link controller="" action="" class="dropdown-item">View All</g:link>--}%
                        </div>
                    </li>

                    <!--third unordered item-->
                    <li class="nav-item dropdown">
                        <g:link class="nav-link dropdown-toggle" controller="masterAgreement" action="index" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false">Terms & Conditions</g:link>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <g:link controller="TermsAndConditions" action="create" class="dropdown-item">Add</g:link>
                            <g:link controller="TermsAndConditions" action="index" class="dropdown-item">View All</g:link>
                        </div>
                    </li>

                    <!--fourth unordered item-->
                    <li class="nav-item dropdown">
                        <g:link class="nav-link dropdown-toggle" controller="masterAgreement" action="index" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false">Contractors</g:link>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <g:link controller="contractor" action="create" class="dropdown-item">Add</g:link>
                            <g:link controller="contractor" action="index" class="dropdown-item">View All</g:link>
                        </div>
                    </li>
                </ul>

            </div>  <!--end collapsible nav items-->

        </nav>

        <g:layoutBody/>

    </div>

</div>


<div id="footer" class="footer" role="contentinfo">
    <p>Contract Management Portal</p>

</div>

</body>
</html>
