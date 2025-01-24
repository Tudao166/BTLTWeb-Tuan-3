package com.week3.controller.web;

import com.week3.model.UserModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@WebServlet(urlPatterns = {"/trang-chu"})
public class HomeController extends HttpServlet {

    private static final DateTimeFormatter DATE_FORMATTER = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        forwardToPage(request, response, "/views/web/home.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy dữ liệu từ form
        UserModel userModel = extractUserFromRequest(request);

        // Đặt thuộc tính để truyền sang trang "thanks.jsp"
        request.setAttribute("checkbox", request.getParameterValues("offers"));
        request.setAttribute("radio", request.getParameter("referral"));
        request.setAttribute("user", userModel);
        request.setAttribute("contact", request.getParameter("contact-method"));

        forwardToPage(request, response, "/views/web/thanks.jsp");
    }

    /**
     * Chuyển tiếp yêu cầu tới trang JSP
     */
    private void forwardToPage(HttpServletRequest request, HttpServletResponse response, String pagePath) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher(pagePath);
        dispatcher.forward(request, response);
    }

    /**
     * Trích xuất dữ liệu người dùng từ request và tạo một đối tượng UserModel
     */
    private UserModel extractUserFromRequest(HttpServletRequest request) {
        UserModel userModel = new UserModel();

        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String dateOfBirthStr = request.getParameter("dateOfBirth");

        // Xử lý ngày sinh (có kiểm tra lỗi)
        LocalDate dateOfBirth = null;
        try {
            dateOfBirth = LocalDate.parse(dateOfBirthStr, DATE_FORMATTER);
        } catch (Exception e) {
            dateOfBirth = null; // Nếu ngày không hợp lệ, để giá trị là null
        }

        // Gán dữ liệu cho UserModel
        userModel.setEmail(email);
        userModel.setFirstName(firstName);
        userModel.setLastName(lastName);
        userModel.setDateOfBirth(dateOfBirth);

        return userModel;
    }
}
