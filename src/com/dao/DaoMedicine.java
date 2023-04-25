package com.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
//Import the Timestamp class
import java.sql.Timestamp;
import java.util.ArrayList;

import com.module.Med;
public class DaoMedicine {
	private static String url="jdbc:mysql://localhost:3306/project";
	private static String user="root";
	private static String password="root";
	private static String insert="insert into medicine(mname,mtype,quantity,price,expiry,current)values(?,?,?,?,?,?)";
	private static String display="select * from medicine";
	private static String delete="select * from medicine where id=?";
	private static String updatemedicine="update medicine set mname=?,mtype=?,quantity=?,price=?,expiry=?,current=? where id=? ";
	static Connection con=null;
	static Statement s=null;
	static ResultSet rs=null;
	static PreparedStatement ps=null;
	public static void insert(Med m) {
			try (Connection con = DriverManager.getConnection(url, user, password);
				 PreparedStatement ps = con.prepareStatement(insert)) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				ps.setString(1, m.getMname());
				ps.setString(2, m.getMtype());
				ps.setInt(3, m.getQuantity());
				ps.setInt(4, m.getPrice());
				ps.setTimestamp(5, new Timestamp(m.getExpiry().getTime()));
				ps.setTimestamp(6, new Timestamp(m.getCurrent().getTime()));
				ps.executeUpdate();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	public static  ArrayList<Med> display()
	{
		ArrayList<Med> al=new ArrayList<Med>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url, user, password);
			s=con.createStatement();
			rs=s.executeQuery(display);
			while(rs.next())
			{
				int id=rs.getInt("id");
				String name=rs.getString("mname");
				String mtype=rs.getString("mtype");
				int quantity=rs.getInt("quantity");
				int price=rs.getInt("price");
				Date expiry=rs.getDate("expiry");
				Date current=rs.getDate("current");
				Med m=new Med(id,name,mtype,quantity,price,expiry,current);
				al.add(m);
				
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return al;
	}
	public static void delete(int id)
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url, user, password);
			ps=con.prepareStatement(delete);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
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
		}
	public static void updatemedicine(Med m )
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url, user, password);
			ps=con.prepareStatement(updatemedicine);
			ps.setString(1, m.getMname());
			ps.setString(2, m.getMtype());
			ps.setInt(3, m.getQuantity());
			ps.setInt(4, m.getPrice());
			ps.setDate(5, (Date) m.getExpiry());
			ps.setDate(6, (Date) m.getCurrent());
			ps.setInt(7, m.getId());
			ps.executeUpdate();
			} catch (ClassNotFoundException | SQLException e) {
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
	}
}
