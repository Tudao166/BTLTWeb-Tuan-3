<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h1 class="mb-4" style="color: teal">Thanks for joining our email list</h1>

    <p class="lead">Here is the information that you entered:</p>

    <div class="row mb-3">
        <div class="col-md-3 font-weight-bold">Email:</div>
        <div class="col-md-9">${user.email}</div>
    </div>
    <div class="row mb-3">
        <div class="col-md-3 font-weight-bold">First Name:</div>
        <div class="col-md-9">${user.firstName}</div>
    </div>
    <div class="row mb-3">
        <div class="col-md-3 font-weight-bold">Last Name:</div>
        <div class="col-md-9">${user.lastName}</div>
    </div>
    <div class="row mb-3">
        <div class="col-md-3 font-weight-bold">Date of Birth:</div>
        <div class="col-md-9">${user.dateOfBirth}</div>
    </div>
    <div class="row mb-3">
        <div class="col-md-3 font-weight-bold">I'm know you through:</div>
        <div class="col-md-9">${radio}</div>
    </div>
    <div class="row mb-3">
        <div class="col-md-3 font-weight-bold">Answer of receive announcements:</div>
        <div class="col-md-9">
            <ul class="list-unstyled">
                <%
                    String[] offers = (String[]) request.getAttribute("checkbox");
                    if (offers != null) {
                        for (String offer : offers) {
                            out.println("<li>" + offer + "</li>");
                        }
                    } else {
                        out.println("<li>No offers selected</li>");
                    }
                %>
            </ul>
        </div>
    </div>
    <div class="row mb-3">
        <div class="col-md-3 font-weight-bold">Contact method:</div>
        <div class="col-md-9">${contact}</div>
    </div>

    <p class="mt-4">To enter another email address, click on the Back
        button in your browser or the Return button shown
        below.</p>

    <form action="trang-chu" method="get">
        <button type="submit" class="btn btn-primary">Return</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
