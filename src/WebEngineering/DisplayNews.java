package WebEngineering;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet(name = "CreateNews", description = "CreateNews", urlPatterns = { "/DisplayNews.html" })
public class DisplayNews extends HttpServlet {
	 
	private static final long serialVersionUID = 1L;
	private static LinkedList<KontaktBean> KontaktBean;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayNews() {
        
    	super();
        KontaktBean = new LinkedList<KontaktBean>();
       
    }

      @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
    	  String vorname = request.getParameter("vorname");
		  String name = request.getParameter("name");
		  String mail = request.getParameter("mail");
		  String datum = request.getParameter("datum");
		  String headline = request.getParameter("headline");
		  String nachricht = request.getParameter("nachricht");
		  
		  
		  KontaktBean.add(new KontaktBean(vorname,name,mail, headline,new Date(), nachricht));
    	  
     	 
    	  
    	  try (PrintWriter out = response.getWriter()) {
    		   
    		  
    		  out.println("<!DOCTYPE html><html>");
    		  out.println("<head><title>Zeit Service 1</title></head><body> ");
    		  
	    		 for (KontaktBean item : KontaktBean) {
	    			 out.println("<p><ul> "+
	    					 	 "<li>" + item.getVorname() + "</li>" +
	    					 	 "<li>" + item.getName() + "</li>" +
	    					 	 "<li>" + item.getMail() + "</li>" +
	    					 	 "<li>" + item.getDatum() + "</li>" +
	    					 	"<li>" + item.getHeadline() + "</li>" +
	    						"<li>" + item.getNachricht() + "</li>" +
	    					 	"</ul></p>");
	    		 }
    		  
    		 out.println("</body></html>");

    		  }
		
	}  

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	System.out.print("doPost");
	}

}
