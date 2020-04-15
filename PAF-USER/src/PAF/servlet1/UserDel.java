package PAF.servlet1;



import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.paf.model.User1;
import PAF.service.UserDAO1;


/**
 * Servlet implementation class DeleteAcc
 */
@WebServlet("/DeleteAcc")
public class  UserDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     *
    public DeleteAcc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String email = request.getParameter("email");
		
		User1 u = new User1();
		
		u.setemail(email);
		System.out.println(u.getemail());
		
		String sql ="delete from user where email=?";
		int x = UserDAO1.delete(u, sql);
		
		if(x!=0) {
			
			request.setAttribute("msg","Deleted succesfully");
			request.getRequestDispatcher("CreateAccUser1.jsp").forward(request, response);
			
		}
			
		
		else{
			
		}
		
		
		
	}

}