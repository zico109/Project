package core.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import core.dao.ObjectDAO;
import core.model.HoaDonDatPhong;
import core.model.KhachHang;
import core.model.LoaiPhong;
import core.model.Phong;
import core.model.ThongTinDatPhong;
import core.modelDAO.DAO_HoaDonDatPhong;
import core.modelDAO.DAO_KhachHang;
import core.modelDAO.DAO_LoaiPhong;
import core.modelDAO.DAO_Phong;
import core.utils.Util_Date;

public class Controller_ThongTinDatPhong extends ThongTinDatPhong implements ZEController {
	ObjectDAO dao = new DAO_HoaDonDatPhong();

	String timKiemTheo;
	String tuKhoa;
	String duongDanTrang = "pages/thongtindatphong.jsp";
	String duongDanTrangView = "pages/thongtindatphongs.jsp";
	String tenCotTimDoiTuong = "maThongTinDatPhong";
	String maObj;
	String s_ngayDen;
	String s_ngayDi;

	String maKH;
	String maLP;
	String maPhong;
	String soHD;

	/**
	 * @return the timKiemTheo
	 */
	public String getTimKiemTheo() {
		return timKiemTheo;
	}

	/**
	 * @param timKiemTheo
	 *            the timKiemTheo to set
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
	 * @param tuKhoa
	 *            the tuKhoa to set
	 */
	public void setTuKhoa(String tuKhoa) {
		this.tuKhoa = tuKhoa;
	}

	/**
	 * @return the duongDanTrang
	 */
	public String getDuongDanTrang() {
		return duongDanTrang;
	}

	/**
	 * @param duongDanTrang
	 *            the duongDanTrang to set
	 */
	public void setDuongDanTrang(String duongDanTrang) {
		this.duongDanTrang = duongDanTrang;
	}

	/**
	 * @return the duongDanTrangView
	 */
	public String getDuongDanTrangView() {
		return duongDanTrangView;
	}

	/**
	 * @param duongDanTrangView
	 *            the duongDanTrangView to set
	 */
	public void setDuongDanTrangView(String duongDanTrangView) {
		this.duongDanTrangView = duongDanTrangView;
	}

	/**
	 * @return the tenCotTimDoiTuong
	 */
	public String getTenCotTimDoiTuong() {
		return tenCotTimDoiTuong;
	}

	/**
	 * @param tenCotTimDoiTuong
	 *            the tenCotTimDoiTuong to set
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
	 * @param maObj
	 *            the maObj to set
	 */
	public void setMaObj(String maObj) {
		this.maObj = maObj;
	}


	/**
	 * @return the s_ngayDen
	 */
	public String getS_ngayDen() {
		return s_ngayDen;
	}

	/**
	 * @param s_ngayDen the s_ngayDen to set
	 */
	public void setS_ngayDen(String s_ngayDen) {
		this.s_ngayDen = s_ngayDen;
	}
	
	public Date getNgayDen() {
	return Util_Date.stringToDate(getS_ngayDen());
}

	/**
	 * @return the s_ngayDi
	 */
	public String getS_ngayDi() {
		return s_ngayDi;
	}

	/**
	 * @param s_ngayDi the s_ngayDi to set
	 */
	public void setS_ngayDi(String s_ngayDi) {
		this.s_ngayDi = s_ngayDi;
	}

	public Date getNgayDi() {
	return Util_Date.stringToDate(getS_ngayDi());
}

	/**
	 * @return the maKH
	 */
	public String getMaKH() {
		return maKH;
	}

	/**
	 * @param maKH
	 *            the maKH to set
	 */
	public void setMaKH(String maKH) {
		this.maKH = maKH;
	}

	public KhachHang getKhachHang() {
		ObjectDAO dao_KhachHang = new DAO_KhachHang();
		ArrayList<KhachHang> list_khachHang = dao_KhachHang.listByColumns("maKH", getMaKH());
		if (list_khachHang.size() > 0)
			return list_khachHang.get(0);
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
	 * @param maLP
	 *            the maLP to set
	 */
	public void setMaLP(String maLP) {
		this.maLP = maLP;
	}

	public LoaiPhong getLoaiPhong() {
		ObjectDAO dao_LoaiPhong = new DAO_LoaiPhong();
		ArrayList<LoaiPhong> list_loaiPhong = dao_LoaiPhong.listByColumns("maLP", getMaLP());
		if (list_loaiPhong.size() > 0)
			return list_loaiPhong.get(0);
		else
			return null;
	}

	/**
	 * @return the maPhong
	 */
	public String getMaPhong() {
		return maPhong;
	}

	/**
	 * @param maPhong
	 *            the maPhong to set
	 */
	public void setMaPhong(String maPhong) {
		this.maPhong = maPhong;
	}

	public Phong getPhong() {
		ObjectDAO dao_Phong = new DAO_Phong();
		ArrayList<Phong> list_phong = dao_Phong.listByColumns("maPhong", getMaPhong());
		if (list_phong.size() > 0)
			return list_phong.get(0);
		else
			return null;
	}

	/**
	 * @return the soHD
	 */
	public String getSoHD() {
		return soHD;
	}

	/**
	 * @param soHD
	 *            the soHD to set
	 */
	public void setSoHD(String soHD) {
		this.soHD = soHD;
	}

	public HoaDonDatPhong getHoaDonDatPhong() {
		ObjectDAO dao_HoaDonDatPhong = new DAO_HoaDonDatPhong();
		ArrayList<HoaDonDatPhong> list_hoaDonDatPhong = dao_HoaDonDatPhong.listByColumns("soHD", getSoHD());
		if (list_hoaDonDatPhong.size() > 0)
			return list_hoaDonDatPhong.get(0);
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

		ArrayList<ThongTinDatPhong> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
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
		ArrayList<ThongTinDatPhong> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
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

		ThongTinDatPhong obj = new ThongTinDatPhong();
		obj.maThongTinDatPhong = getMaThongTinDatPhong();
		 obj.ngayDen = getNgayDen();
		 obj.ngayDi = getNgayDi();
		obj.loaiPhong = getLoaiPhong();
		obj.khachHang = getKhachHang();
//		obj.hoaDonDatPhong = getHoaDonDatPhong();
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
		ThongTinDatPhong obj = new ThongTinDatPhong();
		obj.setMaThongTinDatPhong(maobj);
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
		ArrayList<ThongTinDatPhong> arr = dao.listByColumnLike(column, key);
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
