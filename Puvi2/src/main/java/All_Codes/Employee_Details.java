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
	
		String Employee_Position = request.getParameter("Designation");
		String Employee_Id = request.getParameter("Employee_Id");
		String Employee_Name = request.getParameter("Employee_Name");
		String Employee_Email = request.getParameter("Employee_Email");
		String Employee_Password= request.getParameter("Employee_Password");
		Long Employee_Phone = Long.parseLong(request.getParameter("Employee_Mobile_No"));
		String Employee_Address = request.getParameter("Employee_Address");
	
		try {
			insert_result=JDBC.Employee_Insert_Data(Employee_Position,Employee_Id,Employee_Name,Employee_Email,Employee_Password,
					Employee_Phone,Employee_Address  );
			
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
