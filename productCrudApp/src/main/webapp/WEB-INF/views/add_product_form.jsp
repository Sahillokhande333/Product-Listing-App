<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="./base.jsp" %>
</head>
<body>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Product</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    form {
      max-width: 400px;
      margin: 50px auto;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
      background-color: #f9f9f9;
    }
    input[type="text"], textarea, input[type="number"] {
      width: 100%;
      padding: 10px;
      margin: 5px 0;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }
    input[type="submit"], input[type="button"] {
      background-color: #4CAF50;
      color: white;
      padding: 10px 20px;
      margin: 8px 0;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
    input[type="submit"]:hover, input[type="button"]:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
<div class="container mt-1">
<div class="row">
<div class="col-md-6 offset-md-3">
<h1 class="text-center mb-1"><b>Add Product</b></h1>

<form action="handle-product" method="post">
  <label for="productName">Product Name:</label>
  <input type="text" id="Name" name="name" required>

  <label for="productDescription">Product Description:</label>
  <textarea id="Description" name="description" rows="4" required></textarea>

  <label for="productPrice">Product Price:</label>
  <input type="number" id="price" name="price" min="0" step="0.01" required>

<div class="container text-center">
	

	 
	<a href="${pageContext.request.contextPath }/"
	class="btn btn-outline-danger">Back</a>
	
	<button type ="submit" class="btn btn-primary"> Add</button>

</div>
</form>
</div>
</div>
  
  </div>


</body>
</html>

