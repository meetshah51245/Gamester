package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Hardware {

	public ArrayList<String[]> hardwaresData(String size , String sort) throws SQLException{
		Connection con = DBConnection.getConnection();
		String data[];
		ArrayList<String[]> list = new ArrayList<String[]>();
		try{
			Statement smt = con.createStatement();
			ResultSet rs = smt.executeQuery("select * from Hardware order by "+sort+" ASC limit "+size);
			while(rs.next()){
				data = new String[4];
				data[0] = ""+rs.getInt("id");
				data[1] = rs.getString("name");
				data[2] = rs.getString("price");
				data[3] = rs.getString("image");
				list.add(data);
			}
		}catch(Exception e){
			
		}finally{
			con.close();
		}
		return list;
	}
	
	public ArrayList<String[]> hardwarePriceData(String size , String sort) throws SQLException{
		Connection con = DBConnection.getConnection();
		String data[];
		ArrayList<String[]> list = new ArrayList<String[]>();
		try{
			Statement smt = con.createStatement();
			ResultSet rs = smt.executeQuery("select * from Hardware order by "+sort+"+0.0 ASC limit "+size);
			while(rs.next()){
				data = new String[4];
				data[0] = ""+rs.getInt("id");
				data[1] = rs.getString("name");
				data[2] = rs.getString("price");
				data[3] = rs.getString("image");
				list.add(data);
			}
		}catch(Exception e){
			
		}finally{
			con.close();
		}
		return list;
	}
	
}
