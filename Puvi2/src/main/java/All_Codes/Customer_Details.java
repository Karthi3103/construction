package All_Codes;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/client_data")
public class Customer_Details extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
	static boolean insert_result_client;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		String Customer_Name = request.getParameter("Customer_Name");
		String Customer_Email = request.getParameter("Customer_Email");
		String Customer_Password= request.getParameter("Customer_Password");
		Long Customer_Mobile_No = Long.parseLong(request.getParameter("Customer_Mobile_No"));
		String Customer_Gender = request.getParameter("Gender");
		String Customer_DOB = request.getParameter("Date_of_Birth");
		String Customer_Address = request.getParameter("Customer_Address");
		//String Project_Site_No = request.getParameter("Project_Site_No");
		//String Site_Location = request.getParameter("Site_Location");
		//String Site_Area = request.getParameter("Site_Area");
		//String Site_District = request.getParameter("Site_District");
		//String Site_State = request.getParameter("Site_State");
		//Long Site_Pincode =  Long.parseLong(request.getParameter("Site_Pincode"));
		//String Site_Details = request.getParameter("Site_Details");
		
		try {
			insert_result_client=JDBC.Client_Insert_Data(Customer_Name,Customer_Email,Customer_Password,
					Customer_Mobile_No,Customer_Gender,Customer_DOB,Customer_Address);
			
			System.out.println(insert_result_client);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
