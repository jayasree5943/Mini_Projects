package com.jay.servlet;

import com.jay.dao.UserDao;
import com.jay.model.UserModel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

   
    private UserDao dao = new UserDao();

    public UserServlet() {
        super();
    }

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    	System.out.println("doGet called");

    	
        List<UserModel> users = dao.getAllUsers();
        request.setAttribute("userList", users);
        System.out.println("Users from DB: " + users.size());
        request.getRequestDispatcher("user.jsp").forward(request, response);
    }

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    	System.out.println("doPost called");

    	
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");

        UserModel user = new UserModel(0, fname, lname, phone, email);
        dao.insertUser(user);

        
        List<UserModel> users = dao.getAllUsers();
        request.setAttribute("userList", users);

        request.getRequestDispatcher("user.jsp").forward(request, response);
    }
}
