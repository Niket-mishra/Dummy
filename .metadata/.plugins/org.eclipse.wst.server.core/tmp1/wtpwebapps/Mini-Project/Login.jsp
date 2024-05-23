<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Login Page</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class = "bg-light">
<div class="position-absolute top-50 start-50 translate-middle  p-4 mb-5 rounded shadow-lg bg-white">
<h2 class ="mb-4 fst-italic text-primary">Login Page</h2>
<form action="LoginController" method ="post"'>
<div class="input-group mb-3">
  <span class="input-group-text">Login Id</span>
  <input type="email" aria-label="Email" class="form-control" placeholder="Email" name ="username" required>
</div>

<div class="input-group mb-3">
  <span class="input-group-text">Password</span>
  <input type="password" aria-label="password" class="form-control" placeholder="Password" name="password" required>
</div>
<div class = "row g-2 mb-3">
  <div class="form-check col-auto pe-5 ms-3">
    <input type="radio" class="form-check-input" id="validationFormCheck2" name="usertype" value ="CUSTOMER" required>
    <label class="form-check-label" for="validationFormCheck2">Customer</label>
  </div>
  <div class="form-check col-auto ms-3">
    <input type="radio" class="form-check-input" id="validationFormCheck3" name="usertype" value = ADMIN required>
    <label class="form-check-label" for="validationFormCheck3">Admin</label>
    <div class="invalid-feedback">Select anyone to Login</div>
  </div>
  </div>

<div class="vstack gap-2 col-md-12 mx-auto">
<input type ="submit" value ="Login" class="btn btn-success">
<input type ="reset" value ="Cancel" class = "btn btn-danger">
<a href="SignUp.jsp" class = "fst-italic align-bottom d-flex justify-content-end link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Sign Up !!</a>
</div>

</form>
</div>
</body>
</html>