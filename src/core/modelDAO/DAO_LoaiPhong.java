package core.modelDAO;

import core.dao.ObjectDAO;
import core.model.LoaiPhong;

public class DAO_LoaiPhong extends ObjectDAO<LoaiPhong> {
	public DAO_LoaiPhong() {
		this.table = "LoaiPhong";
	}
}
