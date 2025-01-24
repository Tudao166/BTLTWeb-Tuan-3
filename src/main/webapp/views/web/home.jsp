<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Survey</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-lg">
                <div class="card-header bg-teal text-white text-center py-3">
                    <img src="<c:url value='/template/image.png'/>" alt="Murach Logo" class="img-fluid mb-3" style="max-width: 80px;">
                    <h3>Customer Feedback Survey</h3>
                </div>
                <div class="card-body">
                    <p class="text-muted text-center">We value your feedback! Please take a moment to complete this survey.</p>
                    <form action="trang-chu" method="post">
                        <!-- User Information -->
                        <h5 class="text-primary">Your Information</h5>
                        <div class="mb-3">
                            <label for="firstName" class="form-label">First Name</label>
                            <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter your first name">
                        </div>
                        <div class="mb-3">
                            <label for="lastName" class="form-label">Last Name</label>
                            <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter your last name">
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email">
                        </div>
                        <div class="mb-3">
                            <label for="dateOfBirth" class="form-label">Date of Birth</label>
                            <input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth">
                        </div>

                        <!-- How did you hear about us -->
                        <h5 class="text-primary">How did you hear about us?</h5>
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
                        <div class="form-check mb-3">
                            <input type="radio" class="form-check-input" id="other" name="referral" value="Other">
                            <label class="form-check-label" for="other">Other</label>
                        </div>

                        <!-- Special Offers -->
                        <h5 class="text-primary">Special Offers</h5>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="cds" name="offers" value="YES, I'd like that.">
                            <label class="form-check-label" for="cds">YES, I'd like that.</label>
                        </div>
                        <div class="form-check mb-3">
                            <input type="checkbox" class="form-check-input" id="email-announcements" name="offers" value="YES, please send me email announcements.">
                            <label class="form-check-label" for="email-announcements">YES, please send me email announcements.</label>
                        </div>

                        <!-- Contact Method -->
                        <div class="mb-3">
                            <label for="contact-method" class="form-label">Preferred Contact Method:</label>
                            <select class="form-select" id="contact-method" name="contact-method">
                                <option value="Email">Email</option>
                                <option value="Postal mail">Postal mail</option>
                            </select>
                        </div>

                        <!-- Submit Button -->
                        <button type="submit" class="btn btn-primary w-100">Submit Survey</button>
                    </form>
                </div>
                <div class="card-footer text-muted text-center">
                    Thank you for taking the time to provide your feedback!
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
