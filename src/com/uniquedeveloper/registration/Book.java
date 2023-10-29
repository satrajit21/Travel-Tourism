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
 * Servlet implementation class Book
 */
@WebServlet("/Book")
public class Book extends HttpServlet {
	public static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*PrintWriter out = response.getWriter();
		out.print("Work");*/
		
		HttpSession session = request.getSession(true);
		String uemail = (String)session.getAttribute("user");
		String place = request.getParameter("places");
		String no_g = request.getParameter("guest");
		String arrival = request.getParameter("arrive");
		
		int no1=Integer.parseInt(no_g);
		int mul = 1;
		if(place.equals("Kashmir"))mul=no1*30000;
		if(place.equals("Goa"))mul=no1*35000;
		if(place.equals("Sikkim"))mul=no1*25000;
		if(place.equals("Mp"))mul=no1*20000;
		if(place.equals("Shillong"))mul=no1*25000;
		if(place.equals("Uk"))mul=no1*20000;
		if(place.equals("Shimla"))mul=no1*25000;
		
		String cost=String.valueOf(mul);
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login?", "root", "root");
			PreparedStatement pst = con.prepareStatement("insert into book(uemail,place,no_g,arrival,cost) values(?,?,?,?,?)");
			pst.setString(1, uemail);
			pst.setString(2, place);
			pst.setInt(3, Integer.parseInt(no_g));
			pst.setString(4, arrival);
			pst.setString(5,  cost);
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("book.jsp");
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

