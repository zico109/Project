package core.controller;

import core.dao.ObjectDAO;
import core.model.NhanVien;
import core.modelDAO.DAO_NhanVien;
import core.utils.Util_Date;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.struts2.ServletActionContext;

import antlr.Utils;


public class Controller_NhanVien extends NhanVien implements ZEController{
	ObjectDAO dao = new DAO_NhanVien();
	
	String timKiemTheo;
	String tuKhoa;
	String duongDanTrang = "pages/nhanviens.jsp";
	String duongDanTrangView = "pages/nhanvien.jsp";
	String tenCotTimDoiTuong = "maNV";
	String maObj;
	String s_ngaySinh;
	String s_ngayTuyenDung;
	
	
	File excel_myFile;
	String excel_myFileContentType;
	String excel_myFileFileName;
	String excel_myFileName;
	String myFolder_core;
	
	
	
	
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
	 * @return the s_ngaySinh
	 */
	public String getS_ngaySinh() {
		return s_ngaySinh;
	}
	/**
	 * @param s_ngaySinh the s_ngaySinh to set
	 */
	public void setS_ngaySinh(String s_ngaySinh) {
		this.s_ngaySinh = s_ngaySinh;
	}
	/**
	 * @return the s_ngayTuyenDung
	 */
	public String getS_ngayTuyenDung() {
		return s_ngayTuyenDung;
	}
	/**
	 * @param s_ngayTuyenDung the s_ngayTuyenDung to set
	 */
	public void setS_ngayTuyenDung(String s_ngayTuyenDung) {
		this.s_ngayTuyenDung = s_ngayTuyenDung;
	}

	public Date getNgaySinh(){
		return Util_Date.stringToDate(getS_ngaySinh());
	}
	
	public Date getNgayTuyenDung(){
		return Util_Date.stringToDate(getS_ngayTuyenDung());
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

		ArrayList<NhanVien> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
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
		ArrayList<NhanVien> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
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

		NhanVien obj = new NhanVien();
		obj.maNV = getMaNV();
		obj.hoVaTenNV = getHoVaTenNV();
		obj.cmnd = getCmnd();
		obj.diaChi = getDiaChi();
		obj.queQuan = getQueQuan();
		obj.danToc = getDanToc();
		obj.gioiTinh = getGioiTinh();
		obj.ngaySinh = getNgaySinh();
		obj.sdt = getSdt();
		obj.email = getEmail();
		obj.chucVu = getChucVu();
		obj.ngayTuyenDung = getNgayTuyenDung();
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
		NhanVien obj = new NhanVien();
		obj.setMaNV(maobj);
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
		ArrayList<NhanVien> arr = dao.listByColumnLike(column, key);
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
		/*HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		try {
			String s = "";
			if (!excel_myFileName.equals("")) {
				if (excel_myFile != null) {
					excel_myFileName = getHoVaTenNV() + excel_myFileFileName.substring(excel_myFileFileName.lastIndexOf("."));
					System.out.println("123 "+excel_myFileName);
					File destFile = new File(myFolder_core, excel_myFileName);
					s = destFile.toString();
					FileUtils.copyFile(excel_myFile, destFile);
					System.out.println(destFile.toString());

				}
				FileInputStream inputStream = new FileInputStream(new File(s));
				// Ä�á»‘i tÆ°á»£ng workbook cho file XSL.
				HSSFWorkbook workbook = new HSSFWorkbook(inputStream);
				// Láº¥y ra sheet Ä‘áº§u tiÃªn tá»« workbook
				HSSFSheet sheet = workbook.getSheetAt(0);
				DAO_NhanVien objDAO = new DAO_NhanVien();
				NhanVien obj = new NhanVien();

				String msg = "";
				String kq = "";

				for (int i = 1; i <= sheet.getLastRowNum(); i++) {
					Row r = sheet.getRow(i);

					Cell cell_maNV = r.getCell(0);
					String maNV = cell_maNV.toString();
					
					Cell cell_hoVaTenNV = r.getCell(1);
					String hoVaTenNV = "";
					if (cell_hoVaTenNV != null)
						hoVaTenNV = cell_hoVaTenNV.toString();

					Cell cell_cmnd = r.getCell(2);
					String cmnd = "";
					if (cell_cmnd != null)
						cmnd = cell_cmnd.toString();

					Cell cell_diaChi = r.getCell(3);
					String diaChi = "";
					if (cell_diaChi != null)
						diaChi = cell_diaChi.toString();

					Cell cell_queQuan = r.getCell(4);
					String queQuan = "";
					if (cell_queQuan != null)
						queQuan = cell_queQuan.toString();

					Cell cell_danToc = r.getCell(5);
					String danToc = "";
					if (cell_danToc != null)
						danToc = cell_danToc.toString();
					
					Cell cell_gioiTinh = r.getCell(6);
					String gioiTinh = "";
					if (cell_gioiTinh != null)
						danToc = cell_gioiTinh.toString();
					
					Cell cell_ngaySinh = r.getCell(5);
					String ngaySinh = "";
					if (cell_ngaySinh != null)
						ngaySinh = cell_ngaySinh.toString();

					Cell cell_sdt = r.getCell(6);
					String sdt = "";
					if (cell_sdt != null)
						sdt = cell_sdt.toString();
					
					Cell cell_email = r.getCell(7);
					String email = "";
					if (cell_email != null)
						email = cell_email.toString();

					Cell cell_chucVu = r.getCell(8);
					String chucVu = "";
					if (cell_chucVu != null)
						chucVu = cell_chucVu.toString();

					Cell cell_bacLuong = r.getCell(9);
					String bacLuong = "";
					if (cell_bacLuong != null)
						bacLuong = cell_bacLuong.toString();

					Cell cell_trinhDo = r.getCell(10);
					String trinhDo = "";
					if (cell_trinhDo != null)
						trinhDo = cell_trinhDo.toString();

					Cell cell_ngayTuyenDung = r.getCell(11);
					String ngayTuyenDung = "";
					if (cell_ngayTuyenDung != null)
						ngayTuyenDung = cell_ngayTuyenDung.toString();


					obj.setMaNV(maNV);
					obj.setHoVaTenNV(hoVaTenNV);
					obj.setCmnd(cmnd);
					obj.setDiaChi(diaChi);;
					obj.setQueQuan(queQuan);
					obj.setDanToc(danToc);
					obj.setGioiTinh(gioiTinh);
					obj.setNgaySinh(ngaySinh);
					obj.setSdt(sdt);
					obj.setEmail(email);
					obj.setChucVu(chucVu);;
					obj.setBacLuong(bacLuong);
					obj.setTrinhDo(trinhDo);
					obj.setNgayTuyenDung(ngayTuyenDung);
					
					

					if (objDAO.saveOrUpdate(obj)) {
						kq += "";
					} else {
						kq += "fail ";
					}
				}
				if (kq.equals(""))
					return "SUCCESS";
				else
					return "FAIL";
			} else
				System.out.println("ssssssssssssss");
		} catch (Exception e) {
			System.out.println(e.getMessage() + "ssssdsadasdasdas");
		}
		return "SUCCESS";
	}

	private HttpServletRequest servletRequest;
	private HttpServletResponse servletResponse;

	private static HSSFCellStyle createStyleForTitle(HSSFWorkbook workbook) {
		HSSFFont font = workbook.createFont();
		font.setBold(true);
		HSSFCellStyle style = workbook.createCellStyle();
		style.setFont(font);
		style.setAlignment(HorizontalAlignment.CENTER);*/
		return null;
	}
	@Override
	public String exportData() throws IOException {
		// TODO Auto-generated method stub
		return null;
	}
	
}
