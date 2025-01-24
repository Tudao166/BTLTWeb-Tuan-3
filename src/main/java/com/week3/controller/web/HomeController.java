package com.week3.controller.web;

import com.week3.model.UserModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;

@WebServlet(urlPatterns = {"/trang-chu"})
public class HomeController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserModel userModel = new UserModel();
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String dateOfBirthStr = request.getParameter("dateOfBirth");
        String radioChoice = request.getParameter("referral");
        String[] checkBoxChoice = request.getParameterValues("offers");
        String select = request.getParameter("contact-method");
        LocalDate dateOfBirth = null;
        dateOfBirth = LocalDate.parse(dateOfBirthStr, DateTimeFormatter.ofPattern("yyyy-MM-dd"));

        userModel.setEmail(email);
        userModel.setFirstName(firstName);
        userModel.setLastName(lastName);
        userModel.setDateOfBirth(dateOfBirth);
        request.setAttribute("checkbox", checkBoxChoice);
        request.setAttribute("radio", radioChoice);
        request.setAttribute("user", userModel);
        request.setAttribute("contact", select);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/thanks.jsp");
        rd.forward(request, response);
    }


}
