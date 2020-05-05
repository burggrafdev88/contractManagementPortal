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
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true"
                           aria-expanded="false">
                            Master Agreements
                        </a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">District</a>
                            <a class="dropdown-item" href="#">Kansas City</a>
                            <a class="dropdown-item" href="#">Denver</a>
                            <a class="dropdown-item" href="#">Oklahoma City</a>
                            <a class="dropdown-item" href="#">Omaha</a>
                            <a class="dropdown-item" href="#">View All</a>
                        </div>
                    </li>

                    <!--second unordered item-->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true"
                           aria-expanded="false">
                            Contracts (RFPs)
                        </a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">District</a>
                            <a class="dropdown-item" href="#">Kansas City</a>
                            <a class="dropdown-item" href="#">Denver</a>
                            <a class="dropdown-item" href="#">Oklahoma City</a>
                            <a class="dropdown-item" href="#">Omaha</a>
                            <a class="dropdown-item" href="#">View All</a>
                        </div>
                    </li>

                    <!--third unordered item-->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true"
                           aria-expanded="false">
                            Terms & Conditions
                        </a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">District</a>
                            <a class="dropdown-item" href="#">Kansas City</a>
                            <a class="dropdown-item" href="#">Denver</a>
                            <a class="dropdown-item" href="#">Oklahoma City</a>
                            <a class="dropdown-item" href="#">Omaha</a>
                            <a class="dropdown-item" href="#">View All</a>
                        </div>
                    </li>

                    <!--fourth unordered item-->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true"
                           aria-expanded="false">
                            Contractors
                        </a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">Add</a>
                            <a class="dropdown-item" href="#">View All</a>
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


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

</body>
</html>
