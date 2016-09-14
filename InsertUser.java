package com.github.actions;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertUser
 */
@WebServlet("/Insert")
public class InsertUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try(PrintWriter out = response.getWriter()) {
			String user = request.getParameter("username");
			String pass = request.getParameter("password");
			try {
				response.setContentType("text/html");
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/github","root","");
				Statement stmt = conn.createStatement();
				int count = stmt.executeUpdate("insert into bios values('"+user+"','"+pass+"')");
				if(count > 0) {
					out.println("Successfully inserted");
					out.println("<a href=\"github.jsp\">Add Another</a>");
				} else {
					response.sendRedirect("github.jsp");
				}
			} catch(Exception e) { 
				out.println(e);
			}
		}
	}

}
