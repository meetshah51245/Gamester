package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SearchGames;

/**
 * Servlet implementation class SearchServlet
 */
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String form = request.getParameter("form");
		if(form.equals("ajax")){
		SearchGames sg = new SearchGames();
		try{
		ArrayList<Map> da = sg.gamesData(request.getParameter("q"), "5");
		String data = "";
		if(da.size()!=0){
			data+= "<ul class=\"ajaxsearch\">"+
					"<li class=\"title\">Products</li>";
		Iterator<Map> it = da.iterator();
		while(it.hasNext()){
			Map m = it.next();
			String[] dat = (String[]) m.get("Game");
			data+= "<li class=\"preview\">"+
					"<a class=\"preview-img\" href=\"GameDetail?id="+dat[0]+"\"><img src=\""+dat[2]+"\" width=100 height=100></a>"+
					"<div class=\"meta_data\">"+
					"<a href=\"GameDetail?id="+dat[0]+"\">"+
					"<span class=\"title\">"+
					"<span class=\"highlight\">"+dat[1]+"</span> "+
					"</span>"+
					"</a>"+
					"<div class=\"product_cat\">";
			
			        ArrayList<String> cat = (ArrayList<String>) m.get("cat");
			        if(cat.size()!=0){
			        data+=
					"<a href=\"Categories?category="+cat.get(0)+"\">"+cat.get(0)+
					"</a> ";
			        for(int i =1;i<cat.size();i++){
			        	data+="/ <a href=\"Categories?category="+cat.get(i)+"\">"+cat.get(i)+
								"</a>";
			        }
			        }
					data+=
					"</div>"+
					"<div class=\"rating-box\">"+
					"<div class=\"rating\" style=\"width: "+dat[4]+"%;\"></div>"+
					"</div>"+
					"<div class=\"product-price\">"+
					"<span class=\"price\"><span class=\"price\">$"+dat[3]+"</span></span>"+
					"</div>"+
//					"<div class=\"description\">Our game collection is constantly added with new games of premium quality and stunning computer...</div>"+
//					"</div>"+
					"</li>";
					
		}
		data+="</ul>";
		
		}else{
			data+= "<ul class=\"ajaxsearch\">"+
					"<li class=\"title\">No results</li></ul>";
		}
		
		response.getWriter().write(data);
		}catch(Exception e){
			e.printStackTrace();
		}
		}else{
			SearchGames sg = new SearchGames();
			String search = request.getParameter("q");
			   try {
				ArrayList<String[]> list = sg.searchData("10","name",search);
				request.setAttribute("data", list);
				request.setAttribute("title", "Search");
				request.setAttribute("query", search);
				request.getRequestDispatcher("search.jsp").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
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

}
