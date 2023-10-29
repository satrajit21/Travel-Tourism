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

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String upwd = request.getParameter("pass");
		String repass = request.getParameter("re_pass");
		String umobile = request.getParameter("contact");
		PrintWriter out=response.getWriter();
		RequestDispatcher dispatcher = null;
		Connection con = null;
		if(uname == null || uname.equals("")){
			request.setAttribute("status","invalidName");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if(uemail == null || uemail.equals("")){
			request.setAttribute("status","invalidEmail");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if(upwd == null || upwd.equals("")){
			request.setAttribute("status","invalidPwd");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}else if(!upwd.equals(repass)) {
			request.setAttribute("status","invalidconfirm");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if(umobile == null || umobile.equals("")){
			request.setAttribute("status","invalidmobile");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}else if(umobile.length()>10) {
			request.setAttribute("status","invalidmobilelen");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login?useSSL=false", "root", "root");
			PreparedStatement ps=con.prepareStatement("select * from users where uname=? or uemail=?");
			ps.setString(1,uname);
			ps.setString(2,uemail);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
            	request.setAttribute("status","notavlu");
    			dispatcher = request.getRequestDispatcher("registration.jsp");
    			dispatcher.forward(request, response);
            }
            else
            {
			PreparedStatement pst = con.prepareStatement("insert into users(uname,upwd,uemail,umobile) values(?,?,?,?)");
			pst.setString(1, uname);
			pst.setString(2, upwd);
			pst.setString(3, uemail);
			pst.setString(4, umobile);
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
			if(rowCount > 0){
				request.setAttribute("status", "success");
			}else{
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
                }
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
