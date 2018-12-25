package core.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;




@Entity
public class NhomPhanQuyen implements Comparable<NhomPhanQuyen> {
	@Id
	public String maNhomPhanQuyen;
	public String tenNhomPhanQuyen;
	public String moTa;
	public String ghiChu;
/*	public Date thoiGianCapNhat;*/
	
	@ManyToMany(cascade = { CascadeType.ALL }, fetch = FetchType.EAGER)
	@JoinTable(name = "NhomPhanQuyen_ChucNang", joinColumns = {
			@JoinColumn(name = "maNhomPhanQuyen") }, inverseJoinColumns = { @JoinColumn(name = "maChucNang") })
	public 	Set<ChucNang> chucNangs = new HashSet<>();

	/**
	 * 
	 */
	public NhomPhanQuyen() {
	}

	/**
	 * @param maNhomPhanQuyen
	 * @param tenNhomPhanQuyen
	 * @param moTa
	 * @param ghiChu
	 * @param thoiGianCapNhat
	 * @param chucNangs
	 */
	public NhomPhanQuyen(String maNhomPhanQuyen, String tenNhomPhanQuyen, String moTa, String ghiChu
			/*,Date thoiGianCapNhat*/) {
		this.maNhomPhanQuyen = maNhomPhanQuyen;
		this.tenNhomPhanQuyen = tenNhomPhanQuyen;
		this.moTa = moTa;
		this.ghiChu = ghiChu;
/*		this.thoiGianCapNhat = thoiGianCapNhat;*/
		
	}

	/**
	 * @return the maNhomPhanQuyen
	 */
	public String getMaNhomPhanQuyen() {
		return maNhomPhanQuyen;
	}

	/**
	 * @param maNhomPhanQuyen the maNhomPhanQuyen to set
	 */
	public void setMaNhomPhanQuyen(String maNhomPhanQuyen) {
		this.maNhomPhanQuyen = maNhomPhanQuyen;
	}

	/**
	 * @return the tenNhomPhanQuyen
	 */
	public String getTenNhomPhanQuyen() {
		return tenNhomPhanQuyen;
	}

	/**
	 * @param tenNhomPhanQuyen the tenNhomPhanQuyen to set
	 */
	public void setTenNhomPhanQuyen(String tenNhomPhanQuyen) {
		this.tenNhomPhanQuyen = tenNhomPhanQuyen;
	}

	/**
	 * @return the moTa
	 */
	public String getMoTa() {
		return moTa;
	}

	/**
	 * @param moTa the moTa to set
	 */
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	/**
	 * @return the ghiChu
	 */
	public String getGhiChu() {
		return ghiChu;
	}

	/**
	 * @param ghiChu the ghiChu to set
	 */
	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}

	/**
	 * @return the thoiGianCapNhat
	 */
/*	public Date getThoiGianCapNhat() {
		return thoiGianCapNhat;
	}*/

	/**
	 * @param thoiGianCapNhat the thoiGianCapNhat to set
	 */
/*	public void setThoiGianCapNhat(Date thoiGianCapNhat) {
		this.thoiGianCapNhat = thoiGianCapNhat;
	}*/

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((chucNangs == null) ? 0 : chucNangs.hashCode());
		result = prime * result + ((ghiChu == null) ? 0 : ghiChu.hashCode());
		result = prime * result + ((maNhomPhanQuyen == null) ? 0 : maNhomPhanQuyen.hashCode());
		result = prime * result + ((moTa == null) ? 0 : moTa.hashCode());
		result = prime * result + ((tenNhomPhanQuyen == null) ? 0 : tenNhomPhanQuyen.hashCode());
/*		result = prime * result + ((thoiGianCapNhat == null) ? 0 : thoiGianCapNhat.hashCode());*/
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
		NhomPhanQuyen other = (NhomPhanQuyen) obj;
		if (chucNangs == null) {
			if (other.chucNangs != null)
				return false;
		} else if (!chucNangs.equals(other.chucNangs))
			return false;
		if (ghiChu == null) {
			if (other.ghiChu != null)
				return false;
		} else if (!ghiChu.equals(other.ghiChu))
			return false;
		if (maNhomPhanQuyen == null) {
			if (other.maNhomPhanQuyen != null)
				return false;
		} else if (!maNhomPhanQuyen.equals(other.maNhomPhanQuyen))
			return false;
		if (moTa == null) {
			if (other.moTa != null)
				return false;
		} else if (!moTa.equals(other.moTa))
			return false;
		if (tenNhomPhanQuyen == null) {
			if (other.tenNhomPhanQuyen != null)
				return false;
		} else if (!tenNhomPhanQuyen.equals(other.tenNhomPhanQuyen))
			return false;
		/*if (thoiGianCapNhat == null) {
			if (other.thoiGianCapNhat != null)
				return false;
		} else if (!thoiGianCapNhat.equals(other.thoiGianCapNhat))
			return false;*/
		return true;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "NhomPhanQuyen [maNhomPhanQuyen=" + maNhomPhanQuyen + ", tenNhomPhanQuyen=" + tenNhomPhanQuyen
				+ ", moTa=" + moTa + ", ghiChu=" + ghiChu + ", thoiGianCapNhat=" /*+ thoiGianCapNhat*/ + ", chucNangs="
				+ chucNangs + "]";
	}

	/**
	 * @return the chucNangs
	 */
	public Set<ChucNang> getChucNangs() {
		return chucNangs;
	}

	/**
	 * @param chucNangs the chucNangs to set
	 */
	public void setChucNangs(Set<ChucNang> chucNangs) {
		this.chucNangs = chucNangs;
	}

	
	
	
	@Override
	public int compareTo(NhomPhanQuyen o) {
		return this.maNhomPhanQuyen.compareTo(o.maNhomPhanQuyen);
	}

	

}


