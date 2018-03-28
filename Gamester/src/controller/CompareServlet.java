package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Compare;

/**
 * Servlet implementation class CompareServlet
 */
public class CompareServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompareServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String gids = (String)request.getParameter("gids");
		String s[] = gids.split(";");
		
		Compare c = new Compare();
		String data="";
		ArrayList<String[]> com = null;
		try{
			data = "<ol id='compare-items'>";
		for(int i = 0; i<s.length;i++){
			com = c.compare(s[i]);
			 Iterator<String[]> it = com.iterator();
			 while(it.hasNext()){
				 String list[] = it.next();
			data = data +" <li class='item' id= 'compare"+list[0]+"'>"+
                      "<a class='product-image' href='GameDetail?id="+list[0]+"'><img src='"+list[2]+"' alt='"+list[1]+"' width='85' height='80'/></a>"+
                      
                      "<a href='#' title='Remove This Item' class='btn-remove' onclick=\"return removeCompare("+list[0]+");\">Remove This Item</a>"+
                      "<p class='product-name'><a href='GameDetail?id="+list[0]+"'>"+list[1]+" </a></p>"+
                      "</li>";
			 }     
		}
		
		data = data + "</ol>"+
        "<script type='text/javascript'>decorateList('compare-items')</script>"+
        "<div class='actions'>"+
        "<button type='button' title='Compare' class='button' onclick=\"popWin(\'CompareDetail?gids="+gids+"\',\'compare\',\'top:0,left:0,width=820,height=600,resizable=yes,scrollbars=yes\')\"><span><span>Compare</span></span></button>"+
        "<a href='#' onclick='return removeAll();'>Clear All</a>"+
        "</div>";
		
		}catch(Exception e){}
		
		if(com.size() == 0){
			out.write("none");
		}else{
			out.write(data);
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
