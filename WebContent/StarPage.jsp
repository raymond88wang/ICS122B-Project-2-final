<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="DbModel.Movie" %>
<%@ page import="DbModel.Star" %>
<%@ page import = "java.sql.*" %>
<%@ page import="DbContext.dbConnection" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import= "DbContext.dbMovie" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Star page</title>
</head>
<body>
<jsp:include page="WEB-INF/View/Shared/Layout.jsp" />
<br>
<div class="container">
	<div class="well well-sm">
		<a href="Home">Home</a> >
		<a href="javascript:history.back()"> Movie list </a> > Star page
	</div>
</div>

<%
	String fname = request.getParameter("first_name");
	String lname = request.getParameter("last_name");
	
	String selectQuery = String.format("Select * from stars where first_name = '%s' and last_name = '%s'",fname,lname);
	Star star = new Star();
	List<Movie> movieList = new ArrayList<Movie>();
	
	Statement st = dbConnection.GetConnection().createStatement();
	ResultSet rs = st.executeQuery(selectQuery);

	while (rs.next())
	{
		star.setId(rs.getInt("id"));
		star.setFirst_name(rs.getString("first_name"));
		star.setLast_name(rs.getString("last_name"));
		star.setDob(rs.getDate("dob"));
		star.setPhoto_url(rs.getString("photo_url"));
	}

	
	dbMovie m = new dbMovie();
	movieList = m.GetMovieByFirstNameLastNameId(star);
	request.setAttribute("star", star);
	request.setAttribute("movieList", movieList);
	rs.close();
	st.close();
%>


<div class="container" style="center">
	<caption><h2>Star information</h2></caption>	
	<table class = "table table-hover table-bordered">
	<tbody>
      	<tr>
          	<th>ID</th>
          	<td><c:out value="${star.id}"/></td>
        </tr>
        <tr>
          	<th>First Name</th>
          	<td><c:out value="${star.first_name}"/></td>
        </tr>
        <tr>
          	<th>Last Name</th>
          	<td><c:out value="${star.last_name}"/></td>
        </tr>
        <tr>
          	<th>Date of Birth</th>
          	<td><c:out value="${star.dob}"/></td>
        </tr>
        <tr>
          	<th>Photo</th>
          	<td>
          	<img src="${star.photo_url}" class="img-responsive" alt="Cinque Terre" width="250" height="250">
          	</td>
          
      	</tr>
   	 	<tr>
          	<th>Movies</th>
          	<td>
          		<c:forEach var="movie" items="${movieList}" varStatus = "loop">
          			<c:url value = "/MoviePage.jsp" var = "myUrl">
            			<c:param name = "title" value ="${movie.title}" />
            			<c:param name = "attribute" value ="title" />
            		</c:url> 
          			<a href = "${myUrl}"><c:out value="${movie.title}"/></a>
          			<c:if test = "${!loop.last}">,</c:if>
          		</c:forEach>
          	</td>
      	</tr>
     </tbody>
	</table>
</div>

</body>
</html>