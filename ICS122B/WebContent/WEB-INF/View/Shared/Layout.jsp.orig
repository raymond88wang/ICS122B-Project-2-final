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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>
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
				    </ul>
				    
				    <ul class="nav navbar-nav navbar-right">
				    	<li><a href="#">Logout</a></li>
				    </ul>
				    <form class="navbar-form navbar-left" action="HomeSearch" method="get">
				        <div class="form-group">
				          <input type="text" name="searchWord" required class="form-control" placeholder="Search">
				          <select name="type" class="selectpicker" data-width="fit">
								<option value ="title" selected>Title</option>
								<option value = "year">Year</option>
								<option value = "director">Director</option>
								<option value = "star">Star's name</option>
						  </select>
				        </div>
				        <button type="submit" class="btn btn-default">Search</span></button>
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
