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
      
      <a href="login.jsp" style="text-decoration: none;">Login</a>
    </div>
    <h1 class="main-title" >Welcome NSC Acedemy</h1>
    <section id="login1">
       <div class="row">
           <div class="col-md-3"></div>
           <div class="col-md-6">
            <div class="login">
                <img src="images/avater.jpg" class="login-img">
                <p class="title">Register</p>
                <form action="<%=request.getContextPath()%>/RegisterServlet" method ="post">
                <div class="row">
                    <div class="col-md-4"><p class="ps">User Name</p></div>
                    <div class="col-md-8"> <input type="text" name="username" class="fieldsR"></div>

                
                </div>
                <div class="row">
                    <div class="col-md-4"><p class="ps">E-mail</p></div>
                    <div class="col-md-8"> <input type="email" name="email" class="fieldsR"></div>
                    
                
                </div>
                <div class="row">
                    <div class="col-md-4"><p class="ps">Password</p></div>
                    <div class="col-md-8"> <input type="password" name="password" class="fieldsR"></div>
                
                </div>
                <div class="row">
                    <div class="col-md-4"><p class="ps">Confirm Password</p></div>
                    <div class="col-md-8"> <input type="password" name="password2" class="fieldsR"></div>
                
                </div>
                <input type="submit" value="Register" class="lg-bttn">
                </form>
            </div>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-10">
                    <a  href="welcome.html"><p class="links">If you are already have an account</p> </a>
                </div>
            </div>
           </div>
           <div class="col-md-3"></div>
       </div>
   

    </section>
</body>
</html>