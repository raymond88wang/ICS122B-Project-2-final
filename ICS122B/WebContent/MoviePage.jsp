<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="DbModel.Movie" %>
<%@ page import="DbModel.Star" %>
<%@ page import="DbContext.dbConnection" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import= "DbContext.dbMovie" %>
<%@ page import= "AppService.SearchQuery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Movie page</title>

	<script
		  src="https://code.jquery.com/jquery-3.2.1.min.js"
		  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		  crossorigin="anonymous">
	</script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>

<div class="well well-sm">
	<a href="Home">Home</a> > Movie page
</div>

<% 
	String title = request.getParameter("title");
	String attribute = "title"; 
	SearchQuery s = new SearchQuery();
	List<Movie> movieList = new ArrayList<Movie>();
	movieList = s.getMovieList(title, attribute);
	Movie movie = new Movie();
	if (!movieList.isEmpty())
		movie = movieList.get(0);
	request.setAttribute("movie",movie);
%>
<div class="container" style="center">
	<h2>Movie information</h2>
	<table id ="mytable" class = "table table-hover table-bordered">
		      	<tr>
		          	<th>ID</th>
		          	<td><c:out value="${movie.id}"/></td>
		        </tr>
		        <tr>
		          	<th>Title</th>
		          	<td><c:out value="${movie.title}"/></td>
		        </tr>
		        <tr>
		          	<th>Year</th>
		          	<td><c:out value="${movie.year}"/></td>
		        </tr>
		        <tr>
		          	<th>Director</th>
		          	<td><c:out value="${movie.director}"/></td>
		        </tr>
		        <tr>
		          	<th>Genres</th>
		          	<td>
		          		<c:forEach var="genre" items="${movie.genres}" varStatus = "loop">
		          			<c:url value = "/Browse" var = "myUrl">
		            			<c:param name = "text" value ="${genre}" />
		            		</c:url> 
		          			<a href = "${myUrl}"><c:out value="${genre}"/></a>
		          			<c:if test = "${!loop.last}">,</c:if>
		          		</c:forEach>
		          	</td>
		      	</tr>
		      	<tr>
		          	<th>Featured star</th>
		          	<td>
		          		<c:forEach var="star" items="${movie.stars}" varStatus = "loop">
		          			<c:url value = "/StarPage.jsp" var = "myUrl">
		            			<c:param name = "first_name" value ="${star.first_name}" />
		            			<c:param name = "last_name" value ="${star.last_name}" />
		            		</c:url> 
		          			<a href = "${myUrl}"><c:out value="${star.first_name} ${star.last_name}"/></a>
		          			<c:if test = "${!loop.last}">,</c:if>
		          		</c:forEach>
		          	</td>
		      	</tr>
		      	<tr>
		          	<th>Poster</th>
		          	<td><c:out value="${movie.banner_url}"/></td>
		      	</tr>
		      	<tr>
		          	<th>Trailer</th>
		          	<td><c:out value="${movie.trailer_url}"/></td>
		      	</tr>
	</table>
</div>
</body>
</html>