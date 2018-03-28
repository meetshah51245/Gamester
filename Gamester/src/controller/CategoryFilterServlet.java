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
import javax.servlet.http.HttpSession;

import DAO.Categories;
import DAO.Games;

/**
 * Servlet implementation class CategoryFilterServlet
 */
public class CategoryFilterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryFilterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String filter = request.getParameter("ajax");
		String size = request.getParameter("size");
		String sortBy = request.getParameter("sortBy");
		String category = request.getParameter("category");
		String userid = null;
		try{
			HttpSession session = request.getSession(false);
			userid = (String) session.getAttribute("userid");
		}catch(Exception e){}
		
		if(filter.equals("more")){
		Categories cat = new Categories();
		ArrayList<String[]> list = null;
		   try {
			list = cat.categoryData(""+(Integer.parseInt(size)+10),sortBy, category);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		PrintWriter out = response.getWriter();
		
			Iterator iterator = list.iterator();
			
			
		    String data = "";
		    
		    int count =0 ;
		    
		    
		    
		while(iterator.hasNext()){
			String[] item = (String[])iterator.next(); 
			count++;
			if(count>Integer.parseInt(size)){
			String title = item[1];
			String src = item[3];
			String alt = item[1];
			String desc = item[2];
			String name = item[1];
			String price = item[4];
			
			data = data + "<li class=item itemscope itemtype='http://schema.org/product'>"
					+"<input type='hidden'></input>"
					+ "<a href='GameDetail?id="+item[0]+"' title=   '"+title+"'  class='product-image' itemprop='url'><img data-src= '"+src+"' width='210' height='210' class='lazy'  alt= '"+alt +"' src='"+src+"' style='opacity: 1;'></a>"+
					"<div class='product-shop'>"+
					"<div class='f-fix'>"+
					"<div class='list-left'>"+
					"<h2 class='product-name'><a href='GameDetail?id="+item[0]+"' title='"+title+"' itemprop ='name'>"+name+" </a></h2>"+
					"<div class='desc std'>"+
					"<div itemprop ='description'>"+desc+
					"</div>"+
					"</div>"+
					"</div>"+



					"<div class='list-right'>"+
					"<div class='price-box'>"+
					"<span class='regular-price' id='product-price-7'>"+
					"<span class='price'>$ "+price+"</span> </span>"+
					"</div>"+

					"<ul class='add-to-links'>"+
					"<li><a title='Add to Wishlist'";
			
			        if(userid!=null){
			        	data = data + "href='#' onclick='return addWishlist("+item[0]+")'";
			        }else{
			        	data = data + "href = login.jsp";
			        }
			data = data + " class='link-wishlist tooltips'>Add to Wishlist</a></li>"+
					"<li><span class='separator'>|</span> <a title='Add to Compare' href='#' class='link-compare tooltips'>Add to Compare</a></li>"+
					"</ul>"+
					"</div>"+

					"<div class='clear'></div>"+
					"</div>"+
					"</div>"+
					"<div class='label-product'>"+
					"</div> </li> ";
			}
			
		}
		if(data.equals("") ){
	    	data="finished";
	    }
		out.write(data);
		out.close();
		}else{
			Categories cat = new Categories();
			ArrayList<String[]> list = null;
			   try {
				list = cat.categoryData(""+(Integer.parseInt(size)+10),sortBy, category);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			PrintWriter out = response.getWriter();
			
				Iterator iterator = list.iterator();
				
				
				
			    String data = "";
			    
			while(iterator.hasNext()){
				String[] item = (String[])iterator.next(); 
				
				String title = item[1];
				String src = item[3];
				String alt = item[1];
				String desc = item[2];
				String name = item[1];
				String price = item[4];
				
				data = data + "<li class=item itemscope itemtype='http://schema.org/product'>"
						+"<input type='hidden'></input>"
						+ "<a href='GameDetail?id="+item[0]+"' title=   '"+title+"'  class='product-image' itemprop='url'><img data-src= '"+src+"' width='210' height='210' class='lazy'  alt= '"+alt +"' src='"+src+"' style='opacity: 1;'></a>"+
						"<div class='product-shop'>"+
						"<div class='f-fix'>"+
						"<div class='list-left'>"+
						"<h2 class='product-name'><a href='GameDetail?id="+item[0]+"' title='"+title+"' itemprop ='name'>"+name+" </a></h2>"+
						"<div class='desc std'>"+
						"<div itemprop ='description'>"+desc+
						"</div>"+
						"</div>"+
						"</div>"+



						"<div class='list-right'>"+
						"<div class='price-box'>"+
						"<span class='regular-price' id='product-price-7'>"+
						"<span class='price'>$ "+price+"</span> </span>"+
						"</div>"+

						"<ul class='add-to-links'>"+
						"<li><a title='Add to Wishlist'";
			
			        if(userid!=null){
			        	data = data + "href='#' onclick='return addWishlist("+item[0]+")'";
			        }else{
			        	data = data + "href = login.jsp";
			        }
			data = data + " class='link-wishlist tooltips'>Add to Wishlist</a></li>"+
						"<li><span class='separator'>|</span> <a title='Add to Compare' href='#' class='link-compare tooltips'>Add to Compare</a></li>"+
						"</ul>"+
						"</div>"+

						"<div class='clear'></div>"+
						"</div>"+
						"</div>"+
						"<div class='label-product'>"+
						"</div> </li> ";
				
				
			}
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
