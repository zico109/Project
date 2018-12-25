package core.modelDAO;

import core.dao.ObjectDAO;
import core.model.NhanVien;

public class DAO_NhanVien extends ObjectDAO<NhanVien> {
	public DAO_NhanVien(){
		this.table = "NhanVien";
	}

}
