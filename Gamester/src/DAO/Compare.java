package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Compare {

	
	public ArrayList<String[]> compare(String gid) throws SQLException{
	      Connection con = DBConnection.getConnection();
	        String data[];
			ArrayList<String[]> list = new ArrayList<String[]>();
			try{
				
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("select name, id, image from Game where id = '"+gid+"'");
				while(rs.next()){
					data = new String[3];
					data[0] = ""+rs.getInt("id");
					data[1] = rs.getString("name");		
					data[2] = rs.getString("image");
					
					list.add(data);
				}
			}catch(Exception e){
				
			}finally{
				con.close();
			}
			
			return list;
	
	
}
}
