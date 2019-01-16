package core.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class TrangThaiPhong implements Comparable<TrangThaiPhong> {
	@Id
	public String maTrangThaiPhong;
	public String tenTrangThaiPhong;
	public String soLuongKhach;
	@ManyToOne(fetch = FetchType.EAGER)
	public Phong phong;
	/**
	 * 
	 */
	public TrangThaiPhong() {
	}
	/**
	 * @param maTrangThaiPhong
	 * @param tenTrangThaiPhong
	 * @param soLuongKhach
	 * @param phong
	 */
	public TrangThaiPhong(String maTrangThaiPhong, String tenTrangThaiPhong, String soLuongKhach, Phong phong) {
		this.maTrangThaiPhong = maTrangThaiPhong;
		this.tenTrangThaiPhong = tenTrangThaiPhong;
		this.soLuongKhach = soLuongKhach;
		this.phong = phong;
	}
	/**
	 * @return the maTrangThaiPhong
	 */
	public String getMaTrangThaiPhong() {
		return maTrangThaiPhong;
	}
	/**
	 * @param maTrangThaiPhong the maTrangThaiPhong to set
	 */
	public void setMaTrangThaiPhong(String maTrangThaiPhong) {
		this.maTrangThaiPhong = maTrangThaiPhong;
	}
	/**
	 * @return the tenTrangThaiPhong
	 */
	public String getTenTrangThaiPhong() {
		return tenTrangThaiPhong;
	}
	/**
	 * @param tenTrangThaiPhong the tenTrangThaiPhong to set
	 */
	public void setTenTrangThaiPhong(String tenTrangThaiPhong) {
		this.tenTrangThaiPhong = tenTrangThaiPhong;
	}
	/**
	 * @return the soLuongKhach
	 */
	public String getSoLuongKhach() {
		return soLuongKhach;
	}
	/**
	 * @param soLuongKhach the soLuongKhach to set
	 */
	public void setSoLuongKhach(String soLuongKhach) {
		this.soLuongKhach = soLuongKhach;
	}
	/**
	 * @return the phong
	 */
	public Phong getPhong() {
		return phong;
	}
	/**
	 * @param phong the phong to set
	 */
	public void setPhong(Phong phong) {
		this.phong = phong;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((maTrangThaiPhong == null) ? 0 : maTrangThaiPhong.hashCode());
		result = prime * result + ((phong == null) ? 0 : phong.hashCode());
		result = prime * result + ((soLuongKhach == null) ? 0 : soLuongKhach.hashCode());
		result = prime * result + ((tenTrangThaiPhong == null) ? 0 : tenTrangThaiPhong.hashCode());
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
		TrangThaiPhong other = (TrangThaiPhong) obj;
		if (maTrangThaiPhong == null) {
			if (other.maTrangThaiPhong != null)
				return false;
		} else if (!maTrangThaiPhong.equals(other.maTrangThaiPhong))
			return false;
		if (phong == null) {
			if (other.phong != null)
				return false;
		} else if (!phong.equals(other.phong))
			return false;
		if (soLuongKhach == null) {
			if (other.soLuongKhach != null)
				return false;
		} else if (!soLuongKhach.equals(other.soLuongKhach))
			return false;
		if (tenTrangThaiPhong == null) {
			if (other.tenTrangThaiPhong != null)
				return false;
		} else if (!tenTrangThaiPhong.equals(other.tenTrangThaiPhong))
			return false;
		return true;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "TrangThaiPhong [maTrangThaiPhong=" + maTrangThaiPhong + ", tenTrangThaiPhong=" + tenTrangThaiPhong
				+ ", soLuongKhach=" + soLuongKhach + ", phong=" + phong + "]";
	}
	@Override
	public int compareTo(TrangThaiPhong o) {
		return this.maTrangThaiPhong.compareTo(o.maTrangThaiPhong);
	}
	
	
	
	
	

}
