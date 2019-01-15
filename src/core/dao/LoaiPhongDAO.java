package core.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import core.dao.MySQLConnUtils;
import core.model.LoaiPhong;
import core.model.Phong;


public class LoaiPhongDAO {
	public ArrayList <LoaiPhong> getListLoaiPhong() throws SQLException, ClassNotFoundException{
		Connection connection = MySQLConnUtils.getMySQLConnection();
		String sql  = "SELECT * FROM loaiphong";
		PreparedStatement ps  = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<LoaiPhong> list = new ArrayList<>();
		while (rs.next()) {
			LoaiPhong loaiPhong = new LoaiPhong();
			loaiPhong.setMaLP(rs.getString("maLP"));
			loaiPhong.setTenLP(rs.getString("tenLP"));
			loaiPhong.setGiaLP(rs.getLong("giaLP"));
			loaiPhong.setTienNghi("tienNghi");
			loaiPhong.setSoLuongPhong("soLuongPhong");
			loaiPhong.setAnh("anh");
			list.add(loaiPhong);
			
		}
		return list;
	}
	
	
}