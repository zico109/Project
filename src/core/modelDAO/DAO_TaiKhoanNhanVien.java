package core.modelDAO;

import core.dao.ObjectDAO;
import core.model.TaiKhoanNhanVien;

public class DAO_TaiKhoanNhanVien extends ObjectDAO<TaiKhoanNhanVien> {
	public DAO_TaiKhoanNhanVien() {
		this.table = "TaiKhoanNhanVien";
	}
}
