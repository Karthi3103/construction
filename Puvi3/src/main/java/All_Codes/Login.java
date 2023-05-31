package All_Codes;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

  
@WebServlet("/Admin_Login")
public class Login extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    String Email_id;
    String Password;
    String login_type;
    boolean Employee_login_res,Customer_login_res;
    String Employee_id;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    login_type=request.getParameter("login_type");
    Email_id = request.getParameter("email_id");  //getting admin email-id
    Password = request.getParameter("password");  //getting admin password
 
    
    response.setContentType("text/html;charset=UTF-8");

    if(login_type.equals("Admin"))
    {
     if(Email_id.equals("admin@puviagam.com") && Password.equals("admin"))
     {
     HttpSession session = request.getSession();
     session.setAttribute("Email",Email_id );
     response.sendRedirect("Admin_Master.jsp");
     }
     else
     {
     //out.print("Password is Incorret !!");
     request.setAttribute("pass_err_msg", "Please Check Email-Id & Password");
     request.getRequestDispatcher("index.jsp").forward(request, response);
     }
     }
     
     else if(login_type.equals("Employee"))
     {
    	 
    	 try {
			Employee_login_res =JDBC.Check_Crediential_Employee(Email_id,Password);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	 
    	 
    	 if(Employee_login_res)
         {
    		 try {
				Employee_id =JDBC.site_number(Email_id);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    		 HttpSession session = request.getSession();
    	     session.setAttribute("Email",Email_id );
    	     session.setAttribute("Employee_id",Employee_id );
         response.sendRedirect("Employee_Master.jsp");
         }
         else
         {
         //out.print("Password is Incorret !!");
         request.setAttribute("pass_err_msg", "Please Check Email-Id & Password");
         request.getRequestDispatcher("index.jsp").forward(request, response);
         }
     }
     else if(login_type.equals("Customer"))
     {
    	 try {
 			Customer_login_res =JDBC.Check_Crediential_Customer(Email_id,Password);
 		} catch (ClassNotFoundException | SQLException e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		}
     	
     	 if(Customer_login_res)
          {
     		 HttpSession session = request.getSession();
     	     session.setAttribute("Email",Email_id );
          response.sendRedirect("Customer_Master.jsp");
          }
          else
          {
          //out.print("Password is Incorret !!");
          request.setAttribute("pass_err_msg", "Please Check Email-Id & Password");
          request.getRequestDispatcher("index.jsp").forward(request, response);
          }
     }
    
     else
     {
    	 request.setAttribute("pass_err_msg", "check your account type..");
         request.getRequestDispatcher("index.jsp").forward(request, response);
     }
     
    }
}
