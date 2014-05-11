package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Hashtable;

public class dbconn {
	
	String connStr = "jdbc:odbc";
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	ResultSetMetaData meta = null;
	
	Hashtable ht = null;
	ArrayList al = null;
	
	public dbconn(String dbName)
	{
		try {
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			conn = DriverManager.getConnection(connStr + dbName);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
	}
	
	public dbconn()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_shop","root","root");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
	}
	
	
	public ArrayList executeQuery(String sql)
	{
		try {
			al = new ArrayList();
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			meta = rs.getMetaData();
			int colCount = meta.getColumnCount();
			
			while(rs.next())
			{
				ht = new Hashtable();
				for(int i = 1; i<=colCount; i++)
				{
					ht.put(meta.getColumnLabel(i), rs.getObject(i));
				}
				
				al.add(ht);
			}
		} catch (SQLException e) {
			System.out.println("查询出错"+e.getMessage());
		}
		
		return al;
		
	}
	
	public boolean executeUpdate(String sql)
	{
		boolean flag = false;
		try {
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			System.out.println("更新成功");
			flag = true;
		}  catch (SQLException e) {
			System.out.println("更新数据发生错误");
		}
		
		return flag;
		
	}
	
	public void destroy()
	{
		try {
			if(rs != null)
			{
				rs.close();
			}
			if(stmt != null)
			{
				stmt.close();
			}
			if(conn != null)
			{
				conn.close();
			}
			
			rs = null;
			stmt = null;
			conn = null;
		} catch (Exception e) {
			System.out.println("关闭时发生错误");
		}
		
	}

}
