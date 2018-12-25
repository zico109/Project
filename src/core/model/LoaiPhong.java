package core.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import core.model.NhomPhanQuyen;


@Entity
public class LoaiPhong implements Comparable<LoaiPhong> {
	@Id
	public String maLP;
	public String tenLP;
	public long giaLP;
	public String tienNghi;
	public String soLuongPhong;
	
	


	/**
	 * 
	 */
	public LoaiPhong() {
	}


	/**
	 * @param maLP
	 * @param tenLP
	 * @param giaLP
	 * @param tienNghi
	 * @param soLuongPhong
	 * @param hoaDonDatPhongs
	 */
	public LoaiPhong(String maLP, String tenLP, long giaLP, String tienNghi, String soLuongPhong
		) {
		this.maLP = maLP;
		this.tenLP = tenLP;
		this.giaLP = giaLP;
		this.tienNghi = tienNghi;
		this.soLuongPhong = soLuongPhong;
		
	}


	/**
	 * @return the maLP
	 */
	public String getMaLP() {
		return maLP;
	}


	/**
	 * @param maLP the maLP to set
	 */
	public void setMaLP(String maLP) {
		this.maLP = maLP;
	}


	/**
	 * @return the tenLP
	 */
	public String getTenLP() {
		return tenLP;
	}


	/**
	 * @param tenLP the tenLP to set
	 */
	public void setTenLP(String tenLP) {
		this.tenLP = tenLP;
	}


	/**
	 * @return the giaLP
	 */
	public long getGiaLP() {
		return giaLP;
	}


	/**
	 * @param giaLP the giaLP to set
	 */
	public void setGiaLP(long giaLP) {
		this.giaLP = giaLP;
	}


	/**
	 * @return the tienNghi
	 */
	public String getTienNghi() {
		return tienNghi;
	}


	/**
	 * @param tienNghi the tienNghi to set
	 */
	public void setTienNghi(String tienNghi) {
		this.tienNghi = tienNghi;
	}


	/**
	 * @return the soLuongPhong
	 */
	public String getSoLuongPhong() {
		return soLuongPhong;
	}


	/**
	 * @param soLuongPhong the soLuongPhong to set
	 */
	public void setSoLuongPhong(String soLuongPhong) {
		this.soLuongPhong = soLuongPhong;
	}

	

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (giaLP ^ (giaLP >>> 32));
		result = prime * result + ((maLP == null) ? 0 : maLP.hashCode());
		result = prime * result + ((soLuongPhong == null) ? 0 : soLuongPhong.hashCode());
		result = prime * result + ((tenLP == null) ? 0 : tenLP.hashCode());
		result = prime * result + ((tienNghi == null) ? 0 : tienNghi.hashCode());
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
		LoaiPhong other = (LoaiPhong) obj;
		if (giaLP != other.giaLP)
			return false;
		if (maLP == null) {
			if (other.maLP != null)
				return false;
		} else if (!maLP.equals(other.maLP))
			return false;
		if (soLuongPhong == null) {
			if (other.soLuongPhong != null)
				return false;
		} else if (!soLuongPhong.equals(other.soLuongPhong))
			return false;
		if (tenLP == null) {
			if (other.tenLP != null)
				return false;
		} else if (!tenLP.equals(other.tenLP))
			return false;
		if (tienNghi == null) {
			if (other.tienNghi != null)
				return false;
		} else if (!tienNghi.equals(other.tienNghi))
			return false;
		return true;
	}

	

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "LoaiPhong [maLP=" + maLP + ", tenLP=" + tenLP + ", giaLP=" + giaLP + ", tienNghi=" + tienNghi
				+ ", soLuongPhong=" + soLuongPhong + "]";
	}


	@Override
	public int compareTo(LoaiPhong o) {
		return this.maLP.compareTo(o.maLP);
	}


	/**
	 * @return the hoaDonDatPhongs
	 */
	

	

}
