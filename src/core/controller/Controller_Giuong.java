package core.controller;

import core.model.Giuong;
import core.model.Phong;
import core.model.NhanVien;
import core.modelDAO.DAO_Giuong;
import core.modelDAO.DAO_Phong;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import core.dao.ObjectDAO;

public class Controller_Giuong extends Giuong implements ZEController{
	ObjectDAO dao = new DAO_Giuong();

	String timKiemTheo;
	String tuKhoa;
	String duongDanTrang = "pages/giuongs.jsp";
	String duongDanTrangView = "pages/giuong.jsp";
	String tenCotTimDoiTuong = "maGiuong";
	String maObj;
	String maPhong;
	
	
	
	File excel_myFile;
	String excel_myFileContentType;
	String excel_myFileFileName;
	String excel_myFileName;
	String myFolder_core;
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
	 * @return the maPhong
	 */
	public String getMaPhong() {
		return maPhong;
	}
	/**
	 * @param maPhong the maPhong to set
	 */
	public void setMaPhong(String maPhong) {
		this.maPhong = maPhong;
	}
	
	public Phong getPhong(){
		ObjectDAO dao_Phong = new DAO_Phong();
		ArrayList<Phong> list_phong = dao_Phong.listByColumns("maPhong", getMaPhong());
		if(list_phong.size()>0)
			return list_phong.get(0);
		else
			return null;
	}
	
	
	/**
	 * @return the excel_myFile
	 */
	public File getExcel_myFile() {
		return excel_myFile;
	}
	/**
	 * @param excel_myFile the excel_myFile to set
	 */
	public void setExcel_myFile(File excel_myFile) {
		this.excel_myFile = excel_myFile;
	}
	/**
	 * @return the excel_myFileContentType
	 */
	public String getExcel_myFileContentType() {
		return excel_myFileContentType;
	}
	/**
	 * @param excel_myFileContentType the excel_myFileContentType to set
	 */
	public void setExcel_myFileContentType(String excel_myFileContentType) {
		this.excel_myFileContentType = excel_myFileContentType;
	}
	/**
	 * @return the excel_myFileFileName
	 */
	public String getExcel_myFileFileName() {
		return excel_myFileFileName;
	}
	/**
	 * @param excel_myFileFileName the excel_myFileFileName to set
	 */
	public void setExcel_myFileFileName(String excel_myFileFileName) {
		this.excel_myFileFileName = excel_myFileFileName;
	}
	/**
	 * @return the excel_myFileName
	 */
	public String getExcel_myFileName() {
		return excel_myFileName;
	}
	/**
	 * @param excel_myFileName the excel_myFileName to set
	 */
	public void setExcel_myFileName(String excel_myFileName) {
		this.excel_myFileName = excel_myFileName;
	}
	/**
	 * @return the myFolder_core
	 */
	public String getMyFolder_core() {
		return myFolder_core;
	}
	/**
	 * @param myFolder_core the myFolder_core to set
	 */
	public void setMyFolder_core(String myFolder_core) {
		this.myFolder_core = myFolder_core;
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

		ArrayList<Giuong> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
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
		ArrayList<Giuong> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
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

		Giuong obj = new Giuong();
		obj.maGiuong = getMaGiuong();
		obj.trangThai = getTrangThai();
		obj.phong = getPhong();
		
		
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
		Giuong obj = new Giuong();
		obj.setMaGiuong(maobj);
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
		ArrayList<Giuong> arr = dao.listByColumnLike(column, key);
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
