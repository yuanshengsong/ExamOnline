package cn.edu.nsu.exam.function;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import cn.edu.nsu.exam.db.DBMain;

public class functionDAO extends DBMain<function> {

	@Override
	public ArrayList<function> getAll() throws ClassNotFoundException, SQLException {
		//封装SQL
		String sql = "select * from function";
		pst = getPrepareStatement(sql);
		//执行SQL语句
		rst = pst.executeQuery();
		//数据转存
		ArrayList<function> function = new ArrayList<function>();
		while(rst.next()) {
			function.add(assemble(rst));
		}
		//释放内存
		release();
		return function;
	}

	@Override
	public function getById(int id) throws ClassNotFoundException, SQLException {
		String sql = "SELECT *FROM function WHERE function_id = ?";
		pst = getPrepareStatement(sql);
		pst.setInt(1, id);
		rst = pst.executeQuery();
		function function = null;
		while(rst.next()) {
			function = assemble(rst);
		}
		release();
		return function;
	}

	@Override
	public void add(function dataObj) throws ClassNotFoundException, SQLException {
		String sql = "INSERT INTO function(function_name, function_URI, function_note)VALUES(?, ?, ?)";
		pst = getPrepareStatement(sql);
		pst.setInt(2, dataObj.getRoles_id());
		pst.setInt(1, dataObj.getFunction_id());
		pst.setString(3, dataObj.getFunction_URI());
		pst.setString(4, dataObj.getFunction_note());
		
		pst.executeUpdate();
		release();
		
	}

	@Override
	public void modify(function newDataObj) throws ClassNotFoundException, SQLException {
		String sql = "UPDATE function SET function_name = ?, function_URI = ?, function_note = ? WHERE function_id = ?";
		pst = getPrepareStatement(sql);
		pst.setString(1, newDataObj.getFunction_name());
		pst.setString(2, newDataObj.getFunction_URI());
		pst.setString(3, newDataObj.getFunction_note());
		pst.setInt(4, newDataObj.getFunction_id());
		
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
		functions.setFunction_id(rst.getInt("function_id"));
		functions.setRoles_id(rst.getInt("roles_id"));
		functions.setFunction_name(rst.getString("function_name"));
		functions.setFunction_URI(rst.getString("function_URI"));
		functions.setFunction_note(rst.getString("function_note"));
		
		return functions;
	}
	
	
}
