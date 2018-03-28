package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Games;
import DAO.Hardware;

/**
 * Servlet implementation class HardwareServlet
 */
public class HardwareServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HardwareServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if(action.equals("hardware")){
		  Hardware hardware = new Hardware();
		   try {
			ArrayList<String[]> list = hardware.hardwaresData("9","name");
			request.setAttribute("data", list);
			request.getRequestDispatcher("hardware.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		if(action.equals("more")){
			Hardware hardware = new Hardware();
			String size = request.getParameter("size");
			String sortBy = request.getParameter("sortBy");
			ArrayList<String[]> list = null;
			   try {
				list = hardware.hardwaresData(""+(Integer.parseInt(size)+9),sortBy);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			PrintWriter out = response.getWriter();
			
				Iterator iterator = list.iterator();
				
				
			    String data = "";
			    int count =0 ;
			    while(iterator.hasNext()){ 
			    	
			    	count++;
					if(count > Integer.parseInt(size)){
			    	String[] item = (String[])iterator.next();
			    	String[] item1 = null;
			    	String[] item2 = null;
			    	if(iterator.hasNext()){
			    		item1 = (String[])iterator.next();
			    	}
			    	if(iterator.hasNext()){
			    		item2 = (String[])iterator.next();
			    	}
			    	
			    	data+="<tr>"+
"<td style=\"padding: 15px;\"><a href=\"#\" title=\""+item[1]+"\" class=\"product-image\" itemprop=\"url\"><img data-src=\""+item[3] +"\" width=\"180\" height=\"180\" class=\"lazy\" alt=\""+item[1]+"\" src=\""+item[3] +"\" style=\"opacity:1;\"/></a>"+
"<input type='hidden'></input>"+
"</td>"+


"<td style=\"padding: 15px;\">";
 if(item1 !=null){
 data+="<a href=\"#\" title=\""+item1[1]+"\" class=\"product-image\" itemprop=\"url\"><img data-src=\""+item1[3]+"\" width=\"180\" height=\"180\" class=\"lazy\" alt=\""+item1[1]+"\" src=\""+item1[3] +"\" style=\"opacity:1;\"/></a>"+
 "<input type='hidden'></input>";
 }
 
 data+="</td>"+
 
"<td style=\"padding: 15px;\">"; 
 if(item2 != null){
data+="<a href=\"#\" title=\""+item2[1]+"\" class=\"product-image\" itemprop=\"url\"><img data-src=\""+item2[3]+"\" width=\"180\" height=\"180\" class=\"lazy\" alt=\""+item2[1]+"\" src=\""+item2[3] +"\"style=\"opacity:1;\"/></a>"+
"<input type='hidden'></input>";
 }
 
 data+="</td>"+
"</tr>"+

"<tr >"+
"<td class=\"products-grid row\"  style=\"padding: 15px;\"><div class=\"product-shop\">"+
"<div class=\"price-box\">"+
"<span class=\"regular-price\" id=\"product-price-31\">"+
"<span class=\"price\">$"+item[2]+"</span> </span>"+
"</div>"+

"</div></td>"+


"<td class=\"products-grid row\" style=\"padding: 15px;\">";
if(item1 !=null){

 data+="<div class=\"product-shop\">"+
"<div class=\"price-box\">"+
"<span class=\"regular-price\" id=\"product-price-32\">"+
"<span class=\"price\">$"+item1[2]+"</span> </span>"+
"</div>"+

"</div>";
}

data+="</td>"+


"<td class=\"products-grid row\" style=\"padding: 15px;\">";
if(item2 !=null){

 data+="<div class=\"product-shop\">"+
"<div class=\"price-box\">"+
"<span class=\"regular-price\" id=\"product-price-32\">"+
"<span class=\"price\">$"+item2[2]+"</span> </span>"+
"</div>"+

"</div>";
}

data+="</td>"+
"</tr>"+



"<tr class=\"grid_row\">"+
"<td class=\"products-grid row\" style=\"padding: 15px;\">"+
"<div class=\"product-shop\">"+
"<h2 class=\"product-name\"><a href=\"#\" title=\""+item[1]+"\" itemprop=\"name\">"+item[1]+"</a></h2>"+
"</div>"+
"</td>"+

	
"<td class=\"products-grid row\" style=\"padding: 15px;\">"; 
 if(item1 != null){
data+="<div class=\"product-shop\">"+
"<h2 class=\"product-name\"><a href=\"#\" title=\""+item1[1]+"\" itemprop=\"name\">"+item1[1]+"</a></h2>"+
"</div>";
} 
	data+="</td>"+
	
	
"<td class=\"products-grid row\" style=\"padding: 15px;\">"; 
 if(item2 != null){
data+="<div class=\"product-shop\">"+
"<h2 class=\"product-name\"><a href=\"#\" title=\""+item2[1]+"\" itemprop=\"name\">"+item2[1]+"</a></h2>"+
"</div>";
} 
	data+="</td>"+

"</tr>";

}else{
	iterator.next();
}
		}
data+="";
			    
if(data.equals("") ){
	data="finished";
}
out.write(data);
out.close();	    
			    
			    
		}
		
if(action.equals("filter")){
	Hardware hardware = new Hardware();
	String size = request.getParameter("size");
	String sortBy = request.getParameter("sortBy");
	ArrayList<String[]> list = null;
	   try {
		   if(sortBy.equalsIgnoreCase("price")){
		list = hardware.hardwarePriceData(""+(Integer.parseInt(size)),sortBy);
		   }else{
			   list = hardware.hardwaresData(""+(Integer.parseInt(size)),sortBy);
		   }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	PrintWriter out = response.getWriter();
	
		Iterator iterator = list.iterator();
		
		
	    String data = "";
	    while(iterator.hasNext()){ 
	    	String[] item = (String[])iterator.next();
	    	String[] item1 = null;
	    	String[] item2 = null;
	    	if(iterator.hasNext()){
	    		item1 = (String[])iterator.next();
	    	}
	    	if(iterator.hasNext()){
	    		item2 = (String[])iterator.next();
	    	}
	    	
	    	data+="<tr>"+
"<td style=\"padding: 15px;\"><a href=\"#\" title=\""+item[1]+"\" class=\"product-image\" itemprop=\"url\"><img data-src=\""+item[3] +"\" width=\"180\" height=\"180\" class=\"lazy\" alt=\""+item[1]+"\" src=\""+item[3] +"\" style=\"opacity:1;\"/></a>"+
"<input type='hidden'></input>"+
"</td>"+


"<td style=\"padding: 15px;\">";
if(item1 !=null){
data+="<a href=\"#\" title=\""+item1[1]+"\" class=\"product-image\" itemprop=\"url\"><img data-src=\""+item1[3]+"\" width=\"180\" height=\"180\" class=\"lazy\" alt=\""+item1[1]+"\" src=\""+item1[3] +"\" style=\"opacity:1;\"/></a>"+
"<input type='hidden'></input>";
}

data+="</td>"+

"<td style=\"padding: 15px;\">"; 
if(item2 != null){
data+="<a href=\"#\" title=\""+item2[1]+"\" class=\"product-image\" itemprop=\"url\"><img data-src=\""+item2[3]+"\" width=\"180\" height=\"180\" class=\"lazy\" alt=\""+item2[1]+"\" src=\""+item2[3] +"\"style=\"opacity:1;\"/></a>"+
"<input type='hidden'></input>";
}

data+="</td>"+
"</tr>"+

"<tr >"+
"<td class=\"products-grid row\"  style=\"padding: 15px;\"><div class=\"product-shop\">"+
"<div class=\"price-box\">"+
"<span class=\"regular-price\" id=\"product-price-31\">"+
"<span class=\"price\">$"+item[2]+"</span> </span>"+
"</div>"+

"</div></td>"+


"<td class=\"products-grid row\" style=\"padding: 15px;\">";
if(item1 !=null){

data+="<div class=\"product-shop\">"+
"<div class=\"price-box\">"+
"<span class=\"regular-price\" id=\"product-price-32\">"+
"<span class=\"price\">$"+item1[2]+"</span> </span>"+
"</div>"+

"</div>";
}

data+="</td>"+


"<td class=\"products-grid row\" style=\"padding: 15px;\">";
if(item2 !=null){

data+="<div class=\"product-shop\">"+
"<div class=\"price-box\">"+
"<span class=\"regular-price\" id=\"product-price-32\">"+
"<span class=\"price\">$"+item2[2]+"</span> </span>"+
"</div>"+

"</div>";
}

data+="</td>"+
"</tr>"+



"<tr class=\"grid_row\">"+
"<td class=\"products-grid row\" style=\"padding: 15px;\">"+
"<div class=\"product-shop\">"+
"<h2 class=\"product-name\"><a href=\"#\" title=\""+item[1]+"\" itemprop=\"name\">"+item[1]+"</a></h2>"+
"</div>"+
"</td>"+


"<td class=\"products-grid row\" style=\"padding: 15px;\">"; 
if(item1 != null){
data+="<div class=\"product-shop\">"+
"<h2 class=\"product-name\"><a href=\"#\" title=\""+item1[1]+"\" itemprop=\"name\">"+item1[1]+"</a></h2>"+
"</div>";
} 
data+="</td>"+


"<td class=\"products-grid row\" style=\"padding: 15px;\">"; 
if(item2 != null){
data+="<div class=\"product-shop\">"+
"<h2 class=\"product-name\"><a href=\"#\" title=\""+item2[1]+"\" itemprop=\"name\">"+item2[1]+"</a></h2>"+
"</div>";
} 
data+="</td>"+

"</tr>";


}
data+="";
	    
if(data.equals("") ){
data="finished";
}
out.write(data);
out.close();	    
	    
	    
}

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
