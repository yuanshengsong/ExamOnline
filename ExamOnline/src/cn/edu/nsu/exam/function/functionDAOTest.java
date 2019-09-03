package cn.edu.nsu.exam.function;

import java.sql.SQLException;

public class functionDAOTest {
	private static functionDAO  functionDAO = new functionDAO();
	
	public static void mian(String[] args) {
		try {
			getAllTest();
			
		}catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				functionDAO.release();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	private static void getAllTest() throws ClassNotFoundException, SQLException {
		System.out.println(functionDAO.getAll());
		
	}
}
