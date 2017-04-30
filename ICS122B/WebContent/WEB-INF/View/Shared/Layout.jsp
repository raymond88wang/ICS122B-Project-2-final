<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html>
<head>
	<script
		  src="https://code.jquery.com/jquery-3.2.1.min.js"
		  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		  crossorigin="anonymous">
	</script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
</head>
	<body>
		<div class="container-fluid">
			<div class="row">
				<nav class="navbar navbar-default">
				  <div class="container-fluid">
				    <div class="navbar-header">
				      <a class="navbar-brand" href="#">Fablix</a>
				    </div>
				    
				    <ul class="nav navbar-nav">
				      <li class="active"><a href="Home">Home</a></li>
				      
				      <!-- Drop down menu for Browse -->
				      
				      <li><a href="BrowseTitle.jsp">Browse by title</a></li>
				    </ul>
				    
				    <ul class="nav navbar-nav navbar-right">
				    	<li><a href="#">Logout</a></li>
				    </ul>
				    <form class="navbar-form navbar-left" action="Search" method="get">
				        <div class="form-group">
				          <input type="text" name="text" required class="form-control" placeholder="Search">
					          <select name = "attribute">
									<option value ="title" selected">Title</option>
									<option value = "year">Year</option>
									<option value = "director">Director</option>
									<option value = "fullName">Star's full name</option>
									<option value = "first_name">Star's first name</option>
									<option value = "last_name">Star's last name</option>
							  </select>
				        </div>
				        <button type="submit" class="btn btn-default">Submit</button>
			      	</form>
				    
				  </div>
				</nav>
			</div>
		</div>
		<div id="body">
			<jsp:include page="${body_url}" />
		</div>
	</body>
</html>
