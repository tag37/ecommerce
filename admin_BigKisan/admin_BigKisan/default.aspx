<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="admin_BigKisan._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Big Kisan</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="assets/bower_components/bootstrap/dist/css/bootstrap.min.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="assets/bower_components/font-awesome/css/font-awesome.min.css" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="assets/bower_components/Ionicons/css/ionicons.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="assets/css/AdminLTE.min.css" />
    <!-- iCheck -->
    <link rel="stylesheet" href="assets/plugins/iCheck/square/blue.css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic" />

    <style>
        .bg { /*background: -moz-linear-gradient(top, #f9c667 0%, #f79621 100%); 
			background: -webkit-linear-gradient(top, #f9c667 0%,#f79621 100%); /* Chrome10-25,Safari5.1-6 */
            background-image: url('assets/img/Agriculture.jpg');
            background-size: 100% 100%;
            background-repeat: no-repeat;
        }
    </style>


</head>
<body class="hold-transition login-page bg">
    <form id="form1" runat="server">
        <div class="login-box">
            <div class="login-logo">
                <a href="../../index2.html"><b>BigKisan</b> System Login</a>
            </div>
            <!-- /.login-logo -->
            <asp:Panel runat="server" ID="panel1" DefaultButton="btnSignIn">


                <div class="login-box-body">
                    <center>
					<img src="assets/img/logo.png" class="img-responsive" />
				</center>
                    <p class="login-box-msg">Sign in to start your session</p>
                    <div>
                        <div class="form-group has-feedback">
                            <asp:TextBox runat="server" type="mobile" class="form-control" placeholder="Username" ID="txtMobileNo" />
                            <span class="glyphicon glyphicon-phone form-control-feedback"></span>
                        </div>
                        <div class="form-group has-feedback">
                            <asp:TextBox runat="server" type="password" class="form-control" placeholder="Password" ID="txtPassword" />
                            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                        </div>
                        <div class="row">
                            <!-- /.col -->
                            <div class="col-xs-12">
                                <asp:LinkButton runat="server" class="btn btn-primary btn-block btn-flat" OnClick="btnSignIn_Click" ID="btnSignIn">Sign In</asp:LinkButton>
                            </div>
                            <!-- /.col -->
                        </div>
                        <div class="row">
                            <!-- /.col -->
                            <div class="col-xs-12">
                                <center><asp:Label runat="server" Text="" style="color:red;font-weight:bold" ID="txtMessage"></asp:Label></center>
                            </div>
                            <!-- /.col -->
                        </div>
                    </div>
                </div>

            </asp:Panel>
            <!-- /.login-box-body -->
        </div>
    </form>
    <!-- jQuery 3 -->
    <script src="assets/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>
