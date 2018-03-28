package model;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class News {
	private final String USER_AGENT = "Mozilla/5.0";
	ArrayList<String> link ;
	ArrayList<String> image ;
	ArrayList<String> head ;
	ArrayList<String> description ;
	
	public Map<String, ArrayList<String>> getNews(String page ){
		 link = new ArrayList<String>();
		 image = new ArrayList<String>();
		 head = new ArrayList<String>();
		 description = new ArrayList<String>();
		 BufferedReader in = null;
		 HttpURLConnection con;
		String inputLine;
		String urlString = "http://www.gamespot.com/news/?page="+page;
		
		try{
		URL url = new URL(urlString);
		con = (HttpURLConnection) url.openConnection();
		con.setRequestMethod("GET");

		//add request header
		con.setRequestProperty("User-Agent", USER_AGENT);



	    in = new BufferedReader(
			        new InputStreamReader(con.getInputStream()));
	    
			
			while ((inputLine = in.readLine()) != null) {
              if((inputLine.contains("<section class=\"filter-results js-filter-results editorial thirds  river \""))){
				while(true){
					
					if(inputLine.contains("class=\"media-body\"><h3")){
						String c = inputLine.substring(inputLine.indexOf("media-title")+13, inputLine.indexOf("</h3>"));
						head.add(c.trim());
					}
					if(inputLine.contains("</section>")){
						break;
					}
					inputLine = in.readLine();
					}
				
              }
			}

			in.close();

		}catch(Exception e){
			e.printStackTrace();
		}
		
		Map<String, ArrayList<String>> map = new HashMap<String, ArrayList<String>>();
		map.put("link", links(page));
		map.put("image", images(page));
		map.put("head", head);
		map.put("description", descp(page));
		
		return map;
		
	}
	
	
	public ArrayList<String> links(String page){
		
	
	BufferedReader in = null;
	 HttpURLConnection con;
	String inputLine;
	String urlString = "http://www.gamespot.com/news/?page="+page;
	
	try{
	URL url = new URL(urlString);
	con = (HttpURLConnection) url.openConnection();
	con.setRequestMethod("GET");

	//add request header
	con.setRequestProperty("User-Agent", USER_AGENT);



   in = new BufferedReader(
		        new InputStreamReader(con.getInputStream()));

		while ((inputLine = in.readLine()) != null) {
            if((inputLine.contains("<section class=\"filter-results js-filter-results editorial thirds  river \""))){
				while(true){
					if(inputLine.contains("<article class=\"media media-article\"><a class=\"js-event-tracking\"")){
						inputLine = in.readLine();
						String a ="http://www.gamespot.com"+inputLine.substring(20,inputLine.indexOf("/\""));
					link.add(a.trim());
					}
					
					if(inputLine.contains("</section>")){
						break;
					}
					inputLine = in.readLine();
				}
            }
            
	}
		in.close();
	}catch(Exception e){
		e.printStackTrace();
	}
	
		return link;
	}
	
	public ArrayList<String> images(String page){
		
	
	BufferedReader in = null;
	 HttpURLConnection con;
	String inputLine;
	String urlString = "http://www.gamespot.com/news/?page="+page;
	
	try{
	URL url = new URL(urlString);
	con = (HttpURLConnection) url.openConnection();
	con.setRequestMethod("GET");

	//add request header
	con.setRequestProperty("User-Agent", USER_AGENT);



   in = new BufferedReader(
		        new InputStreamReader(con.getInputStream()));

		while ((inputLine = in.readLine()) != null) {
            if((inputLine.contains("<section class=\"filter-results js-filter-results editorial thirds  river \""))){
				while(!(inputLine = in.readLine()).contains("</section>")){
					if(inputLine.contains("<div class=\"media-img imgflare--river\"><img src=")){
						
						String b = inputLine.substring(inputLine.indexOf("src=")+5 , inputLine.indexOf("alt=")-2);
						image.add(b.trim());
						
					}
					if(inputLine.contains("</section>")){
						break;
					}
				}
            }
            
	}
		in.close();
	}catch(Exception e){
		e.printStackTrace();
	}
	
		return image;
	}
	
	
	
	public ArrayList<String> descp(String page){
		
	
	BufferedReader in = null;
	 HttpURLConnection con;
	String inputLine;
	String urlString = "http://www.gamespot.com/news/?page="+page;
	
	try{
	URL url = new URL(urlString);
	con = (HttpURLConnection) url.openConnection();
	con.setRequestMethod("GET");

	//add request header
	con.setRequestProperty("User-Agent", USER_AGENT);



   in = new BufferedReader(
		        new InputStreamReader(con.getInputStream()));

		while ((inputLine = in.readLine()) != null) {
            if((inputLine.contains("<section class=\"filter-results js-filter-results editorial thirds  river \""))){
				while(true){
					if(inputLine.contains("class=\"media-deck")){
						String c = inputLine.substring(inputLine.indexOf("media-deck")+12, inputLine.indexOf("</p>"));
						description.add(c.trim());
					}
					if(inputLine.contains("</section>")){
						break;
					}
					
					inputLine = in.readLine();

				}
            }
            
	}
		in.close();
	}catch(Exception e){
		e.printStackTrace();
	}
	
		return description;
	}
	
	
}
