package com.uniquedeveloper.registration;


import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/feedback")
public class feedback extends HttpServlet{

    //create the query(changed)
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        
        PrintWriter pw = res.getWriter();
        
        res.setContentType("text/hmtl");
        
        HttpSession session = req.getSession(true);
		String email = (String)session.getAttribute("user");
        String name = req.getParameter("Name");
        //String email = req.getParameter("email");
        String phn = req.getParameter("Phone number");
        String rate = req.getParameter("rate");
        String review = req.getParameter("review");

        
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        try(Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");
                PreparedStatement ps = con.prepareStatement("INSERT INTO feedback(name,email,phno,rate,review) VALUES(?,?,?,?,?)");){
            
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, phn);
            ps.setString(4, rate);
            ps.setString(5, review);

            
            int count = ps.executeUpdate();
            
            RequestDispatcher dispatcher = req.getRequestDispatcher("feedback.jsp");
            

            if(count==0) {
                pw.println("Record not stored into database");
            }else {
                pw.println("Record Stored into Database");
            }

        }catch(SQLException se) {
            pw.println(se.getMessage());
            se.printStackTrace();
        }catch(Exception e) {
            pw.println(e.getMessage());
            e.printStackTrace();
        }

        
        pw.close();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(req, resp);
    }
    
	
	 
}
