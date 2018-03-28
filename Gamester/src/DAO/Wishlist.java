package DAO;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Wishlist {
	
	public void addWishlist(String uid, String gid) throws SQLException{
		
		Connection con = DBConnection.getConnection();
		
		try{
			PreparedStatement ps = con.prepareStatement("insert into Wishlist values(?,?,?)");
			ps.setString(1, null);
			ps.setString(2, uid);
			ps.setString(3, gid);
			ps.executeUpdate();
			
		}catch(Exception e){
			
		}finally{
			con.close();
		}
		
	}
	
	
	public ArrayList<String[]> getWishlist(String uid) throws SQLException{
      Connection con = DBConnection.getConnection();
        String data[];
		ArrayList<String[]> list = new ArrayList<String[]>();
		try{
			
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select Game.name, Game.id, Game.price, Game.image, Wishlist.wid from Game, Wishlist where Game.id = Wishlist.gameId AND Wishlist.userId ='"+uid+"' order by Wishlist.wid DESC limit 3");
			while(rs.next()){
				data = new String[5];
				data[0] = ""+rs.getInt("id");
				data[1] = rs.getString("name");
				data[2] = rs.getString("price");
				data[3] = rs.getString("image");
				data[4] = ""+rs.getInt("wid");
				list.add(data);
			}
		}catch(Exception e){
			
		}finally{
			con.close();
		}
		
		return list;
	}
	

	public ArrayList<String[]> getFullWishlist(String uid) throws SQLException{
	      Connection con = DBConnection.getConnection();
	        String data[];
			ArrayList<String[]> list = new ArrayList<String[]>();
			try{
				
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("select Game.name, Game.id, Game.price, Game.image, Game.overview, Wishlist.wid  from Game, Wishlist where Game.id = Wishlist.gameId AND Wishlist.userId ='"+uid+"' order by Wishlist.wid DESC");
				while(rs.next()){
					data = new String[6];
					data[0] = ""+rs.getInt("id");
					data[1] = rs.getString("name");
					data[2] = rs.getString("price");
					data[3] = rs.getString("image");
					data[4] = rs.getString("overview");
					data[5] = ""+rs.getInt("wid");
					list.add(data);
				}
			}catch(Exception e){
				
			}finally{
				con.close();
			}
			
			return list;
		}
	
	
	public int deleteEntry(String uid, String wid) throws SQLException{
Connection con = DBConnection.getConnection();
		int i = 0;
		try{
			PreparedStatement ps = con.prepareStatement("DELETE FROM Wishlist WHERE wid=? AND userId=?");
			ps.setString(1, wid);
			ps.setString(2, uid);
			i = ps.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return i;
	}
	
	
	
}
