<!DOCTYPE html>
<html lang="en">

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
 
     <!-- Site Metas -->
    <title>HostCloud - Responsive HTML5 Template</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Colors CSS -->
    <link rel="stylesheet" href="css/colors.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!-- Modernizer for Portfolio -->
    <script src="js/modernizer.js"></script>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body class="host_version"> 

	<!-- Modal -->
		<!-- LOADER -->
	<div id="preloader">
		<div class="loading">
			<div class="finger finger-1">
				<div class="finger-item">
				<span></span><i></i>
				</div>
			</div>
  			<div class="finger finger-2">
				<div class="finger-item">
				<span></span><i></i>
				</div>
			</div>
  			<div class="finger finger-3">
				<div class="finger-item">
				<span></span><i></i>
				</div>
			</div>
  			<div class="finger finger-4">
				<div class="finger-item">
				<span></span><i></i>
				</div>
			</div>
  			<div class="last-finger">
				<div class="last-finger-item"><i></i></div>
			</div>
		</div>
	</div>
	<!-- END LOADER -->

    <header class="header header_style_01">
        <nav class="megamenu navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="images/logos/logo-hosting.png" alt="image"></a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                   <ul class="nav navbar-nav">
                        <li><a href="index1.html">Home</a></li>
                        <li><a href="feature1.html">All phones </a></li>
                        <li><a href="camera1.html">Camera Phones</a></li>
                        <li><a href="domain1.jsp">Comparison</a></li>
                        <li><a href="index.html">Logout</a></li>
                        <li><a href="profile.jsp">My Profile</a></li>
                    </ul>
                    
                </div>
            </div>
        </nav>
    </header>
	
	<div class="all-title-box" style="background-image:url('images/bg2.jpg');width:100%;height:100%;background-repeat: no-repeat;background-size: cover;">
		<div class="container text-center">
		</div>
	</div>
	
    <div id="support" class="section wb">
        <div class="container">
            
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<form method="post">
<%@ page import ="java.io.*"%>
<%@ page import="java.sql.*"%>
<%
try
{

String username=request.getParameter("uname");
String password=request.getParameter("pwd");
     Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","june","june");
	 PreparedStatement pst=co.prepareStatement("select *from usereg where username=? and password=?");
	 pst.setString(1,username);
	 pst.setString(2,password);
     ResultSet rs=pst.executeQuery();
     if(rs.next())
     {
    	 session.setAttribute("uname",username);
 %>
    	<a href="index1.html"><center><font size="10" color="orange"><strong>WELCOME </strong><%=username%></font><br>
    	</a></center>
    	 <%
     }
     else
     {
    	 %> 
<center><p><font size="10" color="red">Try Again !!!</font></p>
                        <h2><a href="login.html">Sign up</a></center></h2>

    	 
    	 <%
     }
     co.close();

}
  catch(Exception e)
   {
     out.println(e);
   }
%>
</form>
                               </div><!-- end container -->
    </div><!-- end section -->
<footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <img src="images/logos/logo-hosting-light.png" alt="">
                            <small>Mobile Compare</small>
                        </div>
                        <p>Best way to compare your phones in a advance manner</p>
                        </div><!-- end clearfix -->
                </div><!-- end col -->

				<div class="col-md-3 col-sm-3 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Information Link</h3>
                        </div>
                        <ul class="footer-links">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="login.html">Login</a></li>
                            <li><a href="compare.html">comapre</a></li>
							<li><a href="#overviews">About</a></li>
							<li><a href="contact.html">Feedback</a></li>
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
				
                <div class="col-md-3 col-sm-3 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Contact Details</h3>
                        </div>

                        <ul class="footer-links">
                            <li><a href="mailto:#">info@yoursite.com</a></li>
                            <li><a href="#">www.yoursite.com</a></li>
                            <li>+61 3 8376 6284</li>
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->

                </div><!-- end row -->
        </div><!-- end container -->
    </footer><!-- end footer -->

    <div class="copyrights" style="height:20px;">
        <div class="container">
            <div class="footer-distributed">
                <div class="footer-left">
                    <p class="footer-company-name">All Rights Reserved. &copy; 2018 Design By : <a href="https://html.design/">html design</a></p>
                </div>

                            </div>
        </div><!-- end container -->
    </div><!-- end copyrights -->

    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyCKjLTXdq6Db3Xit_pW_GK4EXuPRtnod4o"></script>
	<!-- Mapsed JavaScript -->
	<script src="js/mapsed.js"></script>
	<script src="js/01-custom-places-example.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>

</body>
</html>


