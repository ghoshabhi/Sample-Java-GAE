<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="UTF-8" />
		<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'>
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
		
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<title>The Clock App</title>
		<style>
			* {
				box-sizing: border-box;
				font-family: 'Source Sans Pro', sans-serif;
				font-weight: bold;
				font-size: 14pt;
				margin: 10px;
			}
			
			.form-control {
				width: 66.666667%;
				height: 200px;
				display: flex;
				flex-direction: column;
				justify-content: center;
			}
			
			.form-control > input {
				cursor: pointer;
			}
		</style>
	</head>
	<body>
		<div class="container">
			<div class="jumbotron">
				<c:choose>
					<c:when test="${user!= null}">
						<p>
							Welcome, ${user.email}!!!
						</p>
						<a href="${logoutUrl}">Logout</a>
					</c:when>
					<c:otherwise>
						<p>
							Welcome!
							<a href="${loginUrl}">Sign in or Register</a> to set preferences!
						</p>
					</c:otherwise>
				</c:choose>
				<p class="alert alert-success">The time is: ${currentTime}</p>
			</div>
			<c:if test="${user != null}">
				<form class="form-control" action="/prefs" method="post">
					<label for="tz_offset">
						Timezone offset from UTC (can be negative):
					</label>
					<input name="tz_offset" id="tz_offset" type="text"
						class="col-md-3" value="${tzOffset}" placeholder="Enter offset" />
					<br/><br/>
					<p><em>Press Enter When Done!</em></p>
				</form>
				
			</c:if>
		</div>
	</body>
</html>