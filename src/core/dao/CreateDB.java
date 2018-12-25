package core.dao;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import core.model.NhanVien;
import core.model.NhomPhanQuyen;
import core.model.TaiKhoanNhanVien;
import core.model.User;
import core.modelDAO.DAO_ChucNang;
import core.modelDAO.DAO_NhanVien;
import core.modelDAO.DAO_NhomPhanQuyen;
import core.modelDAO.DAO_TaiKhoan;
import core.modelDAO.DAO_User;
import core.utils.Util_Date;
import core.utils.Util_MD5;
import core.model.ChucNang;

public class CreateDB {

	public static void main(String[] args) {
		ObjectDAO<User> dao = new DAO_User();
		String userName = "admin1";
		String passWord = "123";
		User user = new User(userName, passWord);
		dao.saveOrUpdate(user);

		/*ObjectDAO<NhanVien> dao1 = new DAO_NhanVien();
		NhanVien nv = new NhanVien();
		String maNV = "admin1";
		String hoVaTenNV = "Dao Nhat Binh";
		String cmnd = "0123456789";
		String queQuan = "Nha Trang";
		String diaChi = "26/5 An Duong Vuong";
		String gioiTinh = "Nam";
		String email = "nhatbinh@gmail.com";
		String danToc= "kinh";
		Date ngaySinh = Util_Date.stringToDate("1995/06/23");
		Date ngayTuyenDung = Util_Date.stringToDate("2018/06/23");
		long bacLuong = "20000000";
		String sdt ="0100010010";
		String chucVu ="admin";
		String trinhDo ="Dai Hoc";
		NhanVien nhanvien = new NhanVien(maNV, hoVaTenNV, cmnd, diaChi, queQuan, danToc, gioiTinh, ngaySinh, sdt, email, chucVu, "", trinhDo, ngayTuyenDung);
		dao1.saveOrUpdate(nhanvien);
		
		
		Set<ChucNang> chs = new HashSet<ChucNang>();
		ObjectDAO daochucnang = new DAO_ChucNang();
		for (int i = 0; i < 3; i++) {
			ChucNang cn = new ChucNang();
			cn.setMaChucNang("CN" + i);
			cn.setTenHienThi("Chức năng " + i);
			cn.setDuongDan("google.com");
			daochucnang.saveOrUpdate(cn);
			if (i % 3 == 0)
				chs.add(cn);
			for (int j = 0; j < 3; j++) {
				ChucNang cn2 = new ChucNang();
				cn2.setMaChucNang("CN" + i + " " + j);
				cn2.setTenHienThi("Chức năng " + i + " - " + j);
				cn2.setDuongDan("google.com");
				cn2.setChucNangCha(cn);
				daochucnang.saveOrUpdate(cn2);
				if (i % 3 == 0 || j % 5 == 0)
					chs.add(cn2);
			}
		}

		NhomPhanQuyen nhomPhanQuyen1 = new NhomPhanQuyen();
		nhomPhanQuyen1.setMaNhomPhanQuyen("nhanvien");
		nhomPhanQuyen1.setTenNhomPhanQuyen("Nhân Viên");
		ObjectDAO daonpq = new DAO_NhomPhanQuyen();
		daonpq.saveOrUpdate(nhomPhanQuyen1);
		
		TaiKhoanNhanVien tk = new TaiKhoanNhanVien();
		tk.setMaDangNhap(nv.getEmail());
		tk.setMatKhau(Util_MD5.md5("123456"));
		tk.setNhanVien(nv);
		tk.setNhomPhanQuyen(nhomPhanQuyen1);
		ObjectDAO dao3 = new DAO_TaiKhoan();
		dao3.saveOrUpdate(tk);*/
		
	}

}
