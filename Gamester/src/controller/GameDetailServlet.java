package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.GameDetail;
import DAO.Games;

/**
 * Servlet implementation class GameDetailServlet
 */
public class GameDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GameDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		GameDetail games = new GameDetail();
		   try {
			String[] list = games.details(id);
			Map<String,ArrayList<String>> m = games.priceDetails(id);
			ArrayList<String> platform = games.platform(id);
			ArrayList<String> category = games.categories(id);
			String review = games.review(id);
			request.setAttribute("review", review);
			request.setAttribute("platform", platform);
			request.setAttribute("categories", category);
			request.setAttribute("priceStore", m);
			request.setAttribute("data", list);
			request.getRequestDispatcher("Games_detail.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
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
