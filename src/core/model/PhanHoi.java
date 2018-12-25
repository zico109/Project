package core.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class PhanHoi implements Comparable<PhanHoi> {
	@Id
	public String maPhanHoi;
	public String noiDungPhanHoi;
	public Date ngayPhanHoi;
	@ManyToOne(fetch = FetchType.EAGER)
	public KhachHang khachHang;
	/**
	 * 
	 */
	public PhanHoi() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param maPhanHoi
	 * @param noiDungPhanHoi
	 * @param ngayPhanHoi
	 * @param khachHang
	 */
	public PhanHoi(String maPhanHoi, String noiDungPhanHoi, Date ngayPhanHoi, KhachHang khachHang) {
		this.maPhanHoi = maPhanHoi;
		this.noiDungPhanHoi = noiDungPhanHoi;
		this.ngayPhanHoi = ngayPhanHoi;
		this.khachHang = khachHang;
	}
	/**
	 * @return the maPhanHoi
	 */
	public String getMaPhanHoi() {
		return maPhanHoi;
	}
	/**
	 * @param maPhanHoi the maPhanHoi to set
	 */
	public void setMaPhanHoi(String maPhanHoi) {
		this.maPhanHoi = maPhanHoi;
	}
	/**
	 * @return the noiDungPhanHoi
	 */
	public String getNoiDungPhanHoi() {
		return noiDungPhanHoi;
	}
	/**
	 * @param noiDungPhanHoi the noiDungPhanHoi to set
	 */
	public void setNoiDungPhanHoi(String noiDungPhanHoi) {
		this.noiDungPhanHoi = noiDungPhanHoi;
	}
	/**
	 * @return the ngayPhanHoi
	 */
	public Date getNgayPhanHoi() {
		return ngayPhanHoi;
	}
	/**
	 * @param ngayPhanHoi the ngayPhanHoi to set
	 */
	public void setNgayPhanHoi(Date ngayPhanHoi) {
		this.ngayPhanHoi = ngayPhanHoi;
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
		int result = 1;
		result = prime * result + ((khachHang == null) ? 0 : khachHang.hashCode());
		result = prime * result + ((maPhanHoi == null) ? 0 : maPhanHoi.hashCode());
		result = prime * result + ((ngayPhanHoi == null) ? 0 : ngayPhanHoi.hashCode());
		result = prime * result + ((noiDungPhanHoi == null) ? 0 : noiDungPhanHoi.hashCode());
		return result;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PhanHoi other = (PhanHoi) obj;
		if (khachHang == null) {
			if (other.khachHang != null)
				return false;
		} else if (!khachHang.equals(other.khachHang))
			return false;
		if (maPhanHoi == null) {
			if (other.maPhanHoi != null)
				return false;
		} else if (!maPhanHoi.equals(other.maPhanHoi))
			return false;
		if (ngayPhanHoi == null) {
			if (other.ngayPhanHoi != null)
				return false;
		} else if (!ngayPhanHoi.equals(other.ngayPhanHoi))
			return false;
		if (noiDungPhanHoi == null) {
			if (other.noiDungPhanHoi != null)
				return false;
		} else if (!noiDungPhanHoi.equals(other.noiDungPhanHoi))
			return false;
		return true;
	}
	
	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "PhanHoi [maPhanHoi=" + maPhanHoi + ", noiDungPhanHoi=" + noiDungPhanHoi + ", ngayPhanHoi=" + ngayPhanHoi
				+ ", khachHang=" + khachHang + "]";
	}
	@Override
	public int compareTo(PhanHoi o) {
		return this.maPhanHoi.compareTo(o.maPhanHoi);
	}
	
}
