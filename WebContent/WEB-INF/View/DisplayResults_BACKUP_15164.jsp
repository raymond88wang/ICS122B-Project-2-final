<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<script>
	var app = angular.module("fablixApp", []); 
	app.controller('browseCtrl', function($scope, $http){
		$scope.init = function(){
			$scope.page=['Show All',10,20,50];
			$scope.page = [
			    { name: 'Show All', value: 1000 },
			    { name: '10', value: 10 },
			    { name: '20', value: 20 },
			    { name: '50', value: 50 },
			];
			$scope.filterTitleList = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
									  'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V',
									  'W', 'X', 'Y', 'Z'];
		
			$scope.Search();
		};

		$scope.ResetPages = function(){
			$scope.pageVal = [];
	    	var maxPage = Math.ceil($scope.resultCount/$scope.filters.pageLength);
	    	for(var i=0; i<maxPage; i++){$scope.pageVal.push(i+1);}
		}
		$scope.GetNextPage = function (page){
			if(page >= 1 && page <= $scope.pageVal.length){
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
			    		$scope.ResetPages();
				    	$scope.movieList = data.data;
			    	}
				});
			}
		}
		$scope.RefreshPage = function(){
			$scope.filters.currentPage = 1;
			$scope.GetNextPage($scope.filters.currentPage);
		}
		$scope.Search = function(){
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
		    		$scope.pagePosition = 1;
		    		$scope.genreList = data.data.genreList;
		    		$scope.genreList.unshift(selectVal);
			    	$scope.movieList = data.data.movieList;
			    	$scope.filters = data.data.filters;
			    	$scope.filters.currentPage = 1;
			    	$scope.resultCount = data.data.movieCount;
			    	$scope.ResetPages();
		    	}
			});
		}
		$scope.SearchTitle = function(word, type){
			$scope.filters.searchWord = word;
			$scope.filters.type = type;
			$scope.Search();
		}
		$scope.ReOrderMovie = function(type){
			if(type != $scope.filters.orderBy){
				$scope.filters.orderBy = type;
				$scope.filters.isDesc = true;
			}
			else{
				$scope.filters.isDesc = !$scope.filters.isDesc;
			}
			$scope.filters.currentPage = 1;
			$http({
				 method: 'GET',
				 url: 'Sort',
				 headers: {'Content-Type': 'application/json'},
				 params:{
					 'filter':$scope.filters
				 }
				
		    }).then(function(data){
		    	if(data){
		    		$scope.movieList = data.data;
		    	}
			});
		}
		$scope.init();
	});
</script>
<style>
	.breadcrumb-item.active a{
		color:red!important;
	}
	.hover-style:hover{
		cursor:pointer;
		background-color:rgba(224, 53, 53, .5);
	}
</style>
<div ng-app="fablixApp" ng-controller="browseCtrl">
	<div class="row" style="margin-top:10px"> 
		<ol class="breadcrumb text-center" >
			  <li>Browse by title</li>
			  <li class="breadcrumb-item" ng-repeat="c in filterTitleList" ng-class="{'active' :  filters.searchWord.toLowerCase() == c.toLowerCase()}">
			  	<a href="#" ng-click="SearchTitle(c, 'start_title')">{{c}}</a>
			  </li> 
			  <li class="breadcrumb-item">
			  	<a href="#" ng-click="SearchTitle('', '')">Clear</a>
			  </li>  	 	  	  	  	  
		</ol>
	</div>
	<div class="container" style="margin-top:10px">
		<div class="row" style="margin:2% 0">
			<div class="col-md-3">
				<div class="form-group">
				  <label for="genre">Browse by Genre:</label>
				  <select class="form-control" id="genre" ng-model="filters.genre"
				  		ng-options="option.name as option.name for option in genreList"
				  		ng-change="Search()">
				  </select>
				</div>
			</div>
			<div class="col-md-3"></div>
			<div class="col-md-3"></div>
			<div class="col-md-2" style="float:right">
				<div class="form-group">
				 	<label for="genre">Page Setting:</label>
					<select name="state" id="maxRows" class="form-control" style="width:150px" ng-model="filters.pageLength"
						ng-options="option.value as option.name for option in page"
						ng-change="RefreshPage()">
					</select>
				</div>
<<<<<<< HEAD:ICS122B/WebContent/WEB-INF/View/DisplayResults.jsp
=======
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
>>>>>>> 47518afd140b174cfc20ffd510e53b687f39c115:WebContent/WEB-INF/View/DisplayResults.jsp
			</div>
		</div> 	
		<div class="row">
			<div class="col-md-12">
				<p>*There were {{resultCount}} results</p>
			</div>
		</div>		
		<div ng-if= "movieList.length == 0" class="container">
	       	<h1>No result found</h1>
	    </div> 
		<table ng-if= "movieList.length != 0" id="table" class="table table-bordered table-striped">
			<tr>
				<th>Image</th>
	          	<th>ID</th>
	          	<th class="hover-style" ng-click="ReOrderMovie('title');">Title <span ng-if="filters.orderBy =='title'" ng-class="filters.isDesc ? 'glyphicon glyphicon-chevron-down' : 'glyphicon glyphicon-chevron-up'"></span></th>
	          	<th class="hover-style" ng-click="ReOrderMovie('year');" style="min-width:100px">Year <span ng-if="filters.orderBy =='year'" ng-class="filters.isDesc ? 'glyphicon glyphicon-chevron-down' : 'glyphicon glyphicon-chevron-up'"></span></th>
	          	<th>Director</th>
	          	<th>Genres</th>
	          	<th>Featured stars</th>
	          	<th><span class = "glyphicon glyphicon-shopping-cart" ></span></th>
	      	</tr>
			<tbody>
				<tr ng-repeat="movie in movieList">
					<td align = "center">
 	    				<img ng-src="{{movie.banner_url}}" class="img-thumbnail" alt="Cinque Terre" width="200" height="200"" alt= "No image"></img>
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
					<a href="#" arial-label = "Previous" ng-click="GetNextPage(filters.currentPage-1)">
						<span aria-hidden="true">Previous</span>
						<span class="sr-only">Previous</span>
					</a>
				</li>
				<li ng-repeat="i in pageVal" ng-class="{'active' : filters.currentPage == i }">
					<a href="#" arial-label = "{{i}}" ng-click="GetNextPage(i)">
						<span aria-hidden="true">{{i}}</span>
						<span class="sr-only">{{i}}</span>
					</a>
				</li>
				<li>
					<a href="#" arial-label = "Next" ng-click="GetNextPage(filters.currentPage+1)">
						<span aria-hidden="true">Next</span>
						<span class="sr-only">Next</span>
					</a>
				</li>
			</ul>
		</nav>
	</div>
</div>
