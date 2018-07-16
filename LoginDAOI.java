package com.nucleus.dao;

public interface LoginDAOI
{
	public boolean insertRecord(String u ,String p);
	public boolean login(String u ,String p);
	public boolean exists(String user);
	public String getRole(String user);
}
 