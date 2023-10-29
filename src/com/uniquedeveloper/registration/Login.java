package com.uniquedeveloper.registration;

import java.io.*;
import javax.servlet.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uemail = request.getParameter("username");
		String upwd = request.getParameter("password");
		HttpSession session = request.getSession(true);
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		if(uemail == null || uemail.equals("")){
			request.setAttribute("status","invalidEmail");
			dispatcher = request.getRequestDispatcher("Login.jsp");
			dispatcher.forward(request, response);
		}
		
		if(upwd == null || upwd.equals("")){
			request.setAttribute("status","invalidUpwd");
			dispatcher = request.getRequestDispatcher("Login.jsp");
			dispatcher.forward(request, response);
		}
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login?useSSL=false", "root", "root");
			PreparedStatement pst = con.prepareStatement("select uemail from users where uemail='"+uemail+"'and upwd='"+upwd+"'");
			
			
			ResultSet rs = pst.executeQuery();
			if (rs.next()){
				String user=rs.getString(1);
				session.setAttribute("username",user);
				dispatcher = request.getRequestDispatcher("Homepage.jsp");
			}else{
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("Login.jsp");
			}
			dispatcher.forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
