<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<title>Admin Home</title>

 <style>

        #myDiv {
            display: none;
            margin-top: 10px;
            cursor: pointer;
        }

        #myDiv1 {
             display: none;
            margin-top: 10px;
            cursor: pointer;
        }
        #myDiv2 {
             display: none;
            margin-top: 10px;
            cursor: pointer;
        }
        #myDiv3 {
             display: none;
            margin-top: 10px;
            cursor: pointer;
        }
        
    </style>
    
</head>
<body>
<% String name = String.valueOf(session.getAttribute("name1")); %>
<h2 class ="mb-4 mt-4 fst-italic text-primary text-center">Welcome : <%=name %></h2>
<nav class="navbar navbar-expand-lg bg-body-tertiary mb-5">
  <div class="container-fluid">
    <a class="navbar-brand" href="/"><b><i>Bank App</i></b></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse ms-3" id="navbarText">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active fst-italic align-bottom d-flex justify-content-end link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover" id="myAnchor" onclick="showDiv()" >Add New Customer</a>
        </li>
        <li class="nav-item fst-italic align-bottom d-flex justify-content-end link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">
          <a class="nav-link" href="#" onclick="hideDiv()">Add Bank Account</a>
        </li>
        <li class="nav-item fst-italic align-bottom d-flex justify-content-end link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">
          <a class="nav-link" href="<%=request.getContextPath()%>/list">View Customers</a>
        </li>
        <li class="nav-item fst-italic align-bottom d-flex justify-content-end link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">
          <a class="nav-link" onclick="showDiv3()">View Transactions</a>
        </li>
      </ul>
      <span class="navbar-text">
        <b> <a href ="AdminHomePage.jsp" class="text-decoration-none">Admin Home Page</a> &nbsp;</b>
      </span>
    </div>
  </div>
</nav>

<div class=" translate-middle  p-4 m-5 rounded bg-white" id="myDiv">
<h2 class ="mb-4 fst-italic text-primary ms-5 ps-5">Add New Customer</h2>
<form action="SignUpController" class="m-5 ps-5 pe-5">
<div class="input-group mb-3">
  <span class="input-group-text">First & Last Name</span>
  <input type="text" aria-label="text" class="form-control" placeholder="First Name" required>
   <input type="text" aria-label="text" class="form-control" placeholder="Last Name" required>
</div>
<div class="input-group mb-3">
  <span class="input-group-text">Login Id</span>
  <input type="email" aria-label="Email" class="form-control" placeholder="Enter Your Email" required>
</div>

<div class="input-group mb-3">
  <span class="input-group-text">Password</span>
  <input type="password" aria-label="password" class="form-control" placeholder="Create New Password" required>
</div>

<div class="vstack gap-2 col-md-12 mx-auto">
<input type ="submit" value ="Sign Up" class="btn btn-success">
<input type ="reset" value ="Cancel" class = "btn btn-danger">
</div>
</form>
</div>

<div id ="myDiv1">
<h2 class ="mb-4 fst-italic text-primary ms-5 ps-5">Add Bank Account</h2>
<form class="m-5 ps-5 pe-5" action="AdminController" onsubmit="" method="post">
<div class="vstack gap-2 col-md-12 mx-auto">
<div class="form-floating mb-3 border border-success-subtle rounded-3">
  <input type="text" class="form-control rounded-3" id="floatingInput" placeholder="c" name ="id" required>
  <label for="floatingInput">Search by Customer Id</label>
</div>
</div>
<input type="submit" value="Search" class="btn btn-success align-self-end justify-content-end pe-5 ps-5 rounded-5" onclick="subDiv()" id="btn" >
</form>
</div>

<div id = "myDiv2">
<div>
<h2 class ="mb-4 fst-italic text-primary ms-5 ps-5">Customer Details</h2>
 <table id="customerTable" border="1" class="table table-hover ms-5 me-5 ps-5 pe-5 mb-4">
        <thead class="pe-5">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Account Number</th>
                <th>Balance</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
       <c:forEach var="user" items="${listUser}">
			<tr>
                   <td>
                        <c:out value="${user.id}" />
		            </td>
                     <td>
                        <c:out value="${user.fname}" />
                     </td>
                       <td>
                        <c:out value="${user.lname}" />
                    </td>
                   <td>
          <c:out value="${user.email}" />
        </td>

                                    <td><a href="edit?id=<c:out value='${user.id}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>
    </table>
</div>

</div>


<div id = "myDiv3">
<h2 class ="mb-4 fst-italic text-primary ms-5 ps-5">All Transaction</h2>
 <table id="TransactionTable" border="1" class="table table-hover ms-5 me-5 ps-5 pe-5 mb-4">
        <thead>
            <tr>
                <th>Sender A/c No</th>
                <th>Reciever A/c No</th>
                <th>Type of Transaction</th>
                <th>Amount</th>
                <th>Date</th>
            </tr>
        </thead>
        <tbody id="customerTableBody">
            <!-- Table body will be populated dynamically -->
        </tbody>
    </table>
</div>







<script>
    function showDiv() {
        var divElement = document.getElementById("myDiv");
        var divElement1 = document.getElementById("myDiv1");
        var divElement2 = document.getElementById("myDiv2");
        var divElement3 = document.getElementById("myDiv3");
        
        if(divElement.style.display = "inline"){
        	divElement1.style.display = "none";
        	divElement2.style.display = "none";
        	divElement3.style.display = "none";
        }
    }
    function hideDiv() {
        var divElement = document.getElementById("myDiv");
        var divElement1 = document.getElementById("myDiv1");
        var divElement2 = document.getElementById("myDiv2");
        var divElement2 = document.getElementById("myDiv3");
        
        if (divElement1.style.display = "inline") {
        	divElement.style.display = "none";
        	divElement2.style.display = "none";
        	divElement3.style.display = "none";
		}
    }
    function showDiv2() {
        var divElement = document.getElementById("myDiv");
        var divElement1 = document.getElementById("myDiv1");
        var divElement2 = document.getElementById("myDiv2");
        var divElement3 = document.getElementById("myDiv3");
        
        if(divElement2.style.display = "inline"){
        	divElement.style.display = "none";
        	divElement1.style.display = "none";
        	divElement3.style.display = "none";
        }else divElement2.style.display = "none";
    }
    function showDiv3() {
        var divElement = document.getElementById("myDiv");
        var divElement1 = document.getElementById("myDiv1");
        var divElement2 = document.getElementById("myDiv2");
        var divElement3 = document.getElementById("myDiv3");
        
        if(divElement3.style.display = "inline"){
        	divElement1.style.display = "none";
        	divElement2.style.display = "none";
        	divElement.style.display = "none";
        }
    }
    
    
//    ------


       

</script>

</body>
</html>

