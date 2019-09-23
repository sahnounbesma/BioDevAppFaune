<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>RG Marines</title>
	
	
	
</head>
<body>

<script>   
	function gotoNextPage(p) { 
		switch (p) {
		case 1 : location.href = "Annimaux";break;
		case 2 : location.href = "Vegetaux";break;
		case 3 : location.href = "Bacteries";break;
		case 4 : location.href = "Champignons";break;
		default : location.href = "StartRGMarines";
		}
	}
</script>

	<%@include file="header.jsp"  %>
	<h2 style="text-align:center; color:#8F8F8F">Ressources génétiques marines</h2>
	<div style="display: table;margin: 0 auto; min-height: 100%;color:#8F8F8F">
		<table>
			<tr>
				<td><img onclick="gotoNextPage(1);" alt="Animaux" src="images/RGMarines/animaux.jpg" style="border-radius:50%;width:160px;height:160px;"></td>
				<td><img onclick="gotoNextPage(2);" alt="Végétaux" src="images/RGMarines/vegetaux.png" style="border-radius:50%;width:320px;height:320px;"></td>
				<td><img onclick="gotoNextPage(3);" alt="Bactéries" src="images/RGMarines/bacteries.jpg" style="border-radius:50%;width:160px;height:160px;"></td>
				<td><img onclick="gotoNextPage(4);" alt="Champignons" src="images/RGMarines/champignons.png" style="border-radius:50%;width:320px;height:320px;"></td>
			</tr>
			<tr style="text-align:center; font-size:30px">
				<td>Animaux</td>
				<td>Végétaux</td>
				<td>Bactéries</td>
				<td>Champignons</td>
			</tr>
		</table>
	</div>
	<br><br><br><br>
	<%@include file="footer.jsp" %>

</body>

</html>