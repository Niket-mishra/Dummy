<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
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
        <li class="nav-item fst-italic align-bottom d-flex justify-content-end link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">
          <a class="nav-link" href="#" onclick="hideDiv()">Passbook</a>
        </li>
        <li class="nav-item fst-italic align-bottom d-flex justify-content-end link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">
          <a class="nav-link" href="#">New Transaction</a>
        </li>
        <li class="nav-item fst-italic align-bottom d-flex justify-content-end link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">
          <a class="nav-link" href="#">Edit Profile</a>
        </li>
      </ul>
      <span class="navbar-text">
        <b>Customer Home Page &nbsp;</b>
      </span>
    </div>
  </div>
</nav>

</body>
</html>