<html>
<head>
    <%@include file="./base.jsp" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>

<body>

<div class="container mt-3"> <!-- added class attribute -->
    <div class="row"> <!-- added class attribute -->

        <div class="col-md-12"> <!-- added class attribute -->
            <h1 class="text-center mb-3">Welcome To Product App</h1>

            <table class="table">
                <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Product Description</th> <!-- corrected spelling -->
                    <th scope="col">Product Price</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${products}" var="p">
                    <tr>
                        <th scope="row">${p.id}</th>
                        <td>${p.name}</td>
                        <td>${p.description}</td> <!-- corrected case -->
                        <td class="font-weight-bold">&#8377;${p.price}</td>
                        <td>
                        	<a href="delete/${p.id }"><i class="fa-solid fa-trash text-danger" style="font-size:25px"></i></a>
                        	
                        	<a href="update/${p.id }"><i class="fa-solid fa-pen-nib text-primary" style="font-size:25px"></i></a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <div class="container text-center"> <!-- added class attribute -->
                <a href="add-product" class="btn btn-outline-success">Add product</a>
            </div>

        </div>
    </div>
</div>

</body>
</html>
