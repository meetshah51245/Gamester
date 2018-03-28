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

import DAO.Wishlist;

/**
 * Servlet implementation class WishlistServlet
 */
public class WishlistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WishlistServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
        String form = (String)request.getParameter("form");
		String userid = (String) request.getSession().getAttribute("userid");
		if(form.equalsIgnoreCase("detail")){
		Wishlist w  = new Wishlist();
		ArrayList<String[]> list = null;
		try {
			
			list = w.getFullWishlist(userid);
			request.setAttribute("list", list);
			request.getRequestDispatcher("Wishlist.jsp").forward(request, response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		if(form.equalsIgnoreCase("delete")){
			String uid = request.getParameter("uid");
			String wid = request.getParameter("wid");
			
			Wishlist w = new Wishlist();
			int i =0;
			try{
				i = w.deleteEntry(uid, wid);
				
				
			}catch(Exception e){
				e.printStackTrace();
			}
			
			if(i==0){
				out.write("unsuccessful");
			}else{
				try{
					HttpSession session = request.getSession(false);
					session.setAttribute("wishlistData", data(uid));
					}catch(Exception e){}
				out.write(data(uid));
			}
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	
	public String data(String userid){
		Wishlist w = new Wishlist();
		ArrayList<String[]> list = null;
		try {
			
			list = w.getWishlist(userid);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		Iterator iterator = list.iterator();
		
		
		
	    String data = "<p class='block-subtitle'>Last Added Items</p>"+
                       "<ol class='mini-products-list' id='wishlist-sidebar'>";
	    
	while(iterator.hasNext()){
		String[] item = (String[])iterator.next(); 
		
		
		
		data = data +    "<li class='item'>"+
                         "<div class='product-control-buttons'>"+
                         "<a href='#' title='Remove This Item' onclick=\"return removedata(\'"+item[4]+"\');\" class='btn-remove'>Remove This Item</a>"+
                         "</div>"+
                         "<a href='GameDetail?id="+item[0]+"' title="+item[1]+" class='product-image'><img src="+item[3]+" alt='Mass Effect '/></a>"+
                         "<p class='product-name'><a href='GameDetail?id="+item[0]+"'>"+item[1]+"</a></p>"+
                         "<div class='product-details'>"+
                         "<div class='price-box'>"+
                         "<span class='regular-price' id='product-price-19-wishlist'>"+
                         "<span class='price'>$"+item[2]+"</span> </span>"+
                          "</div>"+

                          "</div>"+
                          "</li>";
		
	}
	
	data = data + "</ol>"+
                   "<script type='text/javascript'>decorateList('wishlist-sidebar');</script>"+
                   "<div class='actions'>"+
                   "<a href='Wishlist?form=detail'>Go to Wishlist</a>"+
                   "</div>";
	
	if(list.size() == 0){
		data = "none";
	}
	return data;
	}

	
}
