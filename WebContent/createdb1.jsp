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
		NhanVien admin = new NhanVien();
		admin.setMaNV("NV01");
		admin.setHoVaTenNV("Mai Van Cong");
		admin.setEmail("nhatbinh0207@gmail.com");
		ObjectDAO dao = new DAO_NhanVien();
		dao.saveOrUpdate(admin);

		NhanVien nhanvien = new NhanVien();
		nhanvien.setMaNV("NV02");
		nhanvien.setHoVaTenNV("Dao Nhat Binh");
		nhanvien.setEmail("nhatbinh1009@gmail.com");
		ObjectDAO dao1 = new DAO_NhanVien();
		dao1.saveOrUpdate(nhanvien);

		KhachHang kh = new KhachHang();
		kh.setMaKH("TV01");
		kh.setHoVaTenKH("Nguyen Van Hieu");
		kh.setEmail("nguyenhieu225@gmail.com");
		ObjectDAO dao2 = new DAO_KhachHang();
		dao2.saveOrUpdate(kh);
		
		
		
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

		// chức năng và nhóm phân quyền
		ChucNang CN_QuanLyChucNangVaNhomPhanQuyen = new ChucNang();
		CN_QuanLyChucNangVaNhomPhanQuyen.setMaChucNang("core_CN_QuanLyChucNangVaNhomPhanQuyen");
		CN_QuanLyChucNangVaNhomPhanQuyen.setDuongDan("null");
		CN_QuanLyChucNangVaNhomPhanQuyen.setHinhAnh("fa fa-filter");
		CN_QuanLyChucNangVaNhomPhanQuyen.setTenHienThi("Chức năng và nhóm phân quyền");
		CN_QuanLyChucNangVaNhomPhanQuyen.setChucNangCha(null);
		daochucnang.saveOrUpdate(CN_QuanLyChucNangVaNhomPhanQuyen);

		ChucNang CN_QuanLyChucNang = new ChucNang();
		CN_QuanLyChucNang.setMaChucNang("core_CN_QuanLyChucNang");
		CN_QuanLyChucNang.setDuongDan("pages/chucnangs.jsp");
		CN_QuanLyChucNang.setHinhAnh("fa fa-share-alt");
		CN_QuanLyChucNang.setTenHienThi("Quản lý chức năng");
		CN_QuanLyChucNang.setChucNangCha(CN_QuanLyChucNangVaNhomPhanQuyen);
		daochucnang.saveOrUpdate(CN_QuanLyChucNang);

		ChucNang CN_QuanLyNhomPhanQuyen = new ChucNang();
		CN_QuanLyNhomPhanQuyen.setMaChucNang("core_CN_QuanLyNhomPhanQuyen");
		CN_QuanLyNhomPhanQuyen.setDuongDan("pages/nhomphanquyens.jsp");
		CN_QuanLyNhomPhanQuyen.setHinhAnh("fa fa-share-alt");
		CN_QuanLyNhomPhanQuyen.setTenHienThi("Quản lý nhóm phân quyền");
		CN_QuanLyNhomPhanQuyen.setChucNangCha(CN_QuanLyChucNangVaNhomPhanQuyen);
		daochucnang.saveOrUpdate(CN_QuanLyNhomPhanQuyen);
		//end

		// quản lý nhân viên va khach hang
		ChucNang CN_QuanLyThongTinCoBan = new ChucNang();
		CN_QuanLyThongTinCoBan.setMaChucNang("core_CN_QuanLyThongTinCoBan");
		CN_QuanLyThongTinCoBan.setDuongDan("null");
		CN_QuanLyThongTinCoBan.setHinhAnh("fa fa-wrench");
		CN_QuanLyThongTinCoBan.setTenHienThi("Thông tin cơ bản");
		CN_QuanLyThongTinCoBan.setChucNangCha(null);
		daochucnang.saveOrUpdate(CN_QuanLyThongTinCoBan);

		ChucNang CN_QuanLyThongTinKhachHang = new ChucNang();
		CN_QuanLyThongTinKhachHang.setMaChucNang("core_CN_QuanLyThongTinKhachHang");
		CN_QuanLyThongTinKhachHang.setDuongDan("pages/khachhangs.jsp");
		CN_QuanLyThongTinKhachHang.setHinhAnh("fa fa-list-ol");
		CN_QuanLyThongTinKhachHang.setTenHienThi("Quản lý thông tin khách hàng");
		CN_QuanLyThongTinKhachHang.setChucNangCha(CN_QuanLyThongTinCoBan);
		daochucnang.saveOrUpdate(CN_QuanLyThongTinKhachHang);

		ChucNang CN_QuanLyThongTinNhanVien = new ChucNang();
		CN_QuanLyThongTinNhanVien.setMaChucNang("core_CN_QuanLyThongTinNhanVien");
		CN_QuanLyThongTinNhanVien.setDuongDan("pages/nhanviens.jsp");
		CN_QuanLyThongTinNhanVien.setHinhAnh("fa fa-list-ol");
		CN_QuanLyThongTinNhanVien.setTenHienThi("Quản lý thông tin nhân viên");
		CN_QuanLyThongTinNhanVien.setChucNangCha(CN_QuanLyThongTinCoBan);
		daochucnang.saveOrUpdate(CN_QuanLyThongTinNhanVien);

		//end

		// quản lý tài khoản	
		ChucNang CN_QuanLyTaiKhoan = new ChucNang();
		CN_QuanLyTaiKhoan.setMaChucNang("core_CN_QuanLyTaiKhoan");
		CN_QuanLyTaiKhoan.setDuongDan("null");
		CN_QuanLyTaiKhoan.setHinhAnh("fa fa-filter");
		CN_QuanLyTaiKhoan.setTenHienThi("Quản lý tài khoản");
		CN_QuanLyTaiKhoan.setChucNangCha(null);
		daochucnang.saveOrUpdate(CN_QuanLyTaiKhoan);

		ChucNang CN_QuanLyTaiKhoanNhanVien = new ChucNang();
		CN_QuanLyTaiKhoanNhanVien.setMaChucNang("core_CN_QuanLyTaiKhoanNhanVien");
		CN_QuanLyTaiKhoanNhanVien.setDuongDan("pages/taikhoannhanviens.jsp");
		CN_QuanLyTaiKhoanNhanVien.setHinhAnh("fa fa-users");
		CN_QuanLyTaiKhoanNhanVien.setTenHienThi("Quản lý tài khoản nhân viên");
		CN_QuanLyTaiKhoanNhanVien.setChucNangCha(CN_QuanLyTaiKhoan);
		daochucnang.saveOrUpdate(CN_QuanLyTaiKhoanNhanVien);

		ChucNang CN_QuanLyTaiKhoanKhachHang = new ChucNang();
		CN_QuanLyTaiKhoanKhachHang.setMaChucNang("core_CN_QuanLyTaiKhoanKhachHang");
		CN_QuanLyTaiKhoanKhachHang.setDuongDan("pages/taikhoankhachhangs.jsp");
		CN_QuanLyTaiKhoanKhachHang.setHinhAnh("fa fa-users");
		CN_QuanLyTaiKhoanKhachHang.setTenHienThi("Quản lý tài khoản khách hàng");
		CN_QuanLyTaiKhoanKhachHang.setChucNangCha(CN_QuanLyTaiKhoan);
		daochucnang.saveOrUpdate(CN_QuanLyTaiKhoanKhachHang);

		//end quan ly tai khoan

		
		
		//quan ly thong tin dat phong
		
		
		ChucNang CN_QuanLyThongTin = new ChucNang();
		CN_QuanLyThongTin.setMaChucNang("core_CN_QuanLyThongTin");
		CN_QuanLyThongTin.setDuongDan("null");
		CN_QuanLyThongTin.setHinhAnh("fa fa-filter");
		CN_QuanLyThongTin.setTenHienThi("Quản lý thông tin");
		CN_QuanLyThongTin.setChucNangCha(null);
		daochucnang.saveOrUpdate(CN_QuanLyThongTin);
		
		
		ChucNang CN_QuanLyThongTinDatPhong = new ChucNang();
		CN_QuanLyThongTinDatPhong.setMaChucNang("core_CN_QuanLyThongTinDatPhong");
		CN_QuanLyThongTinDatPhong.setDuongDan("pages/thongtindatphongs.jsp");
		CN_QuanLyThongTinDatPhong.setHinhAnh("fa fa-users");
		CN_QuanLyThongTinDatPhong.setTenHienThi("Quản lý thông tin đặt phòng");
		CN_QuanLyThongTinDatPhong.setChucNangCha(CN_QuanLyThongTin);
		daochucnang.saveOrUpdate(CN_QuanLyThongTinDatPhong);
		
		
		//quanlys thong tin giao phong
		
		ChucNang CN_QuanLyThongTinGiaoPhong = new ChucNang();
		CN_QuanLyThongTinGiaoPhong.setMaChucNang("core_CN_QuanLyThongTinGiaoPhong");
		CN_QuanLyThongTinGiaoPhong.setDuongDan("pages/thongtingiaophongs.jsp");
		CN_QuanLyThongTinGiaoPhong.setHinhAnh("fa fa-users");
		CN_QuanLyThongTinGiaoPhong.setTenHienThi("Quản lý thông tin giao phòng");
		CN_QuanLyThongTinGiaoPhong.setChucNangCha(CN_QuanLyThongTin);
		daochucnang.saveOrUpdate(CN_QuanLyThongTinGiaoPhong);
		
		
		
		ChucNang CN_QuanLyTrangThaiPhong = new ChucNang();
		CN_QuanLyTrangThaiPhong.setMaChucNang("core_CN_QuanLyTrangThaiPhong");
		CN_QuanLyTrangThaiPhong.setDuongDan("pages/trangthaiphongs.jsp");
		CN_QuanLyTrangThaiPhong.setHinhAnh("fa fa-users");
		CN_QuanLyTrangThaiPhong.setTenHienThi("Quản lý trạng thái phòng");
		CN_QuanLyTrangThaiPhong.setChucNangCha(CN_QuanLyThongTin);
		daochucnang.saveOrUpdate(CN_QuanLyTrangThaiPhong);
		
		
		
		
		
		
		
		
		//quan ly phong

		ChucNang CN_Phong_Giuong = new ChucNang();
		CN_Phong_Giuong.setMaChucNang("core_CN_Phong_Giuong");
		CN_Phong_Giuong.setDuongDan("null");
		CN_Phong_Giuong.setHinhAnh("fa fa-filter");
		CN_Phong_Giuong.setTenHienThi("Quản lý phòng");
		CN_Phong_Giuong.setChucNangCha(null);
		daochucnang.saveOrUpdate(CN_Phong_Giuong);

		ChucNang CN_QuanLyPhong = new ChucNang();
		CN_QuanLyPhong.setMaChucNang("core_CN_QuanLyPhong");
		CN_QuanLyPhong.setDuongDan("pages/phongs.jsp");
		CN_QuanLyPhong.setHinhAnh("fa fa-users");
		CN_QuanLyPhong.setTenHienThi("Quản lý phòng");
		CN_QuanLyPhong.setChucNangCha(CN_Phong_Giuong);
		daochucnang.saveOrUpdate(CN_QuanLyPhong);

		ChucNang CN_QuanLyGiuong = new ChucNang();
		CN_QuanLyGiuong.setMaChucNang("core_CN_QuanLyGiuong");
		CN_QuanLyGiuong.setDuongDan("pages/giuongs.jsp");
		CN_QuanLyGiuong.setHinhAnh("fa fa-users");
		CN_QuanLyGiuong.setTenHienThi("Quản lý giường");
		CN_QuanLyGiuong.setChucNangCha(CN_Phong_Giuong);
		daochucnang.saveOrUpdate(CN_QuanLyGiuong);

		ChucNang CN_QuanLyLoaiPhong = new ChucNang();
		CN_QuanLyLoaiPhong.setMaChucNang("core_CN_QuanLyLoaiPhong");
		CN_QuanLyLoaiPhong.setDuongDan("pages/loaiphongs.jsp");
		CN_QuanLyLoaiPhong.setHinhAnh("fa fa-users");
		CN_QuanLyLoaiPhong.setTenHienThi("Quản lý loại phòng");
		CN_QuanLyLoaiPhong.setChucNangCha(CN_Phong_Giuong);
		daochucnang.saveOrUpdate(CN_QuanLyLoaiPhong);

		//end ql phong

		// sét quyền truy cập
		//admin
		NhomPhanQuyen nhomPhanQuyenadmin = new NhomPhanQuyen();
		nhomPhanQuyenadmin.setMaNhomPhanQuyen("admin");
		nhomPhanQuyenadmin.setTenNhomPhanQuyen("Admin");
		Set<ChucNang> chs1 = new HashSet<ChucNang>();

		chs1.add(CN_QuanLyChucNangVaNhomPhanQuyen);
		chs1.add(CN_QuanLyChucNang);
		chs1.add(CN_QuanLyNhomPhanQuyen);

		chs1.add(CN_QuanLyThongTinCoBan);
		chs1.add(CN_QuanLyThongTinKhachHang);
		chs1.add(CN_QuanLyThongTinNhanVien);

		chs1.add(CN_QuanLyTaiKhoan);
		chs1.add(CN_QuanLyTaiKhoanNhanVien);
		chs1.add(CN_QuanLyTaiKhoanKhachHang);
		
		chs1.add(CN_QuanLyThongTin);
		chs1.add(CN_QuanLyThongTinDatPhong);
		chs1.add(CN_QuanLyThongTinGiaoPhong);
		chs1.add(CN_QuanLyTrangThaiPhong);

		chs1.add(CN_Phong_Giuong);
		chs1.add(CN_QuanLyPhong);
		chs1.add(CN_QuanLyGiuong);
		chs1.add(CN_QuanLyLoaiPhong);
		
		
		
		nhomPhanQuyenadmin.setChucNangs(chs1);
		ObjectDAO daonpqad = new DAO_NhomPhanQuyen();
		daonpqad.saveOrUpdate(nhomPhanQuyenadmin);

		// nhan vien		

		NhomPhanQuyen nhomPhanQuyennv = new NhomPhanQuyen();
		nhomPhanQuyennv.setMaNhomPhanQuyen("nhanvien");
		nhomPhanQuyennv.setTenNhomPhanQuyen("Nhân viên");
		Set<ChucNang> chs2 = new HashSet<ChucNang>();
		
		

		chs2.add(CN_QuanLyThongTinCoBan);
		chs2.add(CN_QuanLyThongTinKhachHang);
		chs2.add(CN_QuanLyThongTinNhanVien);

		chs2.add(CN_QuanLyTaiKhoan);
		chs2.add(CN_QuanLyTaiKhoanNhanVien);
		chs2.add(CN_QuanLyTaiKhoanKhachHang);
		
		chs2.add(CN_QuanLyThongTin);
		chs2.add(CN_QuanLyThongTinDatPhong);
		chs2.add(CN_QuanLyThongTinGiaoPhong);

		chs2.add(CN_Phong_Giuong);
		chs2.add(CN_QuanLyPhong);
		chs2.add(CN_QuanLyGiuong);
		chs2.add(CN_QuanLyLoaiPhong);
		nhomPhanQuyennv.setChucNangs(chs2);
		ObjectDAO daonpqnv = new DAO_NhomPhanQuyen();
		daonpqnv.saveOrUpdate(nhomPhanQuyennv);

	
		// // tk admin		
		TaiKhoanNhanVien tkadmin = new TaiKhoanNhanVien();
		tkadmin.setMaDangNhap(admin.getEmail());
		tkadmin.setEmail(admin.getEmail());
		tkadmin.setMatKhau(Util_MD5.md5("123456"));
		tkadmin.setNhanVien(admin);
		tkadmin.setNhomPhanQuyen(nhomPhanQuyenadmin);
		ObjectDAO daoadmin = new DAO_TaiKhoan();
		daoadmin.saveOrUpdate(tkadmin);
		// // tk nhan vien		
		TaiKhoanNhanVien tknv = new TaiKhoanNhanVien();
		tknv.setMaDangNhap(nhanvien.getEmail());
		tknv.setEmail(nhanvien.getEmail());
		tknv.setMatKhau(Util_MD5.md5("123456"));
		tknv.setNhanVien(nhanvien);
		tknv.setNhomPhanQuyen(nhomPhanQuyennv);
		ObjectDAO daonv = new DAO_TaiKhoan();
		daonv.saveOrUpdate(tknv);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

	%>

</body>
</html>