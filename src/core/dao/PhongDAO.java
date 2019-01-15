package core.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.oro.text.regex.Perl5Pattern;

import core.dao.MySQLConnUtils;
import core.model.Phong;

public class PhongDAO {
	public ArrayList<Phong> getListPhongByLoaiPhong(String maLP) throws ClassNotFoundException, SQLException {
		Connection connection = MySQLConnUtils.getMySQLConnection();
		String sql = "SELECT * FROM phong WHERE loaiphong_maLP = '" + maLP + "'";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Phong> list = new ArrayList<>();
		while (rs.next()) {
			Phong p = new Phong();
			p.setMaPhong(rs.getString("maPhong"));
			p.setTenPhong(rs.getString("tenPhong"));
			p.setSoLuongNguoi(rs.getString("soLuongNguoi"));
			p.setTrangThai(rs.getString("trangThai"));
			list.add(p);
		}
		return list;
	}

	public ArrayList<Phong> getListAllPhong() throws ClassNotFoundException, SQLException {
		Connection connection = MySQLConnUtils.getMySQLConnection();
		String sql = "SELECT * FROM phong ";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Phong> list = new ArrayList<>();
		while (rs.next()) {
			Phong p = new Phong();
			p.setMaPhong(rs.getString("maPhong"));
			p.setTenPhong(rs.getString("tenPhong"));
			p.setSoLuongNguoi(rs.getString("soLuongNguoi"));
			p.setTrangThai(rs.getString("trangThai"));
			list.add(p);
		}
		return list;
	}

	public Phong getPhong(String maPhong) throws ClassNotFoundException, SQLException {
		Connection connection = MySQLConnUtils.getMySQLConnection();
		String sql = "SELECT * FROM phong  WHERE maPhong = '" + maPhong + "'";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		Phong phong = new Phong();
		while (rs.next()) {
			Phong p = new Phong();
			p.setMaPhong(rs.getString("maPhong"));
			p.setTenPhong(rs.getString("tenPhong"));
			p.setSoLuongNguoi(rs.getString("soLuongNguoi"));
			p.setTrangThai(rs.getString("trangThai"));
		}
		return phong;
	}

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		PhongDAO phongDAO = new PhongDAO();
		for(Phong p : phongDAO.getListAllPhong()){
			System.out.println(p.getTenPhong());
		}
	}
}