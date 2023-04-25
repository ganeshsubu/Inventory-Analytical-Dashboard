package com.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Dao;
import com.dao.DaoMedicine;
import com.module.Admin;
import com.module.Med;

import sun.util.calendar.BaseCalendar.Date;

@WebServlet("/")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path=request.getServletPath();
		switch(path)
		{
		case "/register":registerAdmin(request,response);
		break;
		case"/login":logincheck(request,response);
		break;
		case"/dashboard":dashboard(request,response);
		break;
		case"/addmedicine":addmedicine(request,response);
		break;
		case"/edit":updatemedicine(request,response);
		break;
		case "/delete":deletemedicine(request,response);
		break;
		default:home(request,response);
		break;
		}
	}

	
		
	private void deletemedicine(HttpServletRequest request, HttpServletResponse response) {
		int id=Integer.parseInt(request.getParameter("id"));
		DaoMedicine.delete(id);
		RequestDispatcher rd=request.getRequestDispatcher("TotalMedicine.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}



	private void updatemedicine(HttpServletRequest request, HttpServletResponse response) {
		int id=Integer.parseInt(request.getParameter("id"));
		String mname=request.getParameter("mname");
		String mtype=request.getParameter("mtype");
		int quantity=Integer.parseInt(request.getParameter("quantity"));
		int price=Integer.parseInt(request.getParameter("price"));
		 java.util.Date expirydate = null;
		    java.util.Date currentdate = null;
		    try {
		        expirydate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("expiry"));
		        currentdate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("current"));
		    }catch (ParseException e) {
		        e.printStackTrace();
		    }
		    Med m=new Med(id, mname, mtype, quantity, price, expirydate, currentdate);
		    DaoMedicine.updatemedicine(m);
		    RequestDispatcher rd=request.getRequestDispatcher("TotalMedicine.jsp");
		    try {
				rd.forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		    
	}
	private void addmedicine(HttpServletRequest request, HttpServletResponse response) {
	    String name = request.getParameter("medicine-name");
	    String type = request.getParameter("medicine-type");
	    int quantity = Integer.parseInt(request.getParameter("medicine-quantity"));
	    int price = Integer.parseInt(request.getParameter("medicine-price"));
	    java.util.Date expiryDate = null;
	    java.util.Date currentDate = null;
	    try {
	        expiryDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("medicine-expiry"));
	        currentDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("medicine-current-date"));
	    } catch (ParseException e) {
	        e.printStackTrace();
	    }
	    Med m = new Med(name, type, quantity, price, expiryDate, currentDate);
	    DaoMedicine.insert(m);
	    RequestDispatcher rd = request.getRequestDispatcher("TotalMedicine.jsp");
	    try {
	        rd.forward(request, response);
	    } catch (ServletException | IOException e) {
	        e.printStackTrace();
	    }
	}

	private void dashboard(HttpServletRequest request, HttpServletResponse response) {
		RequestDispatcher rd=request.getRequestDispatcher("Dashborad.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void logincheck(HttpServletRequest request, HttpServletResponse response) {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		Admin a=new Admin(email, password);
		String status=Dao.checklogin(a);
		if(status.equals("success")) {
			RequestDispatcher rd=request.getRequestDispatcher("Dashborad.jsp");
			try {
				rd.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
			try {
				rd.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	private void home(HttpServletRequest request, HttpServletResponse response) {
		RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

	private void registerAdmin(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int count=0;
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		Admin a=new Admin(username,email,password);
		count=Dao.insert(a);
		if(count==1)
		{
			RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
			try {
				rd.forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			}
		} 
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("Register.jsp");
			try {
				rd.forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
