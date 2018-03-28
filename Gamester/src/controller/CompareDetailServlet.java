package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Compare;
import DAO.GameDetail;

/**
 * Servlet implementation class CompareDetailServlet
 */
public class CompareDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompareDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String gids = (String)request.getParameter("gids");
		String s[] = gids.split(";");
		GameDetail games = new GameDetail();
		ArrayList<String[]> data = new ArrayList<String[]>();
		ArrayList<String> des = new ArrayList<String>();
		ArrayList<String> site = new ArrayList<String>();
		ArrayList<ArrayList<String>> plat = new ArrayList<ArrayList<String>>();
		ArrayList<ArrayList<String>> categ = new ArrayList<ArrayList<String>>();
		ArrayList<String> revi = new ArrayList<String>();
		   try {
		for(int i = 0; i<s.length;i++){
			
				String[] list = games.details(s[i]);
				ArrayList<String> platform = games.platform(s[i]);
				ArrayList<String> category = games.categories(s[i]);
				String review = games.review(s[i]);
				des.add(list[5]);
				site.add(list[2]);
				data.add(list);
				plat.add(platform);
				categ.add(category);
				revi.add(review);
			}
		request.setAttribute("data", data);
        request.setAttribute("platform", plat);
        request.setAttribute("categories", categ);
        request.setAttribute("review", revi);
        request.setAttribute("site", site);
        request.setAttribute("description", des);
        request.getRequestDispatcher("compare.jsp").forward(request, response);
		}catch (SQLException e) {
			e.printStackTrace();
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
