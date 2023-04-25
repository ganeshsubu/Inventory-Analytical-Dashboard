package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.module.Admin;

public class Dao {
	private static String url="jdbc:mysql://localhost:3306/project";
	private static String user="root";
	private static String password="root";
	private static String insert="insert into admin(username,email,password)values(?,?,?)";
	//private static String check = "SELECT email, password FROM admin";
	private static Statement s=null;
	private static PreparedStatement ps=null;
	private static Connection con=null;
	private static ResultSet rs=null;
	public static int insert(Admin a)
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url, user, password);
			ps=con.prepareStatement(insert);
			ps.setString(1, a.getUsername());
			ps.setString(2, a.getEmail());
			ps.setString(3, a.getPassword());
			ps.executeUpdate();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			try {
				ps.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		}
		return 1;
	}
	public static String checklogin(Admin a) {
	    String check = "SELECT * FROM admin";
	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        con=DriverManager.getConnection(url, user, password);
	        s=con.createStatement();
	        rs=s.executeQuery(check);
	        while(rs.next()) {
	            String email=rs.getString("email");
	            String password=rs.getString("password");
	            if(email.equals(a.getEmail()) && password.equals(a.getPassword())) {
	                return "success";
	            }
	        }
	    } catch (ClassNotFoundException | SQLException e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            rs.close();
	            s.close();
	            con.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    return "failure";
	}
	public static String getTime() {
		// TODO Auto-generated method stub
		return null;
	}
}
