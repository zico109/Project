package core.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;


@Entity
public class Phong implements Comparable<Phong> {
	@Id
	public String maPhong;
	public String tenPhong;
	public String soLuongNguoi;
	public String trangThai;
/*	public Date thoiGianCapNhat;*/
	@ManyToOne(fetch = FetchType.EAGER)
	public LoaiPhong loaiPhong;
	
	/**
	 * 
	 */
	public Phong() {
	}
	/**
	 * @param maPhong
	 * @param tenPhong
	 * @param soLuongNguoi
	 * @param trangThai
	 * @param thoiGianCapNhat
	 * @param loaiPhong
	 */
	public Phong(String maPhong, String tenPhong, String soLuongNguoi, String trangThai, Date thoiGianCapNhat, String anh,
			core.model.LoaiPhong loaiPhong) {
		this.maPhong = maPhong;
		this.tenPhong = tenPhong;
		this.soLuongNguoi = soLuongNguoi;
		this.trangThai = trangThai;
/*		this.thoiGianCapNhat = thoiGianCapNhat;*/
		loaiPhong = loaiPhong;
	}
	/**
	 * @return the maPhong
	 */
	public String getMaPhong() {
		return maPhong;
	}
	/**
	 * @param maPhong the maPhong to set
	 */
	public void setMaPhong(String maPhong) {
		this.maPhong = maPhong;
	}
	/**
	 * @return the tenPhong
	 */
	public String getTenPhong() {
		return tenPhong;
	}
	/**
	 * @param tenPhong the tenPhong to set
	 */
	public void setTenPhong(String tenPhong) {
		this.tenPhong = tenPhong;
	}
	/**
	 * @return the soLuongNguoi
	 */
	public String getSoLuongNguoi() {
		return soLuongNguoi;
	}
	/**
	 * @param soLuongNguoi the soLuongNguoi to set
	 */
	public void setSoLuongNguoi(String soLuongNguoi) {
		this.soLuongNguoi = soLuongNguoi;
	}
	/**
	 * @return the trangThai
	 */
	public String getTrangThai() {
		return trangThai;
	}
	/**
	 * @param trangThai the trangThai to set
	 */
	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}
/*	*//**
	 * @return the thoiGianCapNhat
	 *//*
	public Date getThoiGianCapNhat() {
		return thoiGianCapNhat;
	}
	*//**
	 * @param thoiGianCapNhat the thoiGianCapNhat to set
	 *//*
	public void setThoiGianCapNhat(Date thoiGianCapNhat) {
		this.thoiGianCapNhat = thoiGianCapNhat;
	}*/
	/**
	 * @return the loaiPhong
	 */
	public LoaiPhong getLoaiPhong() {
		return loaiPhong;
	}
	/**
	 * @param loaiPhong the loaiPhong to set
	 */
	public void setLoaiPhong(LoaiPhong loaiPhong) {
		loaiPhong = loaiPhong;
	}
	
	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((loaiPhong == null) ? 0 : loaiPhong.hashCode());
		result = prime * result + ((maPhong == null) ? 0 : maPhong.hashCode());
		result = prime * result + ((soLuongNguoi == null) ? 0 : soLuongNguoi.hashCode());
		result = prime * result + ((tenPhong == null) ? 0 : tenPhong.hashCode());
//		result = prime * result + ((thoiGianCapNhat == null) ? 0 : thoiGianCapNhat.hashCode());
		result = prime * result + ((trangThai == null) ? 0 : trangThai.hashCode());
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
		Phong other = (Phong) obj;
		if (loaiPhong == null) {
			if (other.loaiPhong != null)
				return false;
		} else if (!loaiPhong.equals(other.loaiPhong))
			return false;
		if (maPhong == null) {
			if (other.maPhong != null)
				return false;
		} else if (!maPhong.equals(other.maPhong))
			return false;
		if (soLuongNguoi == null) {
			if (other.soLuongNguoi != null)
				return false;
		} else if (!soLuongNguoi.equals(other.soLuongNguoi))
			return false;
		if (tenPhong == null) {
			if (other.tenPhong != null)
				return false;
		} else if (!tenPhong.equals(other.tenPhong))
			return false;
/*		if (thoiGianCapNhat == null) {
			if (other.thoiGianCapNhat != null)
				return false;
		} else if (!thoiGianCapNhat.equals(other.thoiGianCapNhat))
			return false;*/
		if (trangThai != other.trangThai)
			return false;
		return true;
	}
	
	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Phong [maPhong=" + maPhong + ", tenPhong=" + tenPhong + ", soLuongNguoi=" + soLuongNguoi
				+ ", trangThai=" + trangThai + ", LoaiPhong=" + loaiPhong
				+ "]";
	}
	@Override
	public int compareTo(Phong o) {
		return this.maPhong.compareTo(o.maPhong);
	}

	

}
