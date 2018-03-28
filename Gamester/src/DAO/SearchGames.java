package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class SearchGames {

	public ArrayList<Map> gamesData(String s, String limit) throws SQLException{
		Connection con = DBConnection.getConnection();
		String data[];
		ArrayList<Map> list = new ArrayList<Map>();
		String search = s+"%";
		try{
			Statement smt = con.createStatement();
			ResultSet rs = smt.executeQuery("select Game.id, name,image,price,average from Game, Reviews where Game.id = Reviews.gameId and name like '"+search+"' limit "+limit);
			while(rs.next()){
				data = new String[5];
				data[0] = ""+rs.getInt("id");
				data[1] = rs.getString("name");
				data[2] = rs.getString("image");
				data[3] = rs.getString("price");
				float cr = Float.parseFloat(rs.getString("average"));
				float avg = cr * 100 /5;
				data[4] = ""+avg;
				Statement smt1 = con.createStatement();
				ResultSet r = smt1.executeQuery("select category from Category where gameId = '"+data[0]+"'");
				ArrayList<String> cat = new ArrayList<String>();
				while(r.next()){
					cat.add(r.getString("category"));
				}
				Map m = new HashMap();
				m.put("Game", data);
				m.put("cat", cat);
				list.add(m);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return list;
	}
	
	public ArrayList<String[]> searchData(String size , String sort, String s) throws SQLException{
		Connection con = DBConnection.getConnection();
		String data[];
		ArrayList<String[]> list = new ArrayList<String[]>();
		String search = s+"%";
		try{
			Statement smt = con.createStatement();
			ResultSet rs = smt.executeQuery("select * from Game where name like '"+search+"' order by "+sort+" ASC limit "+size);
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
