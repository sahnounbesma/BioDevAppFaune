<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Catégories</title>

<link rel = "stylesheet" type = "text/css" href = "Styles/RGMarines/images.css" />

</head>
<body>

	<%@include file="header.jsp"  %>
	<h2 style="text-align:center; color:#8F8F8F">RG Marines --> Faune --> Poissons (Catégories)</h2><br><br>
	
	<div class="container">
		<div class="row">
			<c:forEach var="i" begin="0" end="6" step="2">
		    <div class="col-md-3">
		      <div class="thumbnail text-center">
		          <img src="images/RGMarines/poissons_osseux.jpg" alt="Lights" class="roundedImageShadow">
		          
		          	<form method="GET" action="Especes">
			          <div class="caption">
			          	<input type="hidden" name="categ" value="${i}">
			          	<h3>--<c:out value="${ i }" />--</h3>
			            <p>29 espèces</p>
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