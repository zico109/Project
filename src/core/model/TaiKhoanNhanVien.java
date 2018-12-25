package core.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToOne;

import core.model.NhanVien;
import core.model.TaiKhoanNhanVien;

@Entity
public class TaiKhoanNhanVien extends TaiKhoan {
	@OneToOne(fetch = FetchType.EAGER)
	public NhanVien nhanVien;

	/**
	 * 
	 */
	public TaiKhoanNhanVien() {
	}

	/**
	 * @param nhanVien
	 */
	public TaiKhoanNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}

	/**
	 * @return the nhanVien
	 */
	public NhanVien getNhanVien() {
		return nhanVien;
	}

	/**
	 * @param nhanVien the nhanVien to set
	 */
	public void setNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}

}
