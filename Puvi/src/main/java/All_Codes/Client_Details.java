package All_Codes;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/client_data")
public class Client_Details extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
	static boolean insert_result_client;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		String Client_Name = request.getParameter("Client_Name");
		String Client_Email = request.getParameter("Client_Email");
		String Client_Password= request.getParameter("Client_Password");
		Long Client_Phone = Long.parseLong(request.getParameter("Client_Mobile_No"));
		String Client_House_no = request.getParameter("Client_House_No");
		String Client_Street = request.getParameter("Client_Street");
		String Client_City = request.getParameter("Client_City");
		String Client_District = request.getParameter("Client_District");
		String Client_State = request.getParameter("Client_State");
		Long Client_Pincode =  Long.parseLong(request.getParameter("Client_Pincode"));
		
		try {
			insert_result_client=JDBC.Client_Insert_Data(Client_Name,Client_Email,Client_Password,
					Client_Phone,Client_House_no,Client_Street,Client_City,
					Client_District,Client_State,Client_Pincode  );
			
			System.out.println("sucess");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
