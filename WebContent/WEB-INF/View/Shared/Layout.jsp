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
	
	<!-- Plug ins for bootstrap select -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">
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
				      <li class="dropdown">
				      	<a href="#" class="dropdown-toggle" data-toggle="dropdown">Browse by Genre<span class ="caret"></span></a>
				      	<ul class="dropdown-menu">
				      	<td>
				      		<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Action" />
								</c:url> 
								<a href="${myUrl}">Action</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Adventure" />
								</c:url> 
								<a href="${myUrl}">Adventure</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Animation" />
								</c:url> 
								<a href="${myUrl}">Animation</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Adventure" />
								</c:url> 
								<a href="${myUrl}">Biography</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Classic" />
								</c:url> 
								<a href="${myUrl}">Classic</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Comedy" />
								</c:url> 
								<a href="${myUrl}">Comedy</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Coming-of-Age-Drama" />
								</c:url> 
								<a href="${myUrl}">Coming-of-Age-Drama</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Crime" />
								</c:url> 
								<a href="${myUrl}">Crime</a>
							</li>
						</td>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Documentary" />
								</c:url> 
								<a href="${myUrl}">Documentary</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Drama" />
								</c:url> 
								<a href="${myUrl}">Drama</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Family" />
								</c:url> 
								<a href="${myUrl}">Family</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Fantasy" />
								</c:url>
								<a href="${myUrl}">Fantasy</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Foreign" />
								</c:url>
								<a href="${myUrl}">Foreign</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Gangster" />
								</c:url>
								<a href="${myUrl}">Gangster</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="History" />
								</c:url>
								<a href="${myUrl}">History</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Horror" />
								</c:url>
								<a href="${myUrl}">Horror</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Indie" />
								</c:url>
								<a href="${myUrl}">Indie</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="James Bond" />
								</c:url>
								<a href="${myUrl}">James Bond</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Music" />
								</c:url>
								<a href="${myUrl}">Music</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Musical" />
								</c:url>
								<a href="${myUrl}">Musical</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Musical/Performing Arts" />
								</c:url>
								<a href="${myUrl}">Musical/Performing Arts</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Mystery" />
								</c:url>
								<a href="${myUrl}">Mystery</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Roman" />
								</c:url>
								<a href="${myUrl}">Roman</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Romance" />
								</c:url>
								<a href="${myUrl}">Romance</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Sci-Fi" />
								</c:url>
								<a href="${myUrl}">Sci-Fi</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Sport" />
								</c:url>
								<a href="${myUrl}">Sport</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Spy" />
								</c:url>
								<a href="${myUrl}">Spy</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Suspense" />
								</c:url>
								<a href="${myUrl}">Suspense</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="Thriller" />
								</c:url>
								<a href="${myUrl}">Thriller</a>
							</li>
							<li>
								<c:url value = "/Browse" var = "myUrl">
							    	<c:param name = "text" value ="War" />
								</c:url>
								<a href="${myUrl}">War</a>
							</li>
				      	</ul>
				      </li>			   
				    </ul>
				    
				    <ul class="nav navbar-nav navbar-right">
				    	<li><a href="#">Logout</a></li>
				    </ul>
				    <form class="navbar-form navbar-left" action="Search" method="get">
				        <div class="form-group">
				          <input type="text" name="text" required class="form-control" placeholder="Search">
					          <select name = "filter" class="selectpicker" data-width="fit">
									<option value ="title" selected">Title</option>
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