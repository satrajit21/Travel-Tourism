package com.uniquedeveloper.registration;

import java.io.*;
import javax.servlet.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Final
 */
@WebServlet("/Final")
public class Final extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		String uemail = (String)session.getAttribute("user");
		String place = null;
		String member = null;
		String arrival = null;
		String leaving = null;
		//String cost = null;
		
		
		Connection con = null;
		ResultSet rs = null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login?useSSL=false", "root", "root");
			PreparedStatement pst = con.prepareStatement("select place,no_g,arrival,leaving from book where uemail = '"+uemail+"' ");
			
			
			pst.setString(1, place);
			//pst.setString(2, member);
			//pst.setString(3, arrival);
			//pst.setString(4, leaving);
			//pst.setString(5, cost);
			
			
			rs = pst.executeQuery();
			while(rs.next()== true){
				place=rs.getString(1);
				member=rs.getString(2);
				arrival=rs.getString(3);
				leaving=rs.getString(4);
				//cost=rs.getString(5);
			}
			request.setAttribute("uemail",uemail);
			request.setAttribute("place",place);
			request.setAttribute("member",member);
			request.setAttribute("arrival",arrival);
			request.setAttribute("leaving",leaving);
			// request.setAttribute("cost",cost);
			
			 
			RequestDispatcher rd = request.getRequestDispatcher("totalPayment.jsp");
		
			rd.forward(request, response);
			 
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		 
	}

}
