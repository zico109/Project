<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="core.modelDAO.DAO_ChucNang"%>
<%@page import="core.model.ChucNang"%>
<%@page import="core.modelDAO.DAO_NhomPhanQuyen"%>
<%@page import="core.model.NhomPhanQuyen"%>
<%@page import="core.utils.Util_MD5"%>
<%@page import="core.modelDAO.DAO_TaiKhoan"%>
<%@page import="core.model.TaiKhoanNhanVien"%>
<%@page import="core.model.TaiKhoan"%>
<%@page import="core.modelDAO.DAO_NhanVien"%>
<%@page import="core.dao.ObjectDAO"%>
<%@page import="core.model.NhanVien"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
/* 		NhanVien nv = new NhanVien();
		nv.setMaNV("001");
		nv.setHoVaTenNV("Le Nhat Tung");
		nv.setEmail("tungit07@gmail.com");
		ObjectDAO dao2 = new DAO_NhanVien();
		dao2.saveOrUpdate(nv); 
		*/
		
		NhanVien admin = new NhanVien();
		admin.setMaNV("001");
		admin.setHoVaTenNV("Lê Nhật Tùng");
		admin.setEmail("tungit07@gmail.com");
		ObjectDAO dao2 = new DAO_NhanVien();
		dao2.saveOrUpdate(admin);

		

		
		


	
		/* ChucNang CN_QuanLyTaiKhoan = new ChucNang();
		CN_QuanLyTaiKhoan.setMaChucNang("core_CN_QuanLyTaiKhoan");
		CN_QuanLyTaiKhoan.setDuongDan("");
		CN_QuanLyTaiKhoan.setHinhAnh("fa fa-wrench");
		CN_QuanLyTaiKhoan.setTenHienThi("Quản lý tài khoản");
		CN_QuanLyTaiKhoan.setChucNangCha(null);
		daochucnang.saveOrUpdate(CN_QuanLyTaiKhoan);
		
		ChucNang CN_QuanLyTaiKhoanNhanVien = new ChucNang();
		CN_QuanLyTaiKhoanNhanVien.setMaChucNang("core_CN_QuanLyTaiKhoanNhanVien");
		CN_QuanLyTaiKhoanNhanVien.setDuongDan("pages/nhanvien.jsp");
		CN_QuanLyTaiKhoanNhanVien.setHinhAnh("fa fa-list-ol");
		CN_QuanLyTaiKhoanNhanVien.setTenHienThi("Quản lý tài khoản nhân viên");
		CN_QuanLyTaiKhoanNhanVien.setChucNangCha(CN_QuanLyTaiKhoan);
		daochucnang.saveOrUpdate(CN_QuanLyTaiKhoanNhanVien);
		
		ChucNang CN_ThemTaiKhoanNhanVien = new ChucNang();
		CN_ThemTaiKhoanNhanVien.setMaChucNang("core_CN_ThemTaiKhoanNhanVien");
		CN_ThemTaiKhoanNhanVien.setDuongDan("pages/nhanvien.jsp");
		CN_ThemTaiKhoanNhanVien.setHinhAnh("fa fa-list-ol");
		CN_ThemTaiKhoanNhanVien.setTenHienThi("Thêm tài khoản nhân viên");
		CN_ThemTaiKhoanNhanVien.setChucNangCha(CN_QuanLyTaiKhoan);
		daochucnang.saveOrUpdate(CN_ThemTaiKhoanNhanVien);
		
		ChucNang CN_QuanLyTaiKhoanKhachHang = new ChucNang();
		CN_QuanLyTaiKhoanKhachHang.setMaChucNang("core_CN_QuanLyTaiKhoanKhachHang");
		CN_QuanLyTaiKhoanKhachHang.setDuongDan("pages/nhanvien.jsp");
		CN_QuanLyTaiKhoanKhachHang.setHinhAnh("fa fa-list-ol");
		CN_QuanLyTaiKhoanKhachHang.setTenHienThi("Quản lý tài khoản khách hàng");
		CN_QuanLyTaiKhoanKhachHang.setChucNangCha(CN_QuanLyTaiKhoan);
		daochucnang.saveOrUpdate(CN_QuanLyTaiKhoanKhachHang);
		
		ChucNang CN_ThemTaiKhoanKhachHang = new ChucNang();
		CN_ThemTaiKhoanKhachHang.setMaChucNang("core_CN_ThemTaiKhoanKhachHang");
		CN_ThemTaiKhoanKhachHang.setDuongDan("pages/nhanvien.jsp");
		CN_ThemTaiKhoanKhachHang.setHinhAnh("fa fa-list-ol");
		CN_ThemTaiKhoanKhachHang.setTenHienThi("Thêm tài khoản khách hàng");
		CN_ThemTaiKhoanKhachHang.setChucNangCha(CN_QuanLyTaiKhoan);
		daochucnang.saveOrUpdate(CN_ThemTaiKhoanKhachHang); */
		
		/* ChucNang CN_QuanLyHoaDon = new ChucNang();
		CN_QuanLyHoaDon.setMaChucNang("core_CN_QuanLyHoaDon");
		CN_QuanLyHoaDon.setDuongDan("");
		CN_QuanLyHoaDon.setHinhAnh("fa fa-wrench");
		CN_QuanLyHoaDon.setTenHienThi("Quản lý hóa đơn");
		CN_QuanLyHoaDon.setChucNangCha(null);
		daochucnang.saveOrUpdate(CN_QuanLyHoaDon);
		
		ChucNang CN_QuanLyHoaDon = new ChucNang();
		CN_QuanLyHoaDon.setMaChucNang("core_CN_QuanLyTaiKhoanKhachHang");
		CN_QuanLyHoaDon.setDuongDan("pages/nhanvien.jsp");
		CN_QuanLyHoaDon.setHinhAnh("fa fa-list-ol");
		CN_QuanLyHoaDon.setTenHienThi("Quản lý tài khoản khách hàng");
		CN_QuanLyHoaDon.setChucNangCha(CN_QuanLyTaiKhoan);
		daochucnang.saveOrUpdate(CN_QuanLyTaiKhoanKhachHang); */
		
		/* 		ChucNang CN_QuanLyHoaDon = new ChucNang();
		CN_QuanLyHoaDon.setMaChucNang("core_CN_QuanLyHoaDon");
		CN_QuanLyHoaDon.setDuongDan("");
		CN_QuanLyHoaDon.setHinhAnh("fa fa-wrench");
		CN_QuanLyHoaDon.setTenHienThi("Quản lý hóa đơn");
		CN_QuanLyHoaDon.setChucNangCha(null);
		daochucnang.saveOrUpdate(CN_QuanLyHoaDon); */
		


		
