package com.uniquedeveloper.registration;

import java.io.*;
import javax.servlet.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Contactus
 */
@WebServlet("/Contactus")
public class Contactus extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String umsg = request.getParameter("msg");
		PrintWriter out=response.getWriter();
		RequestDispatcher dispatcher = null;
		Connection con = null;
		if(uname == null || uname.equals("")){
			request.setAttribute("status","invalidName");
			dispatcher = request.getRequestDispatcher("contactus.jsp");
			dispatcher.forward(request, response);
		}
		if(uemail == null || uemail.equals("")){
			request.setAttribute("status","invalidEmail");
			dispatcher = request.getRequestDispatcher("contactus.jsp");
			dispatcher.forward(request, response);
		}
		if(umsg == null || umsg.equals("")){
			request.setAttribute("status","invalidMsg");
			dispatcher = request.getRequestDispatcher("contactus.jsp");
			dispatcher.forward(request, response);
		}
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login?", "root", "root");
			PreparedStatement pst = con.prepareStatement("insert into contact(uname,uemail,umsg) values(?,?,?)");
			pst.setString(1, uname);
			pst.setString(2, uemail);
			pst.setString(3, umsg);
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("contactus.jsp");
			if(rowCount > 0){
				request.setAttribute("status", "success");
			}else{
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				con.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
			
		}
	}

}



