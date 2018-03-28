package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Platform {

	public ArrayList<String[]> platformData(String size , String sort, String platform) throws SQLException{
		Connection con = DBConnection.getConnection();
		String data[];
		ArrayList<String[]> list = new ArrayList<String[]>();
		try{
			Statement smt = con.createStatement();
			ResultSet rs = smt.executeQuery("select Game.id, Game.name, Game.overview, Game.image, Game.price from Game, Platform where platform = '"+platform+"' and Platform.gameId = Game.id order by "+sort+" ASC limit "+size);
			while(rs.next()){
				data = new String[5];
				data[0] = ""+rs.getInt("id");
				data[1] = rs.getString("name");
				data[2] = rs.getString("overview");
				data[3] = rs.getString("image");
				data[4] = rs.getString("price");
				list.add(data);
			}
		}catch(Exception e){
			
		}finally{
			con.close();
		}
		return list;
	}
	
}
