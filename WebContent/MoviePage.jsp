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

</head>
<body>
<jsp:include page="WEB-INF/View/Shared/Layout.jsp" />
<br>
<div class="container">
	<div class="well well-sm">
		<a href="Home">Home</a> > 
		<a href="javascript:history.back()"> Movie list </a> > Movie page
	</div>
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
	<table class = "table table-hover table-bordered">
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
		          	<td><img src="${movie.banner_url}" class="img-responsive" alt="Cinque Terre" width="200"></td>
		      	</tr>
		      	<tr>
		          	<th>Trailer</th>
		          	<td><a href="${movie.trailer_url}"><c:out value="${movie.trailer_url}"/></a></td>
		      	</tr>
	</table>
	<form method="get" action="Shopping">
        <button type="submit" class="btn btn-primary" name= "movie" value = "${movie.title}">Add to Cart</button>
    </form>
</div>

</body>
</html>