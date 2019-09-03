package cn.edu.nsu.exam.function;

import java.sql.SQLException;
/**
 * @author YSS
 *
 */
public class functionDAOTest {
	private static functionDAO  functionDAO = new functionDAO();
	
	public static void main(String[] args) {
		try {
			//getAllTest();
			getByIdTest();
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
	private static void getAllTest() throws ClassNotFoundException,SQLException{
		System.out.println(functionDAO.getAll());
	}
	
	private static void getByIdTest() throws ClassNotFoundException,SQLException{
		System.out.println(functionDAO.getById(1));
	}
	
}
