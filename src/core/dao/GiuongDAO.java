package core.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.oro.text.regex.Perl5Pattern;

import core.dao.MySQLConnUtils;
import core.model.Giuong;
import core.model.Phong;

public class GiuongDAO {
	public ArrayList<Giuong> getListGiuongByPhong(String maPhong) throws ClassNotFoundException, SQLException {
		Connection connection = MySQLConnUtils.getMySQLConnection();
		String sql = "SELECT * FROM phong WHERE giuong_maPhong = '" + maPhong + "'";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Giuong> list = new ArrayList<>();
		while (rs.next()) {
			Giuong p = new Giuong();
			p.setMaGiuong(rs.getString("maGiuong"));
			p.setTrangThai(rs.getString("trangThai"));
			list.add(p);
		}
		return list;
	}

	public ArrayList<Giuong> getListAllGiuong() throws ClassNotFoundException, SQLException {
		Connection connection = MySQLConnUtils.getMySQLConnection();
		String sql = "SELECT * FROM giuong ";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Giuong> list = new ArrayList<>();
		while (rs.next()) {
			Giuong p = new Giuong();
			p.setMaGiuong(rs.getString("maGiuong"));
			p.setTrangThai(rs.getString("trangThai"));
			list.add(p);
		}
		return list;
	}

	public Giuong getGiuong(String maGiuong) throws ClassNotFoundException, SQLException {
		Connection connection = MySQLConnUtils.getMySQLConnection();
		String sql = "SELECT * FROM giuong  WHERE maGiuong = '" + maGiuong + "'";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		Giuong giuong = new Giuong();
		while (rs.next()) {
			Giuong p = new Giuong();
			p.setMaGiuong(rs.getString("maGiuong"));
			p.setTrangThai(rs.getString("trangThai"));
		}
		return giuong;
	}

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		GiuongDAO giuongDAO = new GiuongDAO();
		for(Giuong p : giuongDAO.getListAllGiuong()){
			System.out.println(p.getTrangThai());
		}
	}
}