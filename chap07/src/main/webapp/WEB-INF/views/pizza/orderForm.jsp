<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Pizza Order Form</title>
</head>
<body>

	<!-- ⑤ -->
	<h1>Pizza Order Form</h1>
	
	<div style="background-color: rgb(227 213 186);">
		<h3>Delivery Information</h3>
		<!-- name : 파라미터의 키 역할 -->
		Name: <input type="text" name="name" form="pizza-form" value="Mike"><br>
		Street Address: <input type="text" name="address" form="pizza-form" value="Guri"><br>
		City: <input type="text" name="city" form="pizza-form"><br>
		Email: <input type="text" name="email" form="pizza-form"><br>
		Phone: <input type="text" name="phone" form="pizza-form">
	</div>
	
	<div style="background-color: rgb(227 213 186);">
		<h3>Order</h3>
		<h4>Crust</h4>
		<input type="radio" value="Thin Crust" name="crust" form="pizza-form" checked> Thin Crust
		<input type="radio" value="Deep Dish" name="crust" form="pizza-form"> Deep Dish <br>
		
		<h4>Size</h4>
		<select name="pizza_size" form="pizza-form">
			<option value="regular">Regular</option>
			<option value="medium">Medium</option>
			<option value="large" selected>Large</option>
			<option value="family">Family</option>
		</select><br>
		<h4>Topping(s)</h4>
		<input type="checkbox" value="Pepperoni" name="topping" form="pizza-form" checked> Pepperoni
		<input type="checkbox" value="Sausage" name="topping" form="pizza-form"> Sausage
		<input type="checkbox" value="GreenPeppers" name="topping" form="pizza-form" checked> Green Peppers
		<input type="checkbox" value="Onions" name="topping" form="pizza-form"> Onions
		<input type="checkbox" value="Extra Cheese" name="topping" form="pizza-form"> Extra Cheese
		<h4>Special Instructions</h4>
		<textarea name="instructioin" rows="3" cols="50" form="pizza-form">Don't drop it!! Don't Shake it!!</textarea>	
	</div>

	
	<!--  POST : DB에 들어갈 정보입니다. -->
	<!--  GET : DB에서 가져올 정보입니다. -->
	<!-- ⑥ -->
	<!--  상대 경로를 사용할 때는 contextPath를 사용할 필요가 없다 -->
	<!-- ./ : 마지막 /를 가리킨다 -->
	<!--  ../chap07/pizza/insert -->
	<form id="pizza-form" action="./insert" method="POST">
	<input type="submit" value="Preview Order">
	</form>

</body>
</html>