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

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((khachHang == null) ? 0 : khachHang.hashCode());
		return result;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		TaiKhoanKhachHang other = (TaiKhoanKhachHang) obj;
		if (khachHang == null) {
			if (other.khachHang != null)
				return false;
		} else if (!khachHang.equals(other.khachHang))
			return false;
		return true;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "TaiKhoanKhachHang [khachHang=" + khachHang + "]";
	}

	
	
}
