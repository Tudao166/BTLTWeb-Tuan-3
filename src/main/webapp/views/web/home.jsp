<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Survey</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <div class="text">
                        <img src="<c:url value='/template/image.png'/> " alt="Murach Logo" class="img-fluid mb-4" style="max-width: 100px;">
                        <h4 class="card-title" style="color: teal">Survey</h4>
                        <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>

                    </div>
                    <form action="trang-chu" method="post">
                        <h5 class="card-title" style="color: teal">Your infomation</h5>
                        <div class="form-group">
                            <label for="firstName">First Name</label>
                            <input type="text" class="form-control" id="firstName" name="firstName">
                        </div>
                        <div class="form-group">
                            <label for="lastName">Last Name</label>
                            <input type="text" class="form-control" id="lastName" name="lastName">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email">
                        </div>
                        <div class="form-group">
                            <label for="dateOfBirth">Date of Birth</label>
                            <input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth">
                        </div>
                        <div class="form-group">
                            <h5 class="card-title" style="color: teal">How did you hear about us?</h5>
                            <div class="form-group">
                                <div class="form-check">
                                    <input type="radio" class="form-check-input" id="search-engine" name="referral" value="Search engine" checked>
                                    <label class="form-check-label" for="search-engine">Search engine</label>
                                </div>
                                <div class="form-check">
                                    <input type="radio" class="form-check-input" id="word-of-mouth" name="referral" value="Word of mouth">
                                    <label class="form-check-label" for="word-of-mouth">Word of mouth</label>
                                </div>
                                <div class="form-check">
                                    <input type="radio" class="form-check-input" id="social-media" name="referral" value="Social Media">
                                    <label class="form-check-label" for="social-media">Social Media</label>
                                </div>
                                <div class="form-check">
                                    <input type="radio" class="form-check-input" id="other" name="referral" value="Other">
                                    <label class="form-check-label" for="other">Other</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <h5 class="card-title" style="color: teal">Would you like to receive announcements about new CDs and special offers?</h5>                            <div class="form-group">
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="cds" name="offers" value="YES, I'd like that.">
                                    <label class="form-check-label" for="cds">YES, I'd like that.</label>
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="email-announcements" name="offers" value="YES, please send me email announcements.">
                                    <label class="form-check-label" for="email-announcements">YES, please send me email announcements.</label>
                                </div>
                            </div>
                                <div class="form-group">
                                    <label for="contact-method">Please contact me by:</label>
                                    <select class="form-control" id="contact-method" name="contact-method">
                                        <option value="Email">Email</option>
                                        <option value="Postal mail">Postal mail</option>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary btn-block">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
