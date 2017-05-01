<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<script>
	var app = angular.module("fablixApp", []); 
	app.controller('browseCtrl', function($scope, $http){
		$scope.page=['Show All',10,20,50];
		$scope.page = [
		    { name: 'Show All', value: null },
		    { name: '10', value: 10 },
		    { name: '20', value: 20 },
		    { name: '50', value: 50 },
		];
		$scope.filters = {
			'genre':"All",
			'searchWord':"",
			'type':"",
			'pageLength':10,
			'currentPage':1
		};
		$http({
			 method: 'GET',
			 url: 'Search',
			 headers: {'Content-Type': 'application/json'},
			 params:{
				 'filter':$scope.filters
			 }
			
	    }).then(function(data){
	    	if(data){
	    		var selectVal = {'name':'All', 'id': -1};
	    		$scope.genreList = data.data.genreList;
	    		$scope.genreList.unshift(selectVal);
		    	$scope.movieList = data.data.movieList;
		    	$scope.filters = data.data.filters;
		    	$scope.resultCount = data.data.movieCount;
	    	}
		});
		
		$scope.GetNextPage = function (page){
			if(page >= 1){
				$scope.filters.currentPage = page;
				$http({
					 method: 'GET',
					 url: 'Page',
					 headers: {'Content-Type': 'application/json'},
					 params:{
						 'filter':$scope.filters
					 }
					
			    }).then(function(data){
			    	if(data){
			    		console.log(data);
				    	$scope.movieList = data.data;
			    	}
				});
			}

		}
		
	});
</script>
<div ng-app="fablixApp" ng-controller="browseCtrl">
<div class="row" style="margin-top:10px"> 
	<ol class="breadcrumb text-center" >
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
</div>
       <div ng-if= "movieList.length == 0" class="container">
       	<h1>No result found for "<%=request.getParameter("text")%>"</h1>
       </div>
		<div ng-if= "movieList.length != 0" class="container" style="margin-top:10px">
			<div class="row">
				<div class="col-md-3">
					<h1>There were {{resultCount}} results</h1>
				</div>
			</div>
			<div class="row" style="margin:2% 0">
				<div class="col-md-3">
						<div class="form-group">
						 	<label for="genre">Page Setting:</label>
							<select name="state" id="maxRows" class="form-control" style="width:150px" ng-model="filters.pageLength"
								ng-options="option.value as option.name for option in page">
							</select>
						</div>
				</div>
				<div class="col-md-3">
					<div class="form-group" ng-init="filters.genre = 10">
					  <label for="genre">Browse by Genre:</label>
					  <select class="form-control" id="genre" ng-model="filters.genre"
					  	ng-options="option.name as option.name for option in genreList">
					  </select>
					</div>
				</div>
			</div> 			 
			<table id="table" class="table table-bordered table-striped">
				<tr>
		          	<th>Image</th>
		          	<th>ID</th>
		          	<th>Title</th>
		          	<th>Year</th>
		          	<th>Director</th>
		          	<th>Genres</th>
		          	<th >Featured stars</th>
		          	<th><span class = "glyphicon glyphicon-shopping-cart" ></span></th>
		      	</tr>
				<tbody>
					<tr ng-repeat="movie in movieList">
						<td align = "center">
	    						<img src = "${movie.banner_url} class="img-thumbnail" alt="Cinque Terre" width="200" height="200"" alt= "No image"></img>
						</td>
			            <td>{{movie.id}}</td>
			            <td>
			            	<a href = "#">{{movie.title}}</a> 
			            </td>
			            <td>{{movie.year}}</td>
			            <td>{{movie.director}}</td>
			            <td>
			            	<p ng-repeat="g in movie.genres">{{g.name}}<span ng-show="!$last">, </span></p>
			            </td>
			            <td>
			            	<a ng-repeat="s in movie.stars">{{s.first_name}} {{s.last_name}}<span ng-show="!$last">, </span></a>
			            </td>
			            <td>
			            	<form method="get" action="">
			            		<button type="submit" class="btn btn-primary">Add to Cart</button>
			            	</form>
			            </td>
					</tr>
				</tbody>
			</table>
		</div>
	
			<div align="center">
				<nav>
					<ul class= "pagination">
						<li>
							<a arial-label = "Previous" ng-click="GetNextPage(filters.currentPage-1)">
								<span aria-hidden="true">Previous</span>
								<span class="sr-only">Previous</span>
							</a>
						</li>
						<li>
							<a arial-label = "Next" ng-click="GetNextPage(filters.currentPage+1)">
								<span aria-hidden="true">Next</span>
								<span class="sr-only">Next</span>
							</a>
						</li>
					</ul>
				</nav>
			</div>

</div>
