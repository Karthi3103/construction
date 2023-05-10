package All_Codes;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/Insert")
public class Employee_Details extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
	static boolean insert_result;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		String Employee_Name = request.getParameter("Employee_Name");
		String Employee_Email = request.getParameter("Employee_Email");
		String Employee_Password= request.getParameter("Employee_Password");
		Long Employee_Phone = Long.parseLong(request.getParameter("Employee_Mobile_No"));
		String Employee_House_no = request.getParameter("Employee_House_No");
		String Employee_Street = request.getParameter("Employee_Street");
		String Employee_City = request.getParameter("Employee_City");
		String Employee_District = request.getParameter("Employee_District");
		String Employee_State = request.getParameter("Employee_State");
		Long Employee_Pincode =  Long.parseLong(request.getParameter("Employee_Pincode"));
		
		try {
			insert_result=JDBC.Employee_Insert_Data(Employee_Name,Employee_Email,Employee_Password,
					Employee_Phone,Employee_House_no,Employee_Street,Employee_City,
					Employee_District,Employee_State,Employee_Pincode  );
			
			if(insert_result)
			{
				 request.setAttribute("pass_err_msg", "Register Sucessfully");
			     request.getRequestDispatcher("Registration.jsp").forward(request, response);
			}
			else
			{
				request.setAttribute("pass_err_msg", "Email Alredy Used");
			     request.getRequestDispatcher("Registration.jsp").forward(request, response);
			}
			
			//System.out.println("sucess");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
