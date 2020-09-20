<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="com.mysql.cj.xdevapi.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
            <link rel="stylesheet" href="addcourses.css">
        
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
            <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
</head>
<body>
		<%
			if(session.getAttribute("teacherUsername")== null && session.getAttribute("password")== null)
			{
				response.sendRedirect("teachers-login.jsp");
			}
		%>
	
    <div class="sidenav">
        <img src="images/avater.jpg" alt="">
        <p>Nandun </p>
      <a href="home.jsp" style="text-decoration: none;">Courses</a>
      <a href="#services" style="text-decoration: none;">Teachers</a>
      <a href="#clients" style="text-decoration: none;">Add Courses</a>
      <a href="#contact"style="text-decoration: none;">Contact</a>
      <button class="dropdown-btn">Courses Format 
        <i class="fa fa-caret-down"></i>
      </button>
      <div class="dropdown-container">
        <a href="#">Link 1</a>
        <a href="#">Link 2</a>
        <a href="#">Link 3</a>
      </div>
     <form action="<%=request.getContextPath()%>/TeachersLogontServlet" method = "GET">
      <input type="submit" value="Log out" class="dropdown-btn">
  </form>
    </div>
    <div class="left">
        <div class="row">
            <div class="col-md-12 tab">
<button class="tablink" onclick="openPage('Home', this )">Create Course</button>
<button class="tablink" onclick="openPage('News', this )" id="defaultOpen">Edit Course</button>
<button class="tablink" onclick="openPage('Contact', this )">Delete Course</button>
<button class="tablink" onclick="openPage('About', this)">View Courses</button>

<div id="Home" class="tabcontent">
  <h3>Create New Course</h3>
  
  <div class="row">
      <div class="col-md-1"></div>
      <div class="col-md-10">
          <form action="<%=request.getContextPath()%>/UploadServlet" method="POST" enctype="multipart/form-data" class="CC">
            
            <div class="row cr">
                <div class="col-md-4">
                    <div class="c-ti">
                        <p>Create a title</p>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="c-fi"><input type="text" name="title"></div>
                </div>
            </div>
            <div class="row cr">
                <div class="col-md-4">
                    <div class="c-ti">
                        <p>Select Category</p>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="c-fi"><select name="category" id="">
                        
                        <option value="Science">Science</option>
                        <option value="Mathematic">Mathematics</option>
                        <option value="Commerce">Commerce</option>
                        <option value="Computing">Computing</option>
                         <option value="Mapping">Mapping</option>
                    </select></div>
                </div>
            </div>
            <div class="row cr">
                <div class="col-md-4">
                    <div class="c-ti">
                        <p>Add Discription</p>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="c-fi"><textarea id="message" name="discription" rows="10" placeholder="Enter your Discription"></textarea></div>
                </div>
            </div>
            <div class="row cr">
                <div class="col-md-4">
                    <div class="c-ti">
                        <p>Select file to upload</p>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="c-fi"><input type="file" name="filname"></div>
                </div>
            </div>
            <div class="row cr">
                <div class="col-md-4">
                    <div class="c-ti">
                       
                    </div>
                </div>
                <div class="col-md-8">
                    <input type="submit" name="Upload" value="Save & Continue" class="sub"> 
                </div>
            </div>

            
            <!-- <p class="cc1">Select file to upload <input type="file" name="filname"></p>
            <br>
            <input type="submit" name="Upload" value="Upload">   -->
          </form>
      </div>
      <div class="col-md-1"></div>
  </div>
</div>

<div id="News" class="tabcontent">
  <h3>Edit Existing Course</h3>
  <p>Some news this fine day!</p> 
</div>

<div id="Contact" class="tabcontent">
  <h3>Delete Course</h3>
  <div class="row View-The-Courses">
    <div class="col-md-12">
        <div class="cours-box">
            <p class="title">How to be a Doctor</p>
            <p class="category">Science</p>
            <p class="discription">become a doctor sdfbskjd sdjkfgsdfkjsdf sdjfsdfskf sdfghsudfsdf sduisdf sdfhsduoif </p>
        </div>
    </div>
</div>
<div class="row View-The-Courses">
    <div class="col-md-12">
        <div class="cours-box">
            <p class="title">How to be a Doctor</p>
            <p class="category">Science</p>
            <p class="discription">become a doctor sdfbskjd sdjkfgsdfkjsdf sdjfsdfskf sdfghsudfsdf sduisdf sdfhsduoif </p>
        </div>
    </div>
</div>
</div>

<div id="About" class="tabcontent">
  <h3>View The Courses</h3>
  <%
  		String id =  request.getParameter("userId");
		  String driveName = "com.mysql.jdbc.Driver";
		  String url = "jdbc:mysql://localhost/lms2";
		  String userName = "root";
		String password =  "";
		
		try
		{
			Class.forName(driveName).newInstance();
			
		}catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		OutputStream file;
		
  %>
  
  


    <%
    	try
    	{
    		connection = DriverManager.getConnection(url,userName,password);
    		preparedStatement = connection.prepareStatement( "SELECT * FROM course");
    		
    		
    		resultSet = preparedStatement.executeQuery();
    		while(resultSet.next()){
    			
    			 %>
    			 
                 <div class="row View-The-Courses" style="margin-top: 10px; margin-bottom: 10px; height: unset; width: 100%;">
                     <div class="col-md-12">
                         <div class="cours-box" style="box-shadow: 0 0 10px rgba(37,73,214,0.18);
                         margin-bottom: 30px;
                         transition: transform .2s;
                         border: 1px solid rgb(255, 145, 0);
                         background-color: #262626;
                         color: beige;
                         width: 95%;
                         height: 100%;
                         margin: 20px;">
                             <p class="title" style="text-align: center; font-size: 20px; margin-top: 10px;"><%= resultSet.getString("title") %></p>
                                
                                <p class="category" style="color: rgb(51, 255, 0); margin-left: 10px;">Category:<%= resultSet.getString("category") %></p>
                                <p class="discription"style="margin-left: 10px;"><%= resultSet.getString("discription") %></p>
                             </div>
                     </div>
                 </div>
                 <style type="text/css">
                    .cours-box:hover
                        {
                            transform: scale(1.);
                            border: 3px solid rgb(255, 145, 0);
                        }

                </style>
    			 <% 
    		}
    		connection.close();
    	}catch(Exception e)
    {
    		e.printStackTrace();
    }
  
    			 %>
    	
   



 
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
        <script>
            function openPage(pageName,elmnt,color) {
              var i, tabcontent, tablinks;
              tabcontent = document.getElementsByClassName("tabcontent");
              for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
              }
              tablinks = document.getElementsByClassName("tablink");
              for (i = 0; i < tablinks.length; i++) {
                tablinks[i].style.backgroundColor = "";
              }
              document.getElementById(pageName).style.display = "block";
              elmnt.style.backgroundColor = color;
            }
            
            // Get the element with id="defaultOpen" and click on it
            document.getElementById("defaultOpen").click();
            </script>
</body>
</html>