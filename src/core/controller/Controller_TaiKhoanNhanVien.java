package core.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import core.model.TaiKhoanNhanVien;
import core.dao.ObjectDAO;
import core.model.NhomPhanQuyen;
import core.modelDAO.DAO_NhomPhanQuyen;
import core.modelDAO.DAO_TaiKhoanNhanVien;
import core.utils.Util_MD5;;

public class Controller_TaiKhoanNhanVien extends TaiKhoanNhanVien implements ZEController{
	ObjectDAO dao = new DAO_TaiKhoanNhanVien();
	String timKiemTheo;
	String tuKhoa;
	String duongDanTrang = "pages/taikhoannhanviens.jsp";
	String duongDanTrangView = "pages/taikhoannhanvien.jsp";
	String tenCotTimDoiTuong = "maDangNhap";
	String maObj;
	String maNhanVien;
	String s_ngayTao;
	String s_ngayCapNhatMatKhau;
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
	 * @return the maNhanVien
	 */
	public String getMaNhanVien() {
		return maNhanVien;
	}
	/**
	 * @param maNhanVien the maNhanVien to set
	 */
	public void setMaNhanVien(String maNhanVien) {
		this.maNhanVien = maNhanVien;
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
	 * @return the s_ngayCapNhatMatKhau
	 */
	public String getS_ngayCapNhatMatKhau() {
		return s_ngayCapNhatMatKhau;
	}
	/**
	 * @param s_ngayCapNhatMatKhau the s_ngayCapNhatMatKhau to set
	 */
	public void setS_ngayCapNhatMatKhau(String s_ngayCapNhatMatKhau) {
		this.s_ngayCapNhatMatKhau = s_ngayCapNhatMatKhau;
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
		ArrayList<TaiKhoanNhanVien> list = dao.listByColumns("maDangNhap", getMaDangNhap());
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

		ArrayList<TaiKhoanNhanVien> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
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
		ArrayList<TaiKhoanNhanVien> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
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
		TaiKhoanNhanVien obj = new TaiKhoanNhanVien();
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
/*		obj.thoiGianCapNhat = new Date();*/
		obj.nhomPhanQuyen = getNhomPhanQuyen();
		obj.nhanVien = getNhanVien();
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
	/* (non-Javadoc)
	 * @see core.controller.ZEController#delete()
	 */
	@Override
	public String delete() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String maobj = request.getParameter("maobj");
		TaiKhoanNhanVien obj = new TaiKhoanNhanVien();
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
		ArrayList<TaiKhoanNhanVien> arr = dao.listByColumnLike(column, key);
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
		ObjectDAO<TaiKhoanNhanVien> dao_TaiKhoanNhanVien = new DAO_TaiKhoanNhanVien();
		ArrayList<TaiKhoanNhanVien> list_TaiKhoanNhanVien = dao_TaiKhoanNhanVien.listByColumns("maDangNhap",
				maDangNhap);
		TaiKhoanNhanVien taiKhoanNhanVien = list_TaiKhoanNhanVien.get(0);
		String matKhauHienTai = taiKhoanNhanVien.getMatKhau();
		if (matKhauHienTai.equals(Util_MD5.md5(getMatKhauHienTai()))) {
			taiKhoanNhanVien.setMatKhau(Util_MD5.md5(getMatKhau()));
			if (dao.saveOrUpdate(taiKhoanNhanVien)) {
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
