

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
 * Servlet implementation class demo
 */
@WebServlet("/demo")
public class demo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public demo() {
        super();
        
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = null;
		String item = request.getParameter("item");
		int item_price = Integer.parseInt(request.getParameter("item_price"));
		int id=UserService.getUserId();
		System.out.println("userId: "+id);
       HttpSession s=request.getSession(false);
       if(s==null)
       {
    	   dispatcher = request.getRequestDispatcher("/index.html");
   		dispatcher.forward(request, response);
       }
		//int count=1;
       else {
		UserService.addCartItems(item, item_price);
		
		System.out.println("Item Selected: "+item+" "+item_price);
		dispatcher = request.getRequestDispatcher("./cart_items.jsp");
		dispatcher.forward(request, response);

       }
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			   throws ServletException, IOException {
		RequestDispatcher dispatcher1 = null;
	
			   System.out.println("Ready to Delete ");
			   String item = request.getParameter("item");
			 
			   HttpSession s=request.getSession(false);
		       if(s==null)
		       {
		    	   dispatcher1 = request.getRequestDispatcher("/index.html");
		   		dispatcher1.forward(request, response);
		       }
		       else {
			   UserService.deleteCartItem(item);
			   System.out.println("selected item to delete: "+item);
			   dispatcher1 = request.getRequestDispatcher("./cart.jsp");
				dispatcher1.forward(request, response);
		       }
		
			}
	
}
