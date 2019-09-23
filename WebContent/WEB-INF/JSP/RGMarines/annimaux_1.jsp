<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Annimaux/Embranchements</title>
</head>
<body>




	<%@include file="header.jsp"  %>
	<h2 style="text-align:center; color:#8F8F8F">Ressources génétiques marines _ FAUNE</h2><br><br>
	
	<div class="container">
		<div class="row">
			<c:forEach var="i" begin="0" end="10" step="2">
		    <div class="col-md-3">
		      <div class="thumbnail text-center">
		          <img src="images/RGMarines/poissons.png" alt="Lights" style="width:60%">
		          
		          	<form method="GET" action="Embranchement">
			          <div class="caption">
			          	<input type="hidden" name="embr" value="${i}">
			          	<h3>--<c:out value="${ i }" />--</h3>
			            <p>103 espèces</p>
			          </div>
		          	<button type="submit" class="btn" style="color: white; background-color: #208247;">En savoir plus</button>
		          	</form>
		      </div>
		    </div>
		    </c:forEach> 
		</div>  
	</div>
	
	<%@include file="footer.jsp" %>
</body>
</html>