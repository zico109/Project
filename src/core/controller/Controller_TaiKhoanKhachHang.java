package core.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import core.dao.ObjectDAO;
import core.model.NhomPhanQuyen;
import core.model.TaiKhoanKhachHang;
import core.modelDAO.DAO_NhomPhanQuyen;
import core.modelDAO.DAO_TaiKhoanKhachHang;
import core.utils.Util_MD5;

public class Controller_TaiKhoanKhachHang extends TaiKhoanKhachHang implements ZEController{
	ObjectDAO dao = new DAO_TaiKhoanKhachHang();
	
	
	String timKiemTheo;
	String tuKhoa;
	String duongDanTrang = "pages/taikhoankhachhangs.jsp";
	String duongDanTrangView = "pages/taikhoankhachhang.jsp";
	String duongDanTrangViewDK = "pages/login.jsp";
	String tenCotTimDoiTuong = "maKhachHang";
	String maObj;
	String maKhachHang;
	String s_ngayTao;
	String maNhomPhanQuyen;
	String matKhauHienTai;
	/**
	 * @return the timKiemTheo
	 */
	public String getTimKiemTheo() {
		return timKiemTheo;
	}
	/**
	 * @param timKiemTheo the timKiemTheo to set
	 */
	public void setTimKiemTheo(String timKiemTheo) {
		this.timKiemTheo = timKiemTheo;
	}
	/**
	 * @return the tuKhoa
	 */
	public String getTuKhoa() {
		return tuKhoa;
	}
	/**
	 * @param tuKhoa the tuKhoa to set
	 */
	public void setTuKhoa(String tuKhoa) {
		this.tuKhoa = tuKhoa;
	}
	/**
	 * @return the tenCotTimDoiTuong
	 */
	public String getTenCotTimDoiTuong() {
		return tenCotTimDoiTuong;
	}
	/**
	 * @param tenCotTimDoiTuong the tenCotTimDoiTuong to set
	 */
	public void setTenCotTimDoiTuong(String tenCotTimDoiTuong) {
		this.tenCotTimDoiTuong = tenCotTimDoiTuong;
	}
	/**
	 * @return the maObj
	 */
	public String getMaObj() {
		return maObj;
	}
	/**
	 * @param maObj the maObj to set
	 */
	public void setMaObj(String maObj) {
		this.maObj = maObj;
	}
	/**
	 * @return the maKhachHang
	 */
	public String getMaKhachHang() {
		return maKhachHang;
	}
	/**
	 * @param maKhachHang the maKhachHang to set
	 */
	public void setMaKhachHang(String maKhachHang) {
		this.maKhachHang = maKhachHang;
	}
	/**
	 * @return the s_ngayTao
	 */
	public String getS_ngayTao() {
		return s_ngayTao;
	}
	/**
	 * @param s_ngayTao the s_ngayTao to set
	 */
	public void setS_ngayTao(String s_ngayTao) {
		this.s_ngayTao = s_ngayTao;
	}
	/**
	 * @return the maNhomPhanQuyen
	 */
	public String getMaNhomPhanQuyen() {
		return maNhomPhanQuyen;
	}
	/**
	 * @param maNhomPhanQuyen the maNhomPhanQuyen to set
	 */
	public void setMaNhomPhanQuyen(String maNhomPhanQuyen) {
		this.maNhomPhanQuyen = maNhomPhanQuyen;
	}
	
	public NhomPhanQuyen getNhomPhanQuyen() {
		ObjectDAO dao_nhomPhanQuyen = new DAO_NhomPhanQuyen();
		ArrayList<NhomPhanQuyen> list = dao_nhomPhanQuyen.listByColumns("maNhomPhanQuyen", getMaNhomPhanQuyen());
		if (list.size() > 0)
			return list.get(0);
		else
			return null;
	}
	
	public String getKiemTraMatKhau() {
		ArrayList<TaiKhoanKhachHang> list = dao.listByColumns("maDangNhap", getMaDangNhap());
		if (list.size() > 0)
			return list.get(0).getMatKhau();
		else
			return "";
	}

	/**
	 * @return the matKhauHienTai
	 */
	public String getMatKhauHienTai() {
		return matKhauHienTai;
	}
	/**
	 * @param matKhauHienTai the matKhauHienTai to set
	 */
	public void setMatKhauHienTai(String matKhauHienTai) {
		this.matKhauHienTai = matKhauHienTai;
	}
	/* (non-Javadoc)
	 * @see core.controller.ZEController#addNew()
	 */
	@Override
	public String addNew() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("mode", "addNew");
		session.setAttribute("p", duongDanTrangView);
		session.setAttribute("msg", null);
		session.setAttribute("obj", null);
		return "SUCCESS";
	}
	/* (non-Javadoc)
	 * @see core.controller.ZEController#viewDetail()
	 */
	@Override
	public String viewDetail() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();

		String maobj = request.getParameter("maobj");

		session.setAttribute("mode", "viewDetail");

		ArrayList<TaiKhoanKhachHang> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
		if (arr.size() > 0) {
			session.setAttribute("obj", arr.get(0));
			session.setAttribute("p", duongDanTrangView);
			return "SUCCESS";
		} else {
			return "FAIL";
		}
	}
	/* (non-Javadoc)
	 * @see core.controller.ZEController#viewDetailAndEdit()
	 */
	@Override
	public String viewDetailAndEdit() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("msg", null);

		String maobj = request.getParameter("maobj");
		session.setAttribute("mode", "viewDetailAndEdit");
		ArrayList<TaiKhoanKhachHang> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
		if (arr.size() > 0) {
			session.setAttribute("obj", arr.get(0));
			session.setAttribute("p", duongDanTrangView);
			return "SUCCESS";
		} else {
			return "FAIL";
		}
	}
	/* (non-Javadoc)
	 * @see core.controller.ZEController#saveOrUpdate()
	 */
	@Override
	public String saveOrUpdate() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		TaiKhoanKhachHang obj = new TaiKhoanKhachHang();
		obj.anhDaiDien = getAnhDaiDien();
		obj.maDangNhap = getMaDangNhap();
		if (!getMatKhau().equals(getKiemTraMatKhau())) {
			obj.matKhau = Util_MD5.md5(getMatKhau());
		} else {
			obj.matKhau = getKiemTraMatKhau();
		}
		obj.ngayTao = getNgayTao();
		obj.ngayCapNhatMatKhau = new Date();
		obj.trangThaiHoatDong = isTrangThaiHoatDong();
		obj.email = getEmail();
		obj.hoVaTen = getHoVaTen();
		obj.ghiChu = getGhiChu();
		/*obj.thoiGianCapNhat = new Date();*/
		obj.nhomPhanQuyen = getNhomPhanQuyen();
		obj.khachHang = getKhachHang();
		if (dao.saveOrUpdate(obj)) {
			session.setAttribute("msg", "Cập nhật dữ liệu thành công.");
			session.setAttribute("obj", obj);
			session.setAttribute("mode", "viewDetailAndEdit");
			session.setAttribute("p", duongDanTrangView);
			return "SUCCESS";
		} else {
			return "FAIL";
		}
	}
	

	public String saveOrUpdateDK() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		TaiKhoanKhachHang obj = new TaiKhoanKhachHang();
		obj.anhDaiDien = getAnhDaiDien();
		obj.maDangNhap = getMaDangNhap();
		if (!getMatKhau().equals(getKiemTraMatKhau())) {
			obj.matKhau = Util_MD5.md5(getMatKhau());
		} else {
			obj.matKhau = getKiemTraMatKhau();
		}
		obj.ngayTao = getNgayTao();
		obj.ngayCapNhatMatKhau = new Date();
		obj.trangThaiHoatDong = isTrangThaiHoatDong();
		obj.email = getEmail();
		obj.hoVaTen = getHoVaTen();
		obj.ghiChu = getGhiChu();
		/*obj.thoiGianCapNhat = new Date();*/
		obj.nhomPhanQuyen = getNhomPhanQuyen();
		obj.khachHang = getKhachHang();
		if (dao.saveOrUpdate(obj)) {
			session.setAttribute("msg", "Cập nhật dữ liệu thành công.");
			session.setAttribute("obj", obj);
			session.setAttribute("mode", "viewDetailAndEdit");
			session.setAttribute("p", duongDanTrangViewDK);
			return "SUCCESS";
		} else {
			return "FAIL";
		}
	}
	
	
	/* (non-Javadoc)
	 * @see core.controller.ZEController#delete()
	 */
	@Override
	public String delete() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String maobj = request.getParameter("maobj");
		TaiKhoanKhachHang obj = new TaiKhoanKhachHang();
		obj.setMaDangNhap(maobj);
		if (dao.delete(obj)) {
			session.setAttribute("msg", "Xóa dữ liệu thành công.");
			session.setAttribute("p", duongDanTrang);
			return "SUCCESS";
		} else {
			return "FAIL";
		}
	}
	/* (non-Javadoc)
	 * @see core.controller.ZEController#search()
	 */
	@Override
	public String search() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String column = getTimKiemTheo();
		String key = getTuKhoa();
		ArrayList<TaiKhoanKhachHang> arr = dao.listByColumnLike(column, key);
		session.setAttribute("arr", arr);
		session.setAttribute("checkTimKiem", "true");
		session.setAttribute("p", duongDanTrang);
		return "SUCCESS";
	}
	/* (non-Javadoc)
	 * @see core.controller.ZEController#refresh()
	 */
	@Override
	public String refresh() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("arr", null);
		session.setAttribute("msg", null);
		session.setAttribute("checkTimKiem", null);
		session.setAttribute("p", duongDanTrang);
		return "SUCCESS";
	}
	/* (non-Javadoc)
	 * @see core.controller.ZEController#importData()
	 */
	@Override
	public String importData() {
		// TODO Auto-generated method stub
		return null;
	}
	/* (non-Javadoc)
	 * @see core.controller.ZEController#exportData()
	 */
	@Override
	public String exportData() throws IOException {
		// TODO Auto-generated method stub
		return null;
	}
	
	public String doiMatKhau() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String maDangNhap = session.getAttribute("maDangNhap").toString();
		ObjectDAO<TaiKhoanKhachHang> dao_TaiKhoanSinhVien = new DAO_TaiKhoanKhachHang();
		ArrayList<TaiKhoanKhachHang> list_TaiKhoanSinhVien = dao_TaiKhoanSinhVien.listByColumns("maDangNhap",
				maDangNhap);
		TaiKhoanKhachHang taiKhoanSinhVien = list_TaiKhoanSinhVien.get(0);
		String matKhauHienTai = taiKhoanSinhVien.getMatKhau();
		if (matKhauHienTai.equals(Util_MD5.md5(getMatKhauHienTai()))) {
			taiKhoanSinhVien.setMatKhau(Util_MD5.md5(getMatKhau()));
			if (dao.saveOrUpdate(taiKhoanSinhVien)) {
				session.setAttribute("msg", "Đổi mật khẩu thành công");
				return "SUCCESS";
			}
		} else {
			session.setAttribute("msg", "Đổi mật khẩu thất bại");
			return "FAIL";
		}
		return "FAIL";
	}
	
	
	
	

}
