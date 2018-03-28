package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.sql.PreparedStatement;


public class Account {
	public String[] userInfo(String id) throws SQLException{
		Connection con = DBConnection.getConnection();
		String data[] = null;
		
		try{
			Statement smt = con.createStatement();
			ResultSet rs = smt.executeQuery("select firstname, lastname, email from User where id ='"+id+"'");
			if(rs.next()){
				data = new String[3];
				data[0] = rs.getString("firstname");
				data[1] = rs.getString("lastname");
				data[2] = rs.getString("email");	
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return data;
	}
	
	
	public String editInfo(String first, String last, String pass, String current, String email) throws SQLException{
		Connection con = DBConnection.getConnection();
		String s="";
		try{
			PreparedStatement ps = con.prepareStatement("UPDATE User SET firstname=? , lastname=? , password=? WHERE email=? AND password=?");
			ps.setString(1, first);
			ps.setString(2, last);
			ps.setString(3, pass);
			ps.setString(4, email);
			ps.setString(5, current);
			int i = ps.executeUpdate();
			
			if(i==0){
				s = "Password doesn't match";
			}else{
				s = "Information updated";
			}
			
		}catch(Exception e){
			s = "Password doesn't match";
		}finally{
			con.close();
		}
		return s;
	}
	
}
