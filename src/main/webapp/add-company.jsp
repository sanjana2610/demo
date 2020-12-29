<%--
  Created by IntelliJ IDEA.
  User: sanju
  Date: 18/11/20
  Time: 11:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Placement Portal</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <!-- JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
            integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
            crossorigin="anonymous"></script>
    <style>
        .accordion {
            background-color: #3D5A80;
            cursor: pointer;
            margin-top: 10px;
            margin-bottom: 10px;
            width: 100%;
            text-align: left;
            border: none;
            outline: none;
        }

    </style>
</head>
<body>
<nav   class="navbar navbar-expand-lg" style="background-color: #3D5A80">
    <a class="navbar-brand text-white" style="cursor: pointer; color: #E0FBFC">
        Place.io
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-list" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M2.5 11.5A.5.5 0 0 1 3 11h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 3 7h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 3 3h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
</svg></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
        </ul>
        <button class="btn btn-outline-info">Logout</button>
    </div>
</nav>
<br>
<div class="row">
    <div class="col-sm-2">
        <div class="accordion card" id="sidebarAccordion">
            <div class="panel">
                <div aria-controls="#collapse1" data-target="#collapse1" id="heading1"
                     class="card-header font-weight-bold " data-toggle="collapse" style="cursor: pointer;">
                    <div class="row">
                        <div class="col-10">
                            <p class="mb-0" style="color: #E0FBFC">
                                Companies
                            </p>
                        </div>
                    </div>
                </div>
                <ul aria-labelledby="#heading1" id="collapse1" class="collapse list-group"
                    data-parent="#sidebarAccordion">
                    <li   class="list-group-item" style="cursor: pointer;">
                        <a style="color: #3D5A80" >Jobs</a>
                    </li>
                    <li   class="list-group-item" style="cursor: pointer;">
                        <a style="color: #3D5A80" >Companies</a>
                    </li>
                </ul>
            </div>
            <div class="panel">
                <div aria-controls="#collapse2" data-target="#collapse2" id="heading2"
                     class="card-header font-weight-bold " data-toggle="collapse" style="cursor: pointer;">
                    <div class="row">
                        <div class="col-10">
                            <p class="mb-0" style="color: #E0FBFC">
                                College Corner
                            </p>
                        </div>
                    </div>
                </div>
                <ul aria-labelledby="#heading2" id="collapse2" class="collapse list-group"
                    data-parent="#sidebarAccordion">
                    <li   class="list-group-item" style="cursor: pointer;">
                        <a style="color: #3D5A80" >Schedule Company</a>
                    </li>
                    <li   class="list-group-item" style="cursor: pointer;">
                        <a style="color: #3D5A80" >Students</a>
                    </li>
                </ul>
            </div>
            <div class="panel">
                <div aria-controls="#collapse3" data-target="#collapse3" id="heading3"
                     class="card-header font-weight-bold " data-toggle="collapse" style="cursor: pointer;">
                    <div class="row">
                        <div class="col-10">
                            <p class="mb-0" style="color: #E0FBFC">
                                Company Corner
                            </p>
                        </div>
                    </div>
                </div>
                <ul aria-labelledby="#heading3" id="collapse3" class="collapse list-group"
                    data-parent="#sidebarAccordion">
                    <li   class="list-group-item" style="cursor: pointer;">
                        <a style="color: #3D5A80" >Add Job</a>
                    </li>
                    <li   class="list-group-item" style="cursor: pointer;">
                        <a style="color: #3D5A80" >Students</a>
                    </li>
                </ul>
            </div>
            <div class="panel">
                <div aria-controls="#collapse4" data-target="#collapse4" id="heading4"
                     class="card-header font-weight-bold " data-toggle="collapse" style="cursor: pointer;">
                    <div class="row">
                        <div class="col-10">
                            <p class="mb-0" style="color: #E0FBFC">
                                Administration
                            </p>
                        </div>
                    </div>
                </div>
                <ul aria-labelledby="#heading4" id="collapse4" class="collapse list-group"
                    data-parent="#sidebarAccordion">
                    <li   class="list-group-item" style="cursor: pointer;">
                        <a style="color: #3D5A80" >Add Company</a>
                    </li>
                    <li   class="list-group-item" style="cursor: pointer;">
                        <a style="color: #3D5A80" >Add College</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="col-sm-10">
        <div style="color: #3D5A80">
            <div class="row">
                <ul class="nav nav-tabs col-md-9">
                    <li class="nav-item">
                        <h5><a style="color: #3D5A80" class="nav-link active">Add Company</a></h5>
                    </li>
                </ul>
                <div>
                </div>
            </div>
            <div class="row mt-4">
                <div class="col-md-9">
                    <form action="/placement-portal/addCompany" method="get">
                        <div class="form-group">
                            <label>Company Name</label>
                            <input style="color: #3D5A80"class="form-control" type="text" name="name" required>
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea style="color: #3D5A80"class="form-control"  name="description" rows="3"></textarea>
                        </div>
                        <div class="form-group">
                            <label>Location</label>
                            <input style="color: #3D5A80" class="form-control" type="text" name="location" required>
                        </div>
                        <div>
                            <button class="btn btn-block" style="background-color:#EE6C4D; color:#E0FBFC;width: 150px;">Add
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>

</body>
</html>
