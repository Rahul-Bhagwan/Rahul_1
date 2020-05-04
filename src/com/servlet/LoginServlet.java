package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.LoginBean;
import com.dao.ConnectionLogin;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public LoginServlet() {
        super();
          }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		request.getContextPath();
		
		String first_name=request.getParameter("first_name");
		String last_name=request.getParameter("last_name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		RequestDispatcher rd;
		
		LoginBean loginbean = new LoginBean(first_name, last_name, email, password);
		
		ConnectionLogin a=new ConnectionLogin();
		
		try {
			if(a.login(loginbean)==true) {
				
				rd=request.getRequestDispatcher("Welcome.jsp");
				rd.forward(request, response);
			                              }
			else {
				rd=request.getRequestDispatcher("register.jsp");
				rd.include(request, response);
			    }
		} catch (ClassNotFoundException | ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
               out.close();
	}

		
		
	}


