package com.jay.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.jay.dao.VenderDAO;
import com.jay.model.VernderModel;

@WebServlet("/VendorServlet")
public class VenderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Optional test
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.getWriter().println("VendorServlet is working...");
    }

    // Actual vendor data save
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //  Check login
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("username") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        // 1️ Read vendor details
        String vendorName = request.getParameter("vendername");
        String gstNumber  = request.getParameter("gstnumber");
        String email      = request.getParameter("email");
        String mobile     = request.getParameter("mobilenumber");

        // 2️ Set into model
        VernderModel model = new VernderModel();
        model.setVendorName(vendorName);
        model.setGstNumber(gstNumber);
        model.setEmail(email);
        model.setMobile(mobile);

        // 3️ Call DAO
        VenderDAO dao = new VenderDAO(); 
        dao.insertlogin(model);

        // 4️ Redirect / success page
        request.setAttribute("successMessage", "Vendor data added successfully");
        
     // Forward to JSP
        request.getRequestDispatcher("vender.jsp").forward(request, response);
    }
}
