<%@ page language="java" import="java.util.*" contentType="text/html; charset=Utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <meta charset=utf-8 />

    <link href="https://manage.sleekr.co/assets/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="https://manage.sleekr.co/assets/css/style.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="https://manage.sleekr.co/assets/css/develop.css" media="screen">

    <link rel="shortcut icon" href="https://manage.sleekr.co/assets/ico/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="https://manage.sleekr.co/assets/ico/apple-touch-icon.png" />
    <link rel="apple-touch-icon" sizes="57x57" href="https://manage.sleekr.co/assets/ico/apple-touch-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="https://manage.sleekr.co/assets/ico/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="https://manage.sleekr.co/assets/ico/apple-touch-icon-76x76.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="https://manage.sleekr.co/assets/ico/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="https://manage.sleekr.co/assets/ico/apple-touch-icon-120x120.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="https://manage.sleekr.co/assets/ico/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="https://manage.sleekr.co/assets/ico/apple-touch-icon-152x152.png" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://manage.sleekr.co/assets/js/html5shiv.js"></script>
    <script src="https://manage.sleekr.co/assets/js/respond.min.js"></script>
    <![endif]-->
</head>
<body class="menu-xs-close">

<div class="container-lg centered">
    <div class="col-xs-12 col-md-12 col-lg-10 col-lg-offset-1">
        <div class="panel-green panel-half">
            <div class="row">
                <div class="col-md-6 hidden-xs hidden-sm">
                    <div class="p30">
                        <label>What’s new</label>
                        <h2 class="txt-green">Staff actively involved in HR admin</h2>
                        <div class="row mt20">
                            <div class="col-xs-5">
                                <img src="https://manage.sleekr.co/assets/img/img-login-info.png" alt="" class="img-responsive"/>
                            </div>
                            <div class="col-xs-7">
                                <p>
                                    Invite your employees into Sleekr to allow them actively involve in HR Admin. Staff will be able to update their personal info, emergency contact, bank accounts, short bio, and contact details.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel-form p30">
                        <div class="tac mt10">
                            <h1 class="s36">Welcome back.</h1>
                        </div>
                        <div class="mt20">


                            <form action="/authenticate" method="post">
                                <input type="hidden" name="_token" value="0AdOArYhXNtrKb49aEwLFiQNyi5MFZPAHq5tlThz">
                                <input type="hidden" name="_next" value="">

                                <div class="form-group"><label class="mb5 email"> Email Address</label><input class="form-control form-lg" id="email" placeholder="Email Address" name="email" type="text"></div>

                                <div class="form-group"><label class="mb5 password"> Password</label><input class="form-control form-lg" id="password" placeholder="Password" name="password" type="password" value=""></div>

                                <div class="tar mt40 mb10">
                                    <a class="btn txt-link mr5" href="https://manage.sleekr.co/forgot">Forgot your password?</a>
                                    <button data-loading-text="Processing..." class="btn btn-submit btn-lg" type="submit">Log In</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix">&nbsp;</div>
    <div class="col-xs-12 tac hidden-md hidden-lg">
        <a href="https://manage.sleekr.co/sign-up">Create account now</a>
    </div>
</div>

<!-- javascript -->
<script src="https://manage.sleekr.co/assets/js/jquery.js"></script>
<script src="https://manage.sleekr.co/assets/js/bootstrap.min.js"></script>
<script src="https://manage.sleekr.co/assets/js/sleekr.js"></script>
<script src="https://manage.sleekr.co/assets/js/platform.js"></script>

<script>
    $('form').on('submit', function() {
        $('button[type=submit]', $(this)).text('Please Wait...').attr('disabled', 'disabled');
    });
</script>

</body>

</html>