/* 		NhomPhanQuyen nhomPhanQuyenNhanVien = new NhomPhanQuyen();
		nhomPhanQuyenAdmin.setMaNhomPhanQuyen("nhanvien");
		nhomPhanQuyenAdmin.setTenNhomPhanQuyen("NhanVien");
		Set<ChucNang> chs2 = new HashSet<ChucNang>();
		
		NhomPhanQuyen nhomPhanQuyenKhachHang = new NhomPhanQuyen();
		nhomPhanQuyenAdmin.setMaNhomPhanQuyen("khachhang");
		nhomPhanQuyenAdmin.setTenNhomPhanQuyen("KhachHang");
		Set<ChucNang> chs3 = new HashSet<ChucNang>(); */
		
/* 		ChucNang CN_ThemThongTinNhanVien = new ChucNang();
		CN_ThemThongTinNhanVien.setMaChucNang("core_CN_ThemThongTinNhanVien");
		CN_ThemThongTinNhanVien.setDuongDan("pages/nhanvien.jsp");
		CN_ThemThongTinNhanVien.setHinhAnh("fa fa-list-ol");
		CN_ThemThongTinNhanVien.setTenHienThi("Thêm thông tin nhân viên");
		CN_ThemThongTinNhanVien.setChucNangCha(CN_QuanLyThongTinCoBan);
		daochucnang.saveOrUpdate(CN_ThemThongTinNhanVien);
		
		ChucNang CN_ThemThongTinKhachHang = new ChucNang();
		CN_ThemThongTinKhachHang.setMaChucNang("core_CN_ThemThongTinKhachHang");
		CN_ThemThongTinKhachHang.setDuongDan("pages/khachhang.jsp");
		CN_ThemThongTinKhachHang.setHinhAnh("fa fa-list-ol");
		CN_ThemThongTinKhachHang.setTenHienThi("Thêm thông tin khách hàng");
		CN_ThemThongTinKhachHang.setChucNangCha(CN_QuanLyThongTinCoBan);
		daochucnang.saveOrUpdate(CN_ThemThongTinKhachHang);
 */
		
		//phan quyen admin
		ObjectDAO daochucnang = new DAO_ChucNang();
		
		ChucNang CN_QuanLyThongTinCoBan = new ChucNang();
		CN_QuanLyThongTinCoBan.setMaChucNang("core_CN_QuanLyThongTinCoBan");
		CN_QuanLyThongTinCoBan.setDuongDan("");
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
		

		
		ChucNang CN_QuanLyChucNangVaTaiKhoan = new ChucNang();
		CN_QuanLyChucNangVaTaiKhoan.setMaChucNang("core_CN_QuanLyChucNangVaTaiKhoan");
		CN_QuanLyChucNangVaTaiKhoan.setDuongDan("null");
		CN_QuanLyChucNangVaTaiKhoan.setHinhAnh("fa fa-filter");
		CN_QuanLyChucNangVaTaiKhoan.setTenHienThi("Chức năng và tài khoản");
		CN_QuanLyChucNangVaTaiKhoan.setChucNangCha(null);
		daochucnang.saveOrUpdate(CN_QuanLyChucNangVaTaiKhoan);

		ChucNang CN_QuanLyTaiKhoanNhanVien = new ChucNang();
		CN_QuanLyTaiKhoanNhanVien.setMaChucNang("core_CN_QuanLyTaiKhoanNhanVien");
		CN_QuanLyTaiKhoanNhanVien.setDuongDan("pages/taikhoannhanviens.jsp");
		CN_QuanLyTaiKhoanNhanVien.setHinhAnh("fa fa-users");
		CN_QuanLyTaiKhoanNhanVien.setTenHienThi("Quản lý tài khoản nhân viên");
		CN_QuanLyTaiKhoanNhanVien.setChucNangCha(CN_QuanLyChucNangVaTaiKhoan);
		daochucnang.saveOrUpdate(CN_QuanLyTaiKhoanNhanVien);

		ChucNang CN_QuanLyTaiKhoanKhachHang = new ChucNang();
		CN_QuanLyTaiKhoanKhachHang.setMaChucNang("core_CN_QuanLyTaiKhoanKhachHang");
		CN_QuanLyTaiKhoanKhachHang.setDuongDan("pages/taikhoankhachhangs.jsp");
		CN_QuanLyTaiKhoanKhachHang.setHinhAnh("fa fa-users");
		CN_QuanLyTaiKhoanKhachHang.setTenHienThi("Quản lý tài khoản khách hàng");
		CN_QuanLyTaiKhoanKhachHang.setChucNangCha(CN_QuanLyChucNangVaTaiKhoan);
		daochucnang.saveOrUpdate(CN_QuanLyTaiKhoanKhachHang);

		ChucNang CN_QuanLyChucNang = new ChucNang();
		CN_QuanLyChucNang.setMaChucNang("core_QuanLyChucNang");
		CN_QuanLyChucNang.setDuongDan("pages/chucnangs.jsp");
		CN_QuanLyChucNang.setHinhAnh("fa fa-share-alt");
		CN_QuanLyChucNang.setTenHienThi("Quản lý chức năng");
		CN_QuanLyChucNang.setChucNangCha(CN_QuanLyChucNangVaTaiKhoan);
		daochucnang.saveOrUpdate(CN_QuanLyChucNang);

		
		ChucNang CN_QuanLyPhong = new ChucNang();
		CN_QuanLyPhong.setMaChucNang("core_CN_QuanLyPhong");
		CN_QuanLyPhong.setDuongDan("pages/phongs.jsp");
		CN_QuanLyPhong.setHinhAnh("fa fa-shield");
		CN_QuanLyPhong.setTenHienThi("Quản lý phòng");
		CN_QuanLyPhong.setChucNangCha(null);
		daochucnang.saveOrUpdate(CN_QuanLyPhong);
		
		ChucNang CN_QuanLyGiuong = new ChucNang();
		CN_QuanLyGiuong.setMaChucNang("core_CN_QuanLyGiuong");
		CN_QuanLyGiuong.setDuongDan("pages/giuongs.jsp");
		CN_QuanLyGiuong.setHinhAnh("fa fa-shield");
		CN_QuanLyGiuong.setTenHienThi("Quản lý giường");
		CN_QuanLyGiuong.setChucNangCha(null);
		daochucnang.saveOrUpdate(CN_QuanLyGiuong);
		
	/* 	ChucNang CN_QuanLyNhanVien = new ChucNang();
		CN_QuanLyNhanVien.setMaChucNang("core_CN_QuanLyNhanVien");
		CN_QuanLyNhanVien.setDuongDan("pages/nhanviens.jsp");
		CN_QuanLyNhanVien.setHinhAnh("fa fa-shield");
		CN_QuanLyNhanVien.setTenHienThi("Quản lý nhân viên");
		CN_QuanLyNhanVien.setChucNangCha(null);
		daochucnang.saveOrUpdate(CN_QuanLyNhanVien);
		
		ChucNang CN_QuanLyKhachHang = new ChucNang();
		CN_QuanLyKhachHang.setMaChucNang("core_CN_QuanLyKhachHang");
		CN_QuanLyKhachHang.setDuongDan("pages/khachhangs.jsp");
		CN_QuanLyKhachHang.setHinhAnh("fa fa-shield");
		CN_QuanLyKhachHang.setTenHienThi("Quản lý khách hàng");
		CN_QuanLyKhachHang.setChucNangCha(null);
		daochucnang.saveOrUpdate(CN_QuanLyKhachHang); 
		 */
		 
		ChucNang CN_QuanLyPhanQuyen = new ChucNang();
		CN_QuanLyPhanQuyen.setMaChucNang("core_CN_QuanLyPhanQuyen");
		CN_QuanLyPhanQuyen.setDuongDan("pages/nhomphanquyens.jsp");
		CN_QuanLyPhanQuyen.setHinhAnh("fa fa-shield");
		CN_QuanLyPhanQuyen.setTenHienThi("Quản lý phân quyền");
		CN_QuanLyPhanQuyen.setChucNangCha(CN_QuanLyChucNangVaTaiKhoan);
		daochucnang.saveOrUpdate(CN_QuanLyPhanQuyen);
		
		NhomPhanQuyen nhomPhanQuyenAdmin = new NhomPhanQuyen();
		nhomPhanQuyenAdmin.setMaNhomPhanQuyen("admin");
		nhomPhanQuyenAdmin.setTenNhomPhanQuyen("Admin");
		Set<ChucNang> chs1 = new HashSet<ChucNang>();
		
		chs1.add(CN_QuanLyThongTinCoBan);
		chs1.add(CN_QuanLyThongTinKhachHang);
		chs1.add(CN_QuanLyThongTinKhachHang);
 		chs1.add(CN_QuanLyChucNangVaTaiKhoan);
 		chs1.add(CN_QuanLyTaiKhoanNhanVien);
 		chs1.add(CN_QuanLyTaiKhoanKhachHang);
 		chs1.add(CN_QuanLyChucNang);
 		chs1.add(CN_QuanLyPhong);
 		chs1.add(CN_QuanLyGiuong);
 		chs1.add(CN_QuanLyPhanQuyen);
		
		nhomPhanQuyenAdmin.setChucNangs(chs1);
		ObjectDAO daonpq = new DAO_NhomPhanQuyen();
		daonpq.saveOrUpdate(nhomPhanQuyenAdmin);
				
		
		TaiKhoanNhanVien tk = new TaiKhoanNhanVien();
		tk.setMaDangNhap(admin.getEmail());
		tk.setEmail(admin.getEmail());
		tk.setMatKhau(Util_MD5.md5("1"));
		tk.setNhanVien(admin);
		tk.setNhomPhanQuyen(nhomPhanQuyenAdmin);
		ObjectDAO dao3 = new DAO_TaiKhoan();
		dao3.saveOrUpdate(tk);
		
		
	%>

</body>
</html>