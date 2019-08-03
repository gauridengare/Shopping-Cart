

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.demo.service.UserService;

/**
 * Servlet implementation class ProfileServ
 */
@WebServlet("/ProfileServ")
public class ProfileServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher1 = null;
		
		   System.out.println("Ready to Delete ");
		   String name = request.getParameter("name");
		 
		   HttpSession s=request.getSession(false);
	       if(s==null)
	       {
	    	   dispatcher1 = request.getRequestDispatcher("/index.html");
	   		dispatcher1.forward(request, response);
	       }
	       else {
		   UserService.deleteProfile(name);
		   System.out.println("selected item to delete: "+name);
		   dispatcher1 = request.getRequestDispatcher("./Profile.jsp");
			dispatcher1.forward(request, response);
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
