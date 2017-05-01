<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Browse title</title>

</head>

<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a class="navbar-brand" href="Home">Home</a>
    </div>
  </div>
</nav>

<ol class="breadcrumb" >
	  <li class="active">Browse by title</li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="0" />
		</c:url>
	  	<a href="${myUrl}">0</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="1" />
		</c:url>
	  	<a href="${myUrl}">1</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="2" />
		</c:url>
	  	<a href="${myUrl}">2</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="3" />
		</c:url>
	  	<a href="${myUrl}">3</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="4" />
		</c:url>
	  	<a href="${myUrl}">4</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="5" />
		</c:url>
	  	<a href="${myUrl}">5</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="6" />
		</c:url>
	  	<a href="${myUrl}">6</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="7" />
		</c:url>
	  	<a href="${myUrl}">7</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="8" />
		</c:url>
	  	<a href="${myUrl}">8</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="9" />
		</c:url>
	  	<a href="${myUrl}">9</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="A" />
		</c:url>
	  	<a href="${myUrl}">A</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="B" />
		</c:url>
	  	<a href="${myUrl}">B</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="C" />
		</c:url>
	  	<a href="${myUrl}">C</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="D" />
		</c:url>
	  	<a href="${myUrl}">D</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="E" />
		</c:url>
	  	<a href="${myUrl}">E</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="F" />
		</c:url>
	  	<a href="${myUrl}">F</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="G" />
		</c:url>
	  	<a href="${myUrl}">G</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="H" />
		</c:url>
	  	<a href="${myUrl}">H</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="I" />
		</c:url>
	  	<a href="${myUrl}">I</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="J" />
		</c:url>
	  	<a href="${myUrl}">J</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="K" />
		</c:url>
	  	<a href="${myUrl}">K</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="L" />
		</c:url>
	  	<a href="${myUrl}">L</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="M" />
		</c:url>
	  	<a href="${myUrl}">M</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="N" />
		</c:url>
	  	<a href="${myUrl}">N</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="O" />
		</c:url>
	  	<a href="${myUrl}">O</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="P" />
		</c:url>
	  	<a href="${myUrl}">P</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="Q" />
		</c:url>
	  	<a href="${myUrl}">Q</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="R" />
		</c:url>
	  	<a href="${myUrl}">R</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="S" />
		</c:url>
	  	<a href="${myUrl}">S</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="T" />
		</c:url>
	  	<a href="${myUrl}">T</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="U" />
		</c:url>
	  	<a href="${myUrl}">U</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="V" />
		</c:url>
	  	<a href="${myUrl}">V</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="W" />
		</c:url>
	  	<a href="${myUrl}">W</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="X" />
		</c:url>
	  	<a href="${myUrl}">X</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="Y" />
		</c:url>
	  	<a href="${myUrl}">Y</a>
	  </li>
	  <li>
	  	<c:url value = "/Browse" var = "myUrl">
	    	<c:param name = "text" value ="Z" />
		</c:url>
	  	<a href="${myUrl}">Z</a>
	  </li>	  	  	  	  	  	  
</ol>

</body>
</html>