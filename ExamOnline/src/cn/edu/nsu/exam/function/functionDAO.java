package cn.edu.nsu.exam.function;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import cn.edu.nsu.exam.function.function;
import cn.edu.nsu.exam.db.DBMain;

public class functionDAO extends DBMain<function> {

	@Override
	public ArrayList<function> getAll() throws ClassNotFoundException, SQLException {
		String sql = "SELECT * FROM function";
		pst = getPrepareStatement(sql);
		rst = pst.executeQuery();
		ArrayList<function> functions = new ArrayList<function>();
		while(rst.next()) {
			functions.add(assemble(rst));
		}
		release();
		return functions;
	}

	@Override
	public function getById(int id) throws ClassNotFoundException, SQLException {
		String sql = "SELECT *FROM function WHERE function_id=?";
		pst = getPrepareStatement(sql);
		rst = pst.executeQuery();
		function functions = null;
		while(rst.next()) {
			functions = assemble(rst);
		}
		release();
		return functions;
	}

	@Override
	public void add(function dataObj) throws ClassNotFoundException, SQLException {
		String sql = "INSERT INTO function(function_name, function_URI, function_note)VALUES(?, ?, ?)";
		pst = getPrepareStatement(sql);
		pst.setString(1, dataObj.getfunction_name());
		pst.setString(2, dataObj.getfunction_URI());
		pst.setString(3, dataObj.getfunction_note());
		
		pst.executeUpdate();
		release();
		
	}

	@Override
	public void modify(function newDataObj) throws ClassNotFoundException, SQLException {
		String sql = "UPDATE function SET function_name = ?, function_URI = ?, function_note = ? WHERE function_id = ?";
		pst = getPrepareStatement(sql);
		pst.setString(1, newDataObj.getfunction_name());
		pst.setString(2, newDataObj.getfunction_URI());
		pst.setString(3, newDataObj.getfunction_note());
		pst.setInt(4, newDataObj.getfunction_id());
		
		pst.executeUpdate();
		release();
		
	}

	@Override
	public void delete(int id) throws ClassNotFoundException, SQLException {
		String sql = "DELETE FROM function WHERE function_id = ?";
		pst = getPrepareStatement(sql);
		pst.setInt(1, id);
		pst.executeUpdate();
		release();
		
	}

	@Override
	public function assemble(ResultSet rst) throws SQLException {
		function functions = new function();
		functions.setfunction_id(rst.getInt("functions_id"));
		functions.setfunction_name(rst.getString("functions_name"));
		functions.setfunction_URI(rst.getString("functions_URI"));
		functions.setfunction_note(rst.getString("functions_note"));
		return functions;
	}
	
	
}
