package WebEngineering;

import java.io.IOException;
import java.util.Date;
import java.util.LinkedList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class NewsDetails
 */
@WebServlet(description = "NewsDetails", urlPatterns = { "/NewsDetails" })
public class NewsDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static  KontaktBean test;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewsDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String RQid = request.getParameter("id");
		 test = new KontaktBean();
		 
		
		for(KontaktBean elem : DisplayNews.KontaktBean){
			
			
			String xx = elem.getId();
			
			if (xx.equals(RQid)) {
			 
			  	  test.setId(elem.getId());
			  	  test.setVorname(elem.getVorname());
			  	  test.setName(elem.getName());
			  	  test.setMail(elem.getMail());
			  	  test.setDatum(new Date().toString());
			  	  test.setHeadline(elem.getHeadline());
			  	  test.setNachricht(elem.getNachricht());
				 
			  	  break;
			}
			 
			}			
		
		
			HttpSession session = request.getSession(); 
	  	  session.setAttribute("NewsDetailsBean", test);
	  	
	  	     
	  	 
		 RequestDispatcher requestDispatcher; 
		  requestDispatcher = request.getRequestDispatcher("/NewsDetails.jsp");
		  requestDispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
