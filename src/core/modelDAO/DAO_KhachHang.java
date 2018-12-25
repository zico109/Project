package core.modelDAO;

import core.dao.ObjectDAO;
import core.model.KhachHang;

public class DAO_KhachHang extends ObjectDAO<KhachHang> {
	public DAO_KhachHang(){
		this.table = "KhachHang";
	}

}
