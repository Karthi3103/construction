package All_Codes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JDBC {
	
	public static Connection con;
	
   //connection
	public static void get_connection() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");	
		String url="jdbc:mysql://localhost:3306/puviyagam";
		String username="root";
		String Password="Karthi@31";
		con=DriverManager.getConnection(url,username,Password);
	}
	
	
	//Employee Details
	public static boolean Employee_Insert_Data(String employee_Name, String employee_Email, String employee_Password, Long employee_Phone, String employee_House_no, String employee_Street, String employee_City, String employee_District, String employee_State, Long employee_Pincode) throws ClassNotFoundException, SQLException
	{
		get_connection();
		
		String ins ="insert into employee(emp_name, emp_email, emp_password, phone, house_no, street, city, district, state, pincode) values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(ins);
		ps.setString(1, employee_Name);
		ps.setString(2, employee_Email);
		ps.setString(3, employee_Password);
		ps.setLong(4, employee_Phone);
		ps.setString(5, employee_House_no);
		ps.setString(6, employee_Street);
		ps.setString(7, employee_City);
		ps.setString(8, employee_District);
		ps.setString(9, employee_State);
		ps.setLong(10, employee_Pincode);
		
		int ins_result =ps.executeUpdate();
		
		if(ins_result==1)
		{
			return true;
		}
	
		return false;
		
	}
	
	
		
    //client details
	public static boolean Client_Insert_Data(String client_Name, String client_Email, String client_Password,
			Long client_Phone, String client_House_no, String client_Street, String client_City, String client_District,
			String client_State, Long client_Pincode) throws SQLException, ClassNotFoundException {
        get_connection();
		
		String ins ="insert into client(client_name, client_email, client_password, phone, house_no, street, city, district, state, pincode) values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(ins);
		ps.setString(1, client_Name);
		ps.setString(2, client_Email);
		ps.setString(3, client_Password);
		ps.setLong(4, client_Phone);
		ps.setString(5, client_House_no);
		ps.setString(6, client_Street);
		ps.setString(7, client_City);
		ps.setString(8, client_District);
		ps.setString(9, client_State);
		ps.setLong(10, client_Pincode);
		
		try {
		int ins_result =ps.executeUpdate();
		
		return true;
		}
		catch(Exception E)
		{
			return false;
		}
		
	
	}

}
