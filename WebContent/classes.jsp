<!-- 
TO-DO: 
    - Calendar table from DB 
    - Add a class to your calendar 
-->

<!DOCTYPE html>
<%@page import="utilities.SetUp"%>
<html lang="en">
<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/grid.css">

</head>
<body>
    <!--========================================================
                              HEADER
    =========================================================-->
    <header>
        <div id="stuck_container" class="stuck_container">
            <div class="container">

                <div class="brand">
                    <h1 class="brand_name">
                        <a href="index.html">Girls KickBoxing</a>
                    </h1>
                </div>
                <nav class="nav">
                    <ul class="cn-menu">
                        <li class="active">
                            <a href="index.html">Home</a>
                        </li>
                        <li>
                            <a href="classes.jsp">Classes</a>
                        </li>
                        <li>
                            <a href="login.jsp">Login</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
     <!--========================================================
                              CONTENT
    =========================================================-->
    <main>
   		<div class="cn_main cn_main__offset-3">
            <div class="container">
            <% if (utilities.SetUp.isThereAnyClassesSet()) { %>
      		<h2><em>Check our upcoming classes</br>and save them on your calendar!</em></h2><p>(<%=  %>)</p>
      		<div class="row">
               <div class="grid_12">
                   <div class="divParent">
                    	   
                   </div>
               </div>
            </div>
   <%
   } else {
	   %><h2>There are no classes set up at the moment</h2><%
	   //check if Login is admin
	   if(session.getAttribute("loggedInUser") == "admin")
	   { %><div class="btn-wr">
           		<a class="" href="setClasses.jsp" data-type="send">Set this Month classes</a>
      	</div><% 
      	} else {
	   		SetUp.createAdmin();
	  	}
   }
   %>
            </div>
    	</div>
    </main>

<!--========================================================
                              FOOTER
=========================================================-->
    <footer>
        <div class="container">
            <ul class="socials">
                <li><a href="#"></a><img src="images/fb.png" alt="facebook"></li>
                <li><a href="#"></a><img src="images/twitter.png" alt="twitter"></li>
                <li><a href="#"></a><img src="images/instragram.png" alt="instragram"></li>
            </ul>
            <div class="copyright">© <span id="copyright-year"></span>
                <a href="#">CopyRight by CuinaEntreNosaltres</a>
            </div>
        </div>
    </footer>

</body>
</htmL>
