package PAF.servlet1;


import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.paf.model.User1;
import PAF.service.UserDAO1;

/**
 * Servlet implementation class User
 */
@WebServlet("/User")
public class User extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);

		//User1 u = new User1();  
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		
		if(email.equals(null)||email==""||password.equals(null)||password=="") {
			request.setAttribute("error", "error");
			getServletContext().getRequestDispatcher("").forward(request, response);
			
			
		}
		
		else {
			User1 u = new User1();  
			u.setemail(email);
			u.setpassword(password);
		
		String sql = "select * from User where email=? and password=?";  //set to User1
		
	
		
		ResultSet rs = UserDAO1.login(u,sql);
		
	
		
		HttpSession session = request.getSession(); 
		session.setMaxInactiveInterval(30*60);
		System.out.println(u.getemail());
		Cookie email1 = new Cookie("User", u.getemail()); //COOKIES  U capitalized changed to email
		email1.setMaxAge(30*60);                    //SESSION
		response.addCookie(email1);
		
		try {
			if(rs.next()) {
				session.setAttribute("first", rs.getString(2));
				session.setAttribute("last", rs.getString(3));
				session.setAttribute("email", rs.getString(4));
				session.setAttribute("age", rs.getString(5));
				session.setAttribute("mobile", rs.getString(6));
				session.setAttribute("password", rs.getString(7));
				
				request.getRequestDispatcher("UpdateAccUser1.jsp").forward(request, response);
				//getServletContext().getRequestDispatcher("/.jsp").forward(request, response);
				System.out.println("LoggedIN");
				
						}
			
								else{
									
				//request.getRequestDispatcher("CreateAccount.jsp").forward(request, response);
				request.getRequestDispatcher("UserLogin1.jsp").forward(request, response);
				// getServletContext().getRequestDispatcher("/User.java").forward(request, response);
				
				
				
				System.out.println("else part Details incorrect");
			}//**************Prompt Again login page************
			 
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
			}
	}

}
