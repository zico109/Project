<%@page import="core.modelDAO.DAO_Phong"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="core.modelDAO.DAO_ChucNang"%>
<%@page import="core.modelDAO.DAO_Giuong"%>
<%@page import="core.model.ChucNang"%>
<%@page import="core.modelDAO.DAO_NhomPhanQuyen"%>
<%@page import="core.model.NhomPhanQuyen"%>
<%@page import="core.utils.Util_MD5"%>
<%@page import="core.modelDAO.DAO_TaiKhoan"%>
<%@page import="core.model.TaiKhoanNhanVien"%>
<%@page import="core.model.TaiKhoan"%>
<%@page import="core.modelDAO.DAO_NhanVien"%>
<%@page import="core.modelDAO.DAO_KhachHang"%>
<%@page import="core.dao.ObjectDAO"%>
<%@page import="core.model.NhanVien"%>
<%@page import="core.model.KhachHang"%>
<%@page import="core.model.Giuong"%>
<%@page import="core.model.Phong"%>
<%@page import="core.model.LoaiPhong"%>
<%@page import="core.modelDAO.DAO_LoaiPhong"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	///loai phong
	
	LoaiPhong loaiphong = new LoaiPhong();
	loaiphong.setMaLP("PNT001");
	loaiphong.setTenLP("Phòng nam thường");
	loaiphong.setGiaLP(1000000);
	loaiphong.setTienNghi("wifi");
	ObjectDAO dao3 = new DAO_LoaiPhong();
	dao3.saveOrUpdate(loaiphong);
	
	
	LoaiPhong loaiphong1 = new LoaiPhong();
	loaiphong.setMaLP("PNV001");
	loaiphong.setTenLP("Phòng nam vip");
	loaiphong.setGiaLP(2000000);
	loaiphong.setTienNghi("wifi, tv");
	ObjectDAO dao4 = new DAO_LoaiPhong();
	dao3.saveOrUpdate(loaiphong);
	
	LoaiPhong loaiphong2 = new LoaiPhong();
	loaiphong.setMaLP("PNuT001");
	loaiphong.setTenLP("Phòng nữ thường");
	loaiphong.setGiaLP(1000000);
	loaiphong.setTienNghi("wifi");
	ObjectDAO dao5 = new DAO_LoaiPhong();
	dao3.saveOrUpdate(loaiphong);
	
	LoaiPhong loaiphong3 = new LoaiPhong();
	loaiphong.setMaLP("PNuV001");
	loaiphong.setTenLP("Phòng nữ vip");
	loaiphong.setGiaLP(2000000);
	loaiphong.setTienNghi("wifi,tv");
	ObjectDAO dao6 = new DAO_LoaiPhong();
	dao3.saveOrUpdate(loaiphong);
	
	LoaiPhong loaiphong4 = new LoaiPhong();
	loaiphong.setMaLP("PMT001");
	loaiphong.setTenLP("Phòng mix thuong");
	loaiphong.setGiaLP(1000000);
	loaiphong.setTienNghi("wifi");
	ObjectDAO dao7 = new DAO_LoaiPhong();
	dao3.saveOrUpdate(loaiphong);
	
	LoaiPhong loaiphong5 = new LoaiPhong();
	loaiphong.setMaLP("PMV001");
	loaiphong.setTenLP("Phòng mix vip");
	loaiphong.setGiaLP(2000000);
	loaiphong.setTienNghi("wifi,tv");
	ObjectDAO dao8 = new DAO_LoaiPhong();
	dao3.saveOrUpdate(loaiphong);
	
	//phong
	
	Phong phong = new Phong();
	phong.setMaPhong("PN001");
	phong.setTenPhong("Phòng nam 1");
	phong.setSoLuongNguoi("10 người");
	phong.setTrangThai("còn chỗ");
	phong.setLoaiPhong(loaiphong);
	ObjectDAO dao9 = new DAO_Phong();
	dao4.saveOrUpdate(phong);
	
	
	Phong phong1 = new Phong();
	phong.setMaPhong("PN002");
	phong.setTenPhong("Phòng nam 2");
	phong.setSoLuongNguoi("10 người");
	phong.setTrangThai("còn chỗ");
	phong.setLoaiPhong(loaiphong);
	ObjectDAO dao10 = new DAO_Phong();
	dao4.saveOrUpdate(phong);
	
	Phong phong2 = new Phong();
	phong.setMaPhong("PNV001");
	phong.setTenPhong("Phòng nam vip 1");
	phong.setSoLuongNguoi("10 người");
	phong.setTrangThai("còn chỗ");
	phong.setLoaiPhong(loaiphong);
	ObjectDAO dao11 = new DAO_Phong();
	dao4.saveOrUpdate(phong);
	
	
	Phong phong3 = new Phong();
	phong.setMaPhong("PMV001");
	phong.setTenPhong("Phòng mix vip 1");
	phong.setSoLuongNguoi("10 người");
	phong.setTrangThai("còn chỗ");
	phong.setLoaiPhong(loaiphong);
	ObjectDAO dao12 = new DAO_Phong();
	dao4.saveOrUpdate(phong);
	
	
	//giuong

	Giuong giuong = new Giuong();
	giuong.setMaGiuong("G001");
	giuong.setTrangThai("Trống");
	giuong.setPhong(phong);
	ObjectDAO dao14 = new DAO_Giuong();
	dao5.saveOrUpdate(giuong); 
	
	
	Giuong giuong1 = new Giuong();
	giuong.setMaGiuong("G002");
	giuong.setTrangThai("Trống");
	giuong.setPhong(phong);
	ObjectDAO dao15 = new DAO_Giuong();
	dao5.saveOrUpdate(giuong); 
	
	
	Giuong giuong2 = new Giuong();
	giuong.setMaGiuong("G003");
	giuong.setTrangThai("Trống");
	giuong.setPhong(phong);
	ObjectDAO dao16 = new DAO_Giuong();
	dao5.saveOrUpdate(giuong); 
	
	
	
	Giuong giuong3 = new Giuong();
	giuong.setMaGiuong("G004");
	giuong.setTrangThai("Trống");
	giuong.setPhong(phong);
	ObjectDAO dao17 = new DAO_Giuong();
	dao5.saveOrUpdate(giuong); 
	

	ObjectDAO daochucnang = new DAO_ChucNang();
	%>

</body>
</html>