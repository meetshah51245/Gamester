package DAO;

import java.sql.*;

import model.User;

public class RegisterUser {

	public String insert(User u) throws SQLException{
		Connection con = DBConnection.getConnection();
		String msg ="success";
		try{
		PreparedStatement ps = con.prepareStatement("insert into User values(?,?,?,?,?,?)");
		ps.setString(1, null);
		ps.setString(2, u.getFirstname());
		ps.setString(3, u.getLastname());
		ps.setString(4, u.getEmail());
		ps.setString(5, u.getPassword());
		ps.setString(6, u.getNewsletter());
		ps.executeUpdate();
	}catch(Exception e){

		msg = "emailisexist,";
	}
		finally {
			con.close();			
		}
		return msg;
	}
	
	public String[] check(User u) throws SQLException{
		Connection con = DBConnection.getConnection();
		String msg[] = new String[2];
				msg[0] ="wronglogin,";
		try{
			Statement smt = con.createStatement();
			ResultSet rs = smt.executeQuery("select * from User where email = '"+u.getEmail()+"' and password = '"+u.getPassword()+"'");
			if(rs.next()){
				msg[0] = rs.getString("firstname");
				msg[1] = rs.getString("id");
			}
		}catch(Exception e){
			
		}finally{
			con.close();
		}
		return msg;
	}
	
}
