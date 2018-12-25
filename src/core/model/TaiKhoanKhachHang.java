package core.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToOne;
@Entity
public class TaiKhoanKhachHang extends TaiKhoan {
	@OneToOne(fetch = FetchType.EAGER)
	public KhachHang khachHang;

	/**
	 * 
	 */
	public TaiKhoanKhachHang() {
	}

	/**
	 * @param khachHang
	 */
	public TaiKhoanKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

	/**
	 * @return the khachHang
	 */
	public KhachHang getKhachHang() {
		return khachHang;
	}

	/**
	 * @param khachHang the khachHang to set
	 */
	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}
	
	
}
