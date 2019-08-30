package cn.edu.nsu.exam.function;

import java.sql.SQLException;

public class functionDAOTest {
	private static functionDAO  functionDAO = new functionDAO();
	
	public static void mian(String[] arg) {
		try {
			getAllTest();
			
		}catch (ClassNotFoundException e) {
			// TODO: handle exception
		}
		catch (SQLException e) {
			// TODO: handle exception
		}finally {
			try {
				functionDAO.release();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
	private static void getAllTest() throws ClassNotFoundException, SQLException {
		System.out.println(functionDAO.getAll());
		
	}
}
