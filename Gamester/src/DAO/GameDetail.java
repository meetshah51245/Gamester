package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class GameDetail {
	
	
	public String[] details(String id) throws SQLException{
		Connection con = DBConnection.getConnection();
		String data[] = null;
		ArrayList<String[]> list = new ArrayList<String[]>();
		try{
			Statement smt = con.createStatement();
			ResultSet rs = smt.executeQuery("select * from Game where id = '"+id+"'");
			if(rs.next()){
				data = new String[7];
				data[0] = ""+rs.getInt("id");
				data[1] = rs.getString("name");
				data[2] = rs.getString("officialSite");
				data[3] = rs.getString("image");
				data[4] = rs.getString("price");
				data[5] = rs.getString("detail");
				data[6] = rs.getString("video");
				
			}
		}catch(Exception e){
			
		}finally{
			con.close();
		}
		return data;
	}
	
	public Map<String,ArrayList<String>> priceDetails(String id) throws SQLException{
		Connection con = DBConnection.getConnection();
		Map<String,ArrayList<String>> m = new HashMap<String,ArrayList<String>>();
		ArrayList<String> price = new ArrayList<String>();
		ArrayList<String> store = new ArrayList<String>();
		ArrayList<String> logo = new ArrayList<String>();
		try{
			Statement smt = con.createStatement();
			ResultSet rs = smt.executeQuery("SELECT price, store, storeLogo from Price where gameId = '"+id+"'");
			while(rs.next()){
				price.add(rs.getString("price"));
				store.add(rs.getString("store"));
				logo.add(rs.getString("storeLogo"));
			}	
			m.put("price", price);
			m.put("store", store);
			m.put("logo", logo);
		}catch(Exception e){
			
		}finally{
			con.close();
		}
		return m;
	}
	
	
	public ArrayList<String> categories(String id) throws SQLException{
		Connection con = DBConnection.getConnection();
		ArrayList<String> category = new ArrayList<String>();
		try{
			Statement smt = con.createStatement();
			ResultSet rs = smt.executeQuery("SELECT category from Category where gameId = '"+id+"'");
			while(rs.next()){
				category.add(rs.getString("category"));
			}	
		}catch(Exception e){
			
		}finally{
			con.close();
		}
		return category;
	}
	
	public ArrayList<String> platform(String id) throws SQLException{
		Connection con = DBConnection.getConnection();
		ArrayList<String> platform = new ArrayList<String>();
		try{
			Statement smt = con.createStatement();
			ResultSet rs = smt.executeQuery("SELECT platform from Platform where gameId = '"+id+"'");
			while(rs.next()){
				platform.add(rs.getString("platform"));
			}	
		}catch(Exception e){
			
		}finally{
			con.close();
		}
		return platform;
	}
	
	public String review(String id) throws SQLException{
		Connection con = DBConnection.getConnection();
		String review = "0";
		try{
			Statement smt = con.createStatement();
			ResultSet rs = smt.executeQuery("SELECT average from Reviews where gameId = '"+id+"'");
			while(rs.next()){
				float cr = Float.parseFloat(rs.getString("average"));
				float avg = cr * 100 /5;
				review = ""+avg;
			}	
		}catch(Exception e){
			
		}finally{
			con.close();
		}
		return review;
	}

}
