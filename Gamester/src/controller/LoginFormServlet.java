package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.RegisterUser;
import DAO.Wishlist;
import model.User;

/**
 * Servlet implementation class LoginFormServlet
 */
public class LoginFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("username");
		String password = request.getParameter("password");
		
		User u = new User();
		u.setEmail(email);
		u.setPassword(password);
		RegisterUser rs = new RegisterUser();
		String msg[] = null;
		HttpSession session;
		try{
		msg = rs.check(u);
		if(!msg[0].equals("wronglogin,")){
			session = request.getSession();
			session.setAttribute("name", msg[0]);
			session.setAttribute("userid", msg[1]);
            session.setAttribute("href","Login?ajax=logout");
            session.setAttribute("logout", "Logout");
            session.setAttribute("wishlist", "Wishlist?form=detail");
            session.setAttribute("account", "Account?form=info");
            session.setAttribute("wishlistData", wishlist(msg[1]));
            msg[0] = "success";
            request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		}catch(SQLException e){
			msg[0] = "wronglogin,";
		}
		request.setAttribute("error", "Invalid email address or password");
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	
	protected String wishlist(String userid){
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
		data = "<p class='empty'>You have no items in wishlist.</p>";
	}
		return data;
	}
	
	

}
