package com.nucleus.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.nucleus.connection.ConnectionI;
import com.nucleus.connection.OracleConnection;
public class LoginDAO implements LoginDAOI
{
	Connection con  = null;
	ConnectionI ci = null;
	PreparedStatement pst = null ;
	ResultSet rs = null;
	int rowsaffected = 0;
	public boolean login(String u,String p )
	{
		try
		{
			
			ci = new OracleConnection();
			con = ci.getConnection();
			String username = null;
			String password = null;
			String str = "select * from user1909 where username =?";		
		pst = con.prepareStatement(str);	
        pst.setString(1,u);
       rs = pst.executeQuery();
       
     while(rs.next())
     {
        	username = rs.getString(1);
        	password =	rs.getString(2);
     }  	

       if(u.equals(username)&&p.equals(password))
       {   	   
        System.out.println("Logged in!!");
        return true;
       }
       else
       {
    	   return false;
       }
		}
		catch(SQLException ex)
		{
			//System.out.println("Records already exist in database ");
			  return false;
		}


	}
	@Override
	public boolean insertRecord(String u, String p) {
		int rowsaffected = 0;
		try
		{
			if(con==null)
			{
			ci = new OracleConnection();
			con = ci.getConnection();
			}
			con.setAutoCommit(false);
			
		String str = "insert into info1909 values(?,?) ";
		
		pst = con.prepareStatement(str);	
	
        pst.setString(1,u);
        pst.setString(2,p);
        rowsaffected = pst.executeUpdate();	  
        
        if(rowsaffected>0)
        {
        	System.out.println(rowsaffected);
        	return true;
        }
        else
        {
        	System.out.println(rowsaffected);
        	return false;
        }
		}
		catch(SQLException ex)
		{

			System.out.println("Record Already Exist in Database");
			return false;
		}
		finally
		{
			try {
				con.commit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
					
	
	}
	public boolean exists(String user)
	{
		try
		{
			
			ci = new OracleConnection();
			con = ci.getConnection();
			String username = null;
			String password = null;
			
		String str = "select username from info1909 where username = ?";
		
		pst = con.prepareStatement(str);	
        pst.setString(1,user);
       rs = pst.executeQuery();
     while(rs.next())
     {
        	username = rs.getString(1);
   
     }  	

       if(user.equals(username))
       {
        return true;
       }
       else
       {
    	   return false;
       }
		}
		catch(SQLException ex)
		{
			ex.printStackTrace();
			  return false;
		}
		
	}
	public String getRole(String user)
	{
		String username = null;
		try
		{
			
			ci = new OracleConnection();
			con = ci.getConnection();
			
		String str = "SELECT role1909.r_name FROM user1909 INNER JOIN role1909 ON user1909.roleid = role1909.roleid where user1909.username = ?";
		
		pst = con.prepareStatement(str);	
        pst.setString(1,user);
       rs = pst.executeQuery();
       rs.next();
       username =     rs.getString(1);
      System.out.println("role = "+username);
		}
		catch(SQLException ex)
		{
			System.out.println(ex);
			  
		}
	
		 return username;
	}
	

	}
	


