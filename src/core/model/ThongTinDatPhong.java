package core.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class ThongTinDatPhong implements Comparable<ThongTinDatPhong>{
	@Id
	public String maThongTinDatPhong;
	public String soLuongNguoi;
	public Date ngayDen;
	public Date ngayDi;
	
	@ManyToOne
	public KhachHang khachHang;
	@ManyToOne
	public LoaiPhong loaiPhong;
	@ManyToOne
	public Phong phong;
	/**
	 * 
	 */
	public ThongTinDatPhong() {
	}
	/**
	 * @param maThongTinDatPhong
	 * @param soLuongNguoi
	 * @param ngayDen
	 * @param ngayDi
	 * @param khachHang
	 * @param loaiPhong
	 * @param phong
	 */
	public ThongTinDatPhong(String maThongTinDatPhong, String soLuongNguoi, Date ngayDen, Date ngayDi,
			KhachHang khachHang, LoaiPhong loaiPhong, Phong phong) {
		this.maThongTinDatPhong = maThongTinDatPhong;
		this.soLuongNguoi = soLuongNguoi;
		this.ngayDen = ngayDen;
		this.ngayDi = ngayDi;
		this.khachHang = khachHang;
		this.loaiPhong = loaiPhong;
		this.phong = phong;
	}
	/**
	 * @return the maThongTinDatPhong
	 */
	public String getMaThongTinDatPhong() {
		return maThongTinDatPhong;
	}
	/**
	 * @param maThongTinDatPhong the maThongTinDatPhong to set
	 */
	public void setMaThongTinDatPhong(String maThongTinDatPhong) {
		this.maThongTinDatPhong = maThongTinDatPhong;
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
	 * @return the ngayDen
	 */
	public Date getNgayDen() {
		return ngayDen;
	}
	/**
	 * @param ngayDen the ngayDen to set
	 */
	public void setNgayDen(Date ngayDen) {
		this.ngayDen = ngayDen;
	}
	/**
	 * @return the ngayDi
	 */
	public Date getNgayDi() {
		return ngayDi;
	}
	/**
	 * @param ngayDi the ngayDi to set
	 */
	public void setNgayDi(Date ngayDi) {
		this.ngayDi = ngayDi;
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
		this.loaiPhong = loaiPhong;
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
		result = prime * result + ((khachHang == null) ? 0 : khachHang.hashCode());
		result = prime * result + ((loaiPhong == null) ? 0 : loaiPhong.hashCode());
		result = prime * result + ((maThongTinDatPhong == null) ? 0 : maThongTinDatPhong.hashCode());
		result = prime * result + ((ngayDen == null) ? 0 : ngayDen.hashCode());
		result = prime * result + ((ngayDi == null) ? 0 : ngayDi.hashCode());
		result = prime * result + ((phong == null) ? 0 : phong.hashCode());
		result = prime * result + ((soLuongNguoi == null) ? 0 : soLuongNguoi.hashCode());
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
		ThongTinDatPhong other = (ThongTinDatPhong) obj;
		if (khachHang == null) {
			if (other.khachHang != null)
				return false;
		} else if (!khachHang.equals(other.khachHang))
			return false;
		if (loaiPhong == null) {
			if (other.loaiPhong != null)
				return false;
		} else if (!loaiPhong.equals(other.loaiPhong))
			return false;
		if (maThongTinDatPhong == null) {
			if (other.maThongTinDatPhong != null)
				return false;
		} else if (!maThongTinDatPhong.equals(other.maThongTinDatPhong))
			return false;
		if (ngayDen == null) {
			if (other.ngayDen != null)
				return false;
		} else if (!ngayDen.equals(other.ngayDen))
			return false;
		if (ngayDi == null) {
			if (other.ngayDi != null)
				return false;
		} else if (!ngayDi.equals(other.ngayDi))
			return false;
		if (phong == null) {
			if (other.phong != null)
				return false;
		} else if (!phong.equals(other.phong))
			return false;
		if (soLuongNguoi == null) {
			if (other.soLuongNguoi != null)
				return false;
		} else if (!soLuongNguoi.equals(other.soLuongNguoi))
			return false;
		return true;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "ThongTinDatPhong [maThongTinDatPhong=" + maThongTinDatPhong + ", soLuongNguoi=" + soLuongNguoi
				+ ", ngayDen=" + ngayDen + ", ngayDi=" + ngayDi + ", khachHang=" + khachHang + ", loaiPhong="
				+ loaiPhong + ", phong=" + phong + "]";
	}
	@Override
	public int compareTo(ThongTinDatPhong o) {
		return this.maThongTinDatPhong.compareTo(o.maThongTinDatPhong);
	}
	
	
	
	

}
