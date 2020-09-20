<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<meta charset="utf-8">
        <meta name="viweport" content="width=device-width, initail-scale=1.0">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" type="img/png" href="images/Lasirilogo.png" alt="Image placeholder">
        <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Bitter&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Anton&family=Josefin+Sans&family=Karla&family=Montserrat:wght@300&family=Open+Sans:ital,wght@1,300&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Karla&family=Montserrat:wght@300&family=Open+Sans:ital,wght@1,300&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Karla&family=Montserrat:wght@300&family=Open+Sans:ital,wght@1,300&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Montserrat:wght@300&family=Open+Sans:ital,wght@1,300&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&family=Open+Sans:ital,wght@1,300&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="home.css">
    
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<%
			if(session.getAttribute("username")== null && session.getAttribute("password")== null)
			{
				response.sendRedirect("login.jsp");
			}
		%>

<div class="sidenav">
    <img src="images/avater.jpg" alt="">
    <%
    	
    String name = (String)session.getAttribute("username");
    %>
    <div class="jclass">
        <p class="k"><%
            out.println(name);
            
            %></p>
    </div>
    
 
   
  <a href="home.jsp" style="text-decoration: none;">Courses</a>
  <a href="#services" style="text-decoration: none;">Teachers</a>
  <a href="teachers-login.jsp" style="text-decoration: none;">Add Courses</a>
  <a href="#contact"style="text-decoration: none;">Contact</a>
  <button class="dropdown-btn">Courses Format 
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-container">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
  </div>
   <form action="<%=request.getContextPath()%>/LogoutServlet" method = "GET">
      <input type="submit" value="Log out" class="dropdown-btn">
  </form>
</div>

