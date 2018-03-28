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

import DAO.RegisterUser;
import DAO.Wishlist;
import model.User;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String ajax = request.getParameter("ajax");
		if(ajax.equalsIgnoreCase("login")){
			
			String email = request.getParameter("email");
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
			}
			}catch(SQLException e){
				msg[0] = "wronglogin,";
			}
			out.write(msg[0]);
			out.close();
			
		}
		if(ajax.equalsIgnoreCase("register")){
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			String newsletter = request.getParameter("newsletter");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String passwordsecond = request.getParameter("passwordsecond");
			String licence = request.getParameter("licence");
			if(!licence.equalsIgnoreCase("ok")){
				out.write("nolicence,");
				out.close();
			}else{
			if(!password.equals(passwordsecond)){
				out.write("notsamepasswords,");
				out.close();
			}else{
				User u = new User();
				u.setFirstname(firstname);
				u.setLastname(lastname);
				u.setNewsletter(newsletter);
				u.setEmail(email);
				u.setPassword(password);
				RegisterUser rs = new RegisterUser();
				String msg;
				try{
				msg = rs.insert(u);
				}catch(SQLException e){
					msg = "emailisexist,";
				}
				out.write(msg);
				out.close();   
			}
		}
		}
		if(ajax.equalsIgnoreCase("logout")){
			HttpSession session = request.getSession(false);
            session.invalidate();
            response.sendRedirect("index.jsp");
		}
	
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
