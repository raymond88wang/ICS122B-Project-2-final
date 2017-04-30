<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Login</title>
<div class="container">
	<div class="row">
		<div class="col-md-6">
			<form class="form-horizontal" method="POST" action="Login">
				<div class="form-group">
					<div class="col-sm-offset-2 col-md-12">
						<h3 style="margin-left:17%">Login</h3>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="email">Email:</label>
				    <div class="col-md-6">
				      <input required name="email" type="email" class="form-control" id="email" placeholder="Enter email">
				    </div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="password">Password:</label>
					<div class="col-md-6"> 
					  <input required name="password" type="password" class="form-control" id="password" placeholder="Enter password">
					</div>
				</div>
				<c:set var="fail" scope="session" value="${login_fail}"/>
				<c:if test = "${fail != null}">
					<div class="form-group">
						<div class="col-sm-offset-2 col-md-12">
				      		<label class="label label-danger">Failed</label>
				    	</div>
					</div>
				</c:if>
				<div class="form-group"> 
			    	<div class="col-sm-offset-2 col-md-12">
			      		<button type="submit" class="btn btn-success">Submit</button>
			    	</div>
			  </div>
			</form>
		</div>
	</div>
</div>