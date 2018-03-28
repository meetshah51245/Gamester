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
 * Servlet implementation class AddWishlistServlet
 */
public class AddWishlistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddWishlistServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("uid");
		String gameid = request.getParameter("gid");
		
		Wishlist w = new Wishlist();
		ArrayList<String[]> list = null;
		try {
			w.addWishlist(userid, gameid);
			list = w.getWishlist(userid);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		PrintWriter out = response.getWriter();
		
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
	try{
	HttpSession session = request.getSession(false);
	session.setAttribute("wishlistData", data);
	}catch(Exception e){}
	if(list.size() == 0){
		data = "none";
	}

	out.write(data);
	out.close();

		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
