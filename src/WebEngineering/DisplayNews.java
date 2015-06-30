package WebEngineering;

import java.io.IOException;
import java.util.Date;
import java.util.LinkedList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 
@WebServlet(name = "CreateNews", description = "CreateNews", urlPatterns = { "/DisplayNews.html" })
public class DisplayNews extends HttpServlet {
	 
	private static final long serialVersionUID = 1L;
	public static LinkedList<KontaktBean> KontaktBean;
	public static  KontaktBean test;
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayNews() {
        
    	super();
        KontaktBean = new LinkedList<KontaktBean>();
       
    }

      @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	  DoProcess(request, response);
	}  

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 DoProcess(request, response);
	}

    private void DoProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	 
    	KontaktBean test = new KontaktBean();
  	   
  	  test.setId(request.getParameter("id"));
  	  test.setVorname(request.getParameter("vorname"));
  	  test.setName(request.getParameter("name"));
  	  test.setMail(request.getParameter("mail"));
  	  test.setDatum(new Date().toString());
  	  test.setHeadline(request.getParameter("headline"));
  	  test.setNachricht(request.getParameter("nachricht"));
  	    
  	  KontaktBean.add(test);
  	
  	  HttpSession session = request.getSession(); 
  	  session.setAttribute("meineBean", KontaktBean);
  	  
  	
		  
		  RequestDispatcher requestDispatcher; 
		  requestDispatcher = request.getRequestDispatcher("/NewsList.jsp");
		  requestDispatcher.forward(request, response);
   	  
    	
    	
    }
    
    
    
    
}
