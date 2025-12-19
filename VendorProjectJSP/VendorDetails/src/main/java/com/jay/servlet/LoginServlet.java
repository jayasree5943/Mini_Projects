package com.jay.servlet;

import java.io.IOException;

import com.jay.dao.LoginDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.getWriter().println("Login is done");
    } 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1️ Read data from login.jsp
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // 2️ Validate using DAO
        LoginDAO dao = new LoginDAO();
        boolean isValid = dao.validateLogin(username, password);

        // 3️ If valid → open vendor page
        if (isValid) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);

            response.sendRedirect("vender.jsp");
        } 
        // 4️ If invalid → back to login
        else {
            
            response.sendRedirect("error.jsp");
        }
    }
}
