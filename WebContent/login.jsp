<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
    <meta name="Sri Lanka Travel" content="This website all about travel about Sri lanka. You can visit sri lanka and contact us, we provide transport service exactly what you need.">
    <meta name="viweport" content="width=device-width, initail-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Welcome</title>

    <link rel="icon" type="img/png" href="images/Lasirilogo.png" alt="Image placeholder">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Bitter&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Anton&family=Josefin+Sans&family=Karla&family=Montserrat:wght@300&family=Open+Sans:ital,wght@1,300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Karla&family=Montserrat:wght@300&family=Open+Sans:ital,wght@1,300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Karla&family=Montserrat:wght@300&family=Open+Sans:ital,wght@1,300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Montserrat:wght@300&family=Open+Sans:ital,wght@1,300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&family=Open+Sans:ital,wght@1,300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="welcome.css">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
    <div class="sidenav">
        <img src="images/avater.jpg" alt="">
        <p>Nandun </p>
      <a href="home.jsp" style="text-decoration: none;">Courses</a>
      
      <a href="register.jsp"  style="text-decoration: none;">Register</a>
    </div>
    <h1 class="main-title">Welcome NSC Acedemy</h1>
    <section id="login1">
       <div class="row">
           <div class="col-md-3"></div>
           <div class="col-md-6">
            <div class="login">
                <img src="images/avater.jpg" class="login-img">
                <p class="title">Login</p>
                <form action="<%=request.getContextPath()%>/loginServlet" method="get">
                <div class="row">
                    <div class="col-md-4"><p class="ps">User Name</p></div>
                    <div class="col-md-8"> <input type="text" name="username" class="fields"></div>
                
                </div>
                <div class="row">
                    <div class="col-md-4"><p class="ps">Password</p></div>
                    <div class="col-md-8"> <input type="password" name="password" class="fields"></div>
                
                </div>
                <input type="submit" value="Login" class="lg-bttn">
                </form>
            </div>
            <div class="row">
                <div class="col-md-6"></div>
                <div class="col-md-6">
                    <a href="register.html"><p class="links">Create a Account</p></a>
                </div>
            </div>
           </div>
           <div class="col-md-3"></div>
       </div>
   

    </section>
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