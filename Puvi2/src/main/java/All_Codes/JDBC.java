package All_Codes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBC {
	
	public static Connection con;
	
   //connection
	public static void get_connection() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");	
		String url="jdbc:mysql://localhost:3306/puviagam";
		String username="root";
		String Password="Karthi@31";
		con=DriverManager.getConnection(url,username,Password);
	}
	
	
	//Employee Details
	public static boolean Employee_Insert_Data(String employee_Position, String employee_Id, String employee_Name, String employee_Email, String employee_Password, Long employee_Phone, String employee_Address) throws ClassNotFoundException, SQLException
	{
		get_connection();
		
		String ins ="insert into employee values(?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(ins);
		ps.setString(1, employee_Position);
		ps.setString(2, employee_Id);
		ps.setString(3, employee_Name);
		ps.setString(4, employee_Email);
		ps.setString(5, employee_Password);
		ps.setLong(6, employee_Phone);
		ps.setString(7, employee_Address);
	
		
		int ins_result =ps.executeUpdate();
		
		if(ins_result==1)
		{
			return true;
		}
	
		return false;
		
	}
	
	
		
    //customer details
	public static boolean Client_Insert_Data(String customer_Name, String customer_Email, String customer_Password, Long customer_Mobile_No, String customer_Gender,String customer_DOB,
			String customer_Address) throws SQLException, ClassNotFoundException {
        get_connection();
		
		String ins ="insert into customer values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(ins);
		ps.setString(1, customer_Name);
		ps.setString(2, customer_Email);
		ps.setString(3, customer_Password);
		ps.setLong(4, customer_Mobile_No);
		ps.setString(5, customer_Gender);
		ps.setString(6, customer_DOB);
		ps.setString(7, customer_Address);
		//ps.setString(8, project_Site_No);
		//ps.setString(9, site_Location);
		//ps.setString(10, site_Area);
		//ps.setString(11, site_District);
		//ps.setString(12, site_State);
		//ps.setLong(13, site_Pincode);
		//ps.setString(14, site_Details);
		
		try {
		ps.executeUpdate();
		
		return true;
		}
		catch(Exception E)
		{
		 E.printStackTrace();
			return false;
		}
		
	
	    }

	
	//Employee  login
	
     public static	boolean Check_Crediential_Employee(String email_id, String password) throws ClassNotFoundException, SQLException
     {
    	 get_connection();
    	 
    	 String Login_Employee_Query ="select * from employee where emp_email_id=? and emp_password=?";
    	 
    	 PreparedStatement ps=con.prepareStatement(Login_Employee_Query);
    	 ps.setString(1,email_id );
 		 ps.setString(2, password);
    	 
 		 ResultSet rs =ps.executeQuery();
 		 if(rs.next())
 		 {
		return true;
 		 }
 		 return false;
    	 
     }


	public static boolean Check_Crediential_Customer(String email_id, String password) throws SQLException, ClassNotFoundException 
	{
 get_connection();
    	 
    	 String Login_Customer_Query ="select * from customer where customer_email_id=? and customer_password=?";
    	 
    	 PreparedStatement ps=con.prepareStatement(Login_Customer_Query);
    	 ps.setString(1,email_id );
 		 ps.setString(2, password);
    	 
 		 ResultSet rs =ps.executeQuery();
 		 if(rs.next())
 		 {
		return true;
 		 }
		return false;
	}


	

	
}
