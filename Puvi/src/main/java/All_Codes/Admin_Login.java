package All_Codes;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/Admin_Login")
public class Admin_Login extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    String Email_id;
    String Password;
    String login_type;

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
    	 
     }
     else
     {
    	 
     }
    }
}
