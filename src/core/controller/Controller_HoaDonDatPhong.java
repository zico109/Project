package core.controller;

import core.model.HoaDonDatPhong;
import core.model.KhachHang;
import core.model.LoaiPhong;
import core.model.NhanVien;
import core.modelDAO.DAO_HoaDonDatPhong;
import core.modelDAO.DAO_NhanVien;
import core.modelDAO.DAO_KhachHang;
import core.modelDAO.DAO_LoaiPhong;
import core.utils.Util_Date;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import core.dao.ObjectDAO;

public class Controller_HoaDonDatPhong extends HoaDonDatPhong implements ZEController {
	ObjectDAO dao = new DAO_HoaDonDatPhong();

	String timKiemTheo;
	String tuKhoa;
	String duongDanTrang = "pages/hoadondatphongs.jsp";
	String duongDanTrangView = "pages/hoadondatphong.jsp";
	String tenCotTimDoiTuong = "soHD";
	String maObj;
	String s_ngayDat;
	String s_tuNgay;
	String s_denNgay;
	
	String maKH;
	String maNV;
	String maLP;
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
	 * @return the s_ngayDat
	 */
	public String getS_ngayDat() {
		return s_ngayDat;
	}
	/**
	 * @param s_ngayDat the s_ngayDat to set
	 */
	public void setS_ngayDat(String s_ngayDat) {
		this.s_ngayDat = s_ngayDat;
	}
	
	public Date getNgayDat() {
		return Util_Date.stringToDate(getS_ngayDat());
	}
	/**
	 * @return the s_tuNgay
	 */
	public String getS_tuNgay() {
		return s_tuNgay;
	}
	/**
	 * @param s_tuNgay the s_tuNgay to set
	 */
	public void setS_tuNgay(String s_tuNgay) {
		this.s_tuNgay = s_tuNgay;
	}
	public Date getTuNgay() {
		return Util_Date.stringToDate(getS_tuNgay());
	}
	/**
	 * @return the s_denNgay
	 */
	public String getS_denNgay() {
		return s_denNgay;
	}
	/**
	 * @param s_denNgay the s_denNgay to set
	 */
	public void setS_denNgay(String s_denNgay) {
		this.s_denNgay = s_denNgay;
	}
	public Date getDenNgay() {
		return Util_Date.stringToDate(getS_denNgay());
	}
	/**
	 * @return the maKH
	 */
	public String getMaKH() {
		return maKH;
	}
	/**
	 * @param maKH the maKH to set
	 */
	public void setMaKH(String maKH) {
		this.maKH = maKH;
	}
	
	public KhachHang getKhachHang() {
		ObjectDAO dao_KhachHang = new DAO_KhachHang();
		ArrayList<KhachHang> list_khachHang = dao_KhachHang.listByColumns("maKH", getMaKH());
		if(list_khachHang.size()>0)
			return list_khachHang.get(0);
		else
			return null;
	}
	
	/**
	 * @return the maNV
	 */
	public String getMaNV() {
		return maNV;
	}
	
	/**
	 * @param maNV the maNV to set
	 */
	public void setMaNV(String maNV) {
		this.maNV = maNV;
	}
	
	public NhanVien getNhanVien() {
		ObjectDAO dao_NhanVien = new DAO_NhanVien();
		ArrayList<NhanVien> list_nhanVien = dao_NhanVien.listByColumns("maNV", getMaNV());
		if(list_nhanVien.size()>0)
			return list_nhanVien.get(0);
		else
			return null;
	}
	
	/**
	 * @return the maLP
	 */
	public String getMaLP() {
		return maLP;
	}
	/**
	 * @param maLP the maLP to set
	 */
	public void setMaLP(String maLP) {
		this.maLP = maLP;
	}
	
	public LoaiPhong getLoaiPhong() {
		ObjectDAO dao_LoaiPhong = new DAO_LoaiPhong();
		ArrayList<LoaiPhong> list_loaiPhong = dao_LoaiPhong.listByColumns("maLP", getMaLP());
		if(list_loaiPhong.size()>0)
			return list_loaiPhong.get(0);
		else
			return null;
	}
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
	@Override
	public String viewDetail() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();

		String maobj = request.getParameter("maobj");

		session.setAttribute("mode", "viewDetail");

		ArrayList<HoaDonDatPhong> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
		if (arr.size() > 0) {
			session.setAttribute("obj", arr.get(0));
			session.setAttribute("p", duongDanTrangView);
			return "SUCCESS";
		} else {
			return "FAIL";
		}
	}
	@Override
	public String viewDetailAndEdit() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("msg", null);

		String maobj = request.getParameter("maobj");
		session.setAttribute("mode", "viewDetailAndEdit");
		ArrayList<HoaDonDatPhong> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
		if (arr.size() > 0) {
			session.setAttribute("obj", arr.get(0));
			session.setAttribute("p", duongDanTrangView);
			return "SUCCESS";
		} else {
			return "FAIL";
		}
	}
	@Override
	public String saveOrUpdate() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();

		HoaDonDatPhong obj = new HoaDonDatPhong();
		obj.soHD = getSoHD();
		obj.trangThaiThanhToan = getTrangThaiThanhToan();
		obj.ngayDat = getNgayDat();
		obj.tuNgay = getTuNgay();
		obj.denNgay = getDenNgay();
		obj.thanhTien = getThanhTien();
		obj.loaiPhong = getLoaiPhong();
		obj.nhanVien = getNhanVien();
		obj.khachHang = getKhachHang();
		if (dao.saveOrUpdate(obj)) {
			session.setAttribute("msg", "Cập nhật dữ liệu thành công");
			session.setAttribute("obj", obj);
			session.setAttribute("mode", "viewDetailAndEdit");
			session.setAttribute("p", duongDanTrangView);
			return "SUCCESS";
		} else {
			return "FAIL";
		}
	}
	@Override
	public String delete() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String maobj = request.getParameter("maobj");
		HoaDonDatPhong obj = new HoaDonDatPhong();
		obj.setSoHD(maobj);
		if (dao.delete(obj)) {
			session.setAttribute("msg", "Xóa dữ liệu thành công");
			session.setAttribute("p", duongDanTrang);
			return "SUCCESS";
		} else {
			return "FAIL";
		}
	}
	@Override
	public String search() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String column = getTimKiemTheo();
		String key = getTuKhoa();
		ArrayList<HoaDonDatPhong> arr = dao.listByColumnLike(column, key);
		session.setAttribute("arr", arr);
		session.setAttribute("checkTimKiem", "true");
		session.setAttribute("p", duongDanTrang);
		return "SUCCESS";
	}
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
	@Override
	public String importData() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String exportData() throws IOException {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	
	
}
