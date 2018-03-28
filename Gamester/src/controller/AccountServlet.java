package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Account;

/**
 * Servlet implementation class AccountServlet
 */
public class AccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String form = request.getParameter("form");
		String uid = (String) (request.getSession(false)).getAttribute("userid");
		if(form.equalsIgnoreCase("info")){
			
			
			Account ac = new Account();
			try {
				String info[] = ac.userInfo(uid);
				request.setAttribute("info", info);
				request.setAttribute("error", "");
				request.getRequestDispatcher("My_Account.jsp").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		if(form.equalsIgnoreCase("edit")){
			PrintWriter out = response.getWriter();
			String email = request.getParameter("email");
			String first = request.getParameter("firstname");
			String last = request.getParameter("lastname");
			String current = request.getParameter("current_password");
			String password = request.getParameter("password");
			Account ac = new Account();
			try {
				String s = ac.editInfo(first, last, password, current, email);
				String info[] = ac.userInfo(uid);
				request.setAttribute("info", info);
				request.setAttribute("error", s);
				request.getRequestDispatcher("My_Account.jsp").include(request, response);
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