<div class="left">
    <div class="main">
        <h2>TAKE THE FIRST STEP</h2><br>
        <h1>OF YOUR JOURNEY TO SUCCESS</h1>

        <a href="login.jsp"><button class="login">Login</button></a>
        
       
      </div>
      <p class="main-text"> Learn Anything Anyware Anytime </p>
      <div class="row">
        <div class="col-md-2 group">
            
        </div>
          <div class="col-md-2 group1">
              <a href="science.jsp" style="text-decoration: none; color: rgb(255, 255, 255) !important;"><p><i class="fa fa-flask" ></i><br></p>
                <p class="secend">Science</p></a>
          </div>
          <div class="col-md-2 group2">
            <a href="" style="text-decoration: none; color: rgb(255, 255, 255) !important;">
            <p><i class="fa fa-calculator" aria-hidden="true"></i><br></p>
            <p class="secend">Mathematics</p></a>
        </div>
        <div class="col-md-2 group3">
            <a href="" style="text-decoration: none; color: rgb(255, 255, 255) !important;">
            <p><i class="fa fa-bar-chart" aria-hidden="true"></i><br></p>
            <p class="secend">Commerce</p></a>
        </div>
        <div class="col-md-2 group4">
            <a href="" style="text-decoration: none; color: rgb(255, 255, 255) !important;">
            <p><i class="fa fa-laptop" aria-hidden="true"></i><br></p>
            <p class="secend">Computing</p></a>
        </div>
        <div class="col-md-2 group">
           
        </div>
      
      </div>
      <div class="row co">
         <div class="col-md-8">
            <p class="titles">RESENT COURSES</p>
         </div>
         <div class="col-md-4">
             
            <input type="text" id="search" placeholder="Search courses">
         </div>
      </div>
      <div class="row">
        <div class="col-md-4 ">
            <div class="box">
                <a href="" class="box-link" style="text-decoration: none;">
                <img src="images/maths.jpg" class="co-img">
            <p class="box-text1">Mathematics</p>
            
            <p class="box-text2">How to be an Engineer?</p>
            <hr>
            
             <div class="row">
                 <div class="col-md-6 time"> <p class="box-text3"><i class="fa fa-clock-o" aria-hidden="true"></i> 10 Hours</p></div>
                 <div class="col-md-6 price"><p class="box-text4">LKR 500</p></div>
             </div></a>
            </div>
            
        </div>
          <div class="col-md-4 ">
            <div class="box">
                <a href="" class="box-link" style="text-decoration: none;">
                <img src="images/science.jpg" class="co-img">
            <p class="box-text1">Science</p>
            
            <p class="box-text2">How to be an Doctor?</p>
            <hr>
            <div class="row">
                <div class="col-md-6 time"> <p class="box-text3"><i class="fa fa-clock-o" aria-hidden="true"></i> 10 Hours</p></div>
                <div class="col-md-6 price"><p class="box-text4">LKR 800</p></div>
            </div></a>
            </div>
            
        </div>
        <div class="col-md-4 ">
            <div class="box">
                <a href="" class="box-link" style="text-decoration: none;">
                <img src="images/maths-applications.jpg" class="co-img">
            <p class="box-text1">Mathematics</p>
            
            <p class="box-text2">How to be an Engineer?</p>
            <hr>
            <div class="row">
                <div class="col-md-6 time"> <p class="box-text3"><i class="fa fa-clock-o" aria-hidden="true"></i> 10 Hours</p></div>
                <div class="col-md-6 price"><p class="box-text4">LKR 2500</p></div>
            </div></a>
            </div>
            
        </div>
      </div>
      <div class="row">
        <div class="col-md-4 ">
            <div class="box">
                <a href="" class="box-link" style="text-decoration: none;">
                <img src="images/maths.jpg" class="co-img">
            <p class="box-text1">Mathematics</p>
            
            <p class="box-text2">How to be an Engineer?</p>
            <hr>
            
             <div class="row">
                 <div class="col-md-6 time"> <p class="box-text3"><i class="fa fa-clock-o" aria-hidden="true"></i> 10 Hours</p></div>
                 <div class="col-md-6 price"><p class="box-text4">LKR 500</p></div>
             </div></a>
            </div>
            
        </div>
          <div class="col-md-4 ">
            <div class="box">
                <a href="" class="box-link" style="text-decoration: none;">
                <img src="images/science.jpg" class="co-img">
            <p class="box-text1">Science</p>
            
            <p class="box-text2">How to be an Doctor?</p>
            <hr>
            <div class="row">
                <div class="col-md-6 time"> <p class="box-text3"><i class="fa fa-clock-o" aria-hidden="true"></i> 10 Hours</p></div>
                <div class="col-md-6 price"><p class="box-text4">LKR 800</p></div>
            </div></a>
            </div>
            
        </div>
        <div class="col-md-4 ">
            <div class="box">
                <a href="" class="box-link" style="text-decoration: none;">
                <img src="images/maths-applications.jpg" class="co-img">
            <p class="box-text1">Mathematics</p>
            
            <p class="box-text2">How to be an Engineer?</p>
            <hr>
            <div class="row">
                <div class="col-md-6 time"> <p class="box-text3"><i class="fa fa-clock-o" aria-hidden="true"></i> 10 Hours</p></div>
                <div class="col-md-6 price"><p class="box-text4">LKR 2500</p></div>
            </div></a>
            </div>
            
        </div>
      </div>
      <div class="row">
          <div class="col-md-12">
            <div class="about">
                <p class="titles-about">ABOUT US</p>
                <p class="sub-about"> Isn't days fill, after him bring. Set likeness meat seed whose for itself you can't seas itself. Herb replenish he, dry he. Firmament their. Thing had.Fruit morning signs years. All earth fowl upon, doesn't make, grass seed kind bearing multiply female void bring second.</p>
          </div>
          </div>
        

      </div>
      <div class="nws">
        <div class="row">
            <div class="col-md-8">
               <p class="n1">Subscribe our newsletter</p>
               <p class="n2">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words </p>
                   
                </div>
                <div class="col-md-4">
                    <p class="n1">
                        YOUR E-MAIL ADDRESS 
                    </p>
                    
                    <div class="row">
                        <div class="col-md-7"><input type="text" class="nwslter" SUBSCRIBE></div>
                        <div class="col-md-5"><input type="submit" value="SUBSCRIBE" class="subcribe"></div>
                    </div>
                </div>
            </div>
      </div>
      <div class="flooter">
        <div class="row">
            <div class="col-md-4">
                <p class="fltext">ABOUT</p>
                <P>Masterstudy is Education WordPress theme featured by Learning Management System (LMS) for online education.
                  Developed by StylemixThemes.
                  
                  Lorem ipsum dolor sit amet, onsectetur adipiscing elit. Morbi at egestas magna.</P>
            </div>
        </div>
      </div>
      </div>
</div>


<script>
/* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
  this.classList.toggle("active");
  var dropdownContent = this.nextElementSibling;
  if (dropdownContent.style.display === "block") {
  dropdownContent.style.display = "none";
  } else {
  dropdownContent.style.display = "block";
  }
  });
}
</script>

</body>
</html>