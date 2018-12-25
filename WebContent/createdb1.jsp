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
		
		LoaiPhong loaiphong = new LoaiPhong();
		loaiphong.setMaLP("PNT001");
		loaiphong.setTenLP("Phòng nam thường");
		loaiphong.setGiaLP(1000000);
		loaiphong.setTienNghi("wifi");
		ObjectDAO dao3 = new DAO_LoaiPhong();
		dao3.saveOrUpdate(loaiphong);

		Phong phong = new Phong();
		phong.setMaPhong("P001");
		phong.setTenPhong("Phòng nam 1");
		phong.setSoLuongNguoi("10 người");
		phong.setTrangThai("còn chỗ");
		phong.setLoaiPhong(loaiphong);
		ObjectDAO dao4 = new DAO_Phong();
		dao4.saveOrUpdate(phong);

		Giuong giuong = new Giuong();
		giuong.setMaGiuong("G001");
		giuong.setTrangThai("Trống");
		giuong.setPhong(phong);
		ObjectDAO dao5 = new DAO_Giuong();
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

		nhomPhanQuyennv.setChucNangs(chs2);
		ObjectDAO daonpqnv = new DAO_NhomPhanQuyen();
		daonpqnv.saveOrUpdate(nhomPhanQuyennv);

		// 	// thanh vien

		// 			NhomPhanQuyen nhomPhanQuyentv = new NhomPhanQuyen();
		// 			nhomPhanQuyentv.setMaNhomPhanQuyen("thanhvien");
		// 			nhomPhanQuyentv.setTenNhomPhanQuyen("Thành viên");
		// 			Set<ChucNang> chs3 = new HashSet<ChucNang>();

		// 			chs3.add(CN_QuanLyThanhVien);
		// 			chs3.add(CN_QuanLyPhieuGiamSatTV);

		// 			chs3.add(CN_QuanLyHistory);
		// 			chs3.add(CN_QuanLyLichSuTap);

		// 			nhomPhanQuyentv.setChucNangs(chs3);
		// 			ObjectDAO daonpqtv = new DAO_NhomPhanQuyen();
		// 			daonpqtv.saveOrUpdate(nhomPhanQuyentv);

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
		// // // tk thanh vien		
		//	 		TaiKhoanThanhVien tktv = new TaiKhoanThanhVien();
		//	 		tktv.setMaDangNhap(tv.getEmail());
		//	 		tktv.setEmail(tv.getEmail());
		//	 		tktv.setMatKhau(Util_MD5.md5("123456"));
		//	 		tktv.setThanhVien(tv);
		//	 		tktv.setNhomPhanQuyen(nhomPhanQuyentv);
		//	 		ObjectDAO daotv = new DAO_TaiKhoan();
		//	 		daotv.saveOrUpdate(tktv);

		//end
	%>

</body>
</html>