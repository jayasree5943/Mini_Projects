package com.jay.servlet;

import java.io.IOException;

import com.jay.dao.RegistrationDAO;
import com.jay.model.VernderModel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Optional: test servlet
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.getWriter().println("RegistrationServlet is working...");
    }

    // Actual registration logic
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1️ Read registration data
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // 2️ Set data into model
        VernderModel model = new VernderModel();
        model.setUsername(username);
        model.setPassword(password);

        // 3️ Call DAO to insert data
        RegistrationDAO dao = new RegistrationDAO();
        dao.register(model);

        // 4️ Redirect to login page
        response.sendRedirect("login.jsp");
    }
}
