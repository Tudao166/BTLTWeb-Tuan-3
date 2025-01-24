<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h1 class="mb-4 text-primary">Cảm ơn bạn đã tham gia danh sách email của chúng tôi!</h1>

    <p class="lead">Dưới đây là thông tin bạn đã nhập:</p>

    <div class="row mb-3">
        <div class="col-md-3 font-weight-bold">Email:</div>
        <div class="col-md-9"><%= user.getEmail() %></div>
    </div>
    <div class="row mb-3">
        <div class="col-md-3 font-weight-bold">Họ:</div>
        <div class="col-md-9"><%= user.getFirstName() %></div>
    </div>
    <div class="row mb-3">
        <div class="col-md-3 font-weight-bold">Tên:</div>
        <div class="col-md-9"><%= user.getLastName() %></div>
    </div>
    <div class="row mb-3">
        <div class="col-md-3 font-weight-bold">Ngày sinh:</div>
        <div class="col-md-9"><%= user.getDateOfBirth() %></div>
    </div>
    <div class="row mb-3">
        <div class="col-md-3 font-weight-bold">Biết đến qua:</div>
        <div class="col-md-9"><%= radio %></div>
    </div>
    <div class="row mb-3">
        <div class="col-md-3 font-weight-bold">Nhận thông báo:</div>
        <div class="col-md-9">
            <ul class="list-unstyled">
                <%
                    String[] offers = (String[]) request.getAttribute("checkbox");
                    if (offers != null) {
                        for (String offer : offers) {
                %>
                            <li><%= offer %></li>
                <%
                        }
                    } else {
                %>
                    <li>Không chọn ưu đãi nào</li>
                <%
                    }
                %>
            </ul>
        </div>
    </div>
    <div class="row mb-3">
        <div class="col-md-3 font-weight-bold">Phương thức liên lạc:</div>
        <div class="col-md-9"><%= contact %></div>
    </div>

    <p class="mt-4">Để nhập địa chỉ email khác, hãy nhấn nút Quay lại trên trình duyệt của bạn hoặc nhấn nút Trở về bên dưới.</p>

    <form action="trang-chu" method="get">
        <button type="submit" class="btn btn-primary">Trở về</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
