package PAF.servlet1;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.paf.model.User1;

import PAF.service.UserDAO1;

/**
 * Servlet implementation class Userregister
 */
@WebServlet("/Userregister") 
public class UserReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
      */
    public UserReg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		
		//doGet(request, response);

		int j =0;
		
		String first = request.getParameter("first");
		String last = request.getParameter("last");
		String email = request.getParameter("email");
		String age = request.getParameter("age");
		String mobile = request.getParameter("mobile");
		String password = request.getParameter("password");
		
		User1 u = new User1(); 
		
		
		u.setfirst(first);  
		u.setlast(last);		
		u.setemail(email);
		u.setage(age);
		u.setmobile(mobile);
		u.setpassword(password);
		
		String sql = "insert into user(first,lname,email,age,mobile,password) values(?,?,?,?,?,?)"; 
		j = UserDAO1.register(u,sql);
		
		if(j != 0) {
			request.setAttribute("msg", "Register sucessfully");
			
			request.getRequestDispatcher("UserLogin1.jsp").forward(request, response);
			
						}
					else {
			request.getRequestDispatcher("CreateAccUser1.jsp").forward(request, response);
			//**************Set anything as u want For Leader's use************
			}
	}

}