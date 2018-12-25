package core.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.Type;

import core.model.ChucNang;


@Entity
public class ChucNang implements Comparable<ChucNang> {
	@Id
	public String maChucNang; // NOT Auto => System.getCrrent...
	public String tenHienThi;
	public String duongDan;
	public String hinhAnh;
	@Type(type = "text")
	public String moTa;
	@Type(type = "text")
	public String ghiChu;
	@ManyToOne(fetch = FetchType.EAGER)
	public ChucNang chucNangCha;
/*	public Date thoiGianCapNhat;*/

	@ManyToMany(mappedBy = "chucNangs", fetch = FetchType.EAGER)
	public Set<NhomPhanQuyen> nhomPhanQuyens = new HashSet<>();

	/**
	 * 
	 */
	public ChucNang() {
	}

	/**
	 * @param maChucNang
	 * @param tenHienThi
	 * @param duongDan
	 * @param hinhAnh
	 * @param moTa
	 * @param ghiChu
	 * @param chucNangCha
	 * @param thoiGianCapNhat
	 * @param nhomPhanQuyens
	 */
	public ChucNang(String maChucNang, String tenHienThi, String duongDan, String hinhAnh, String moTa, String ghiChu,
			ChucNang chucNangCha, Date thoiGianCapNhat) {
		this.maChucNang = maChucNang;
		this.tenHienThi = tenHienThi;
		this.duongDan = duongDan;
		this.hinhAnh = hinhAnh;
		this.moTa = moTa;
		this.ghiChu = ghiChu;
		chucNangCha = chucNangCha;
/*		this.thoiGianCapNhat = thoiGianCapNhat;*/
		
	}

	/**
	 * @return the maChucNang
	 */
	public String getMaChucNang() {
		return maChucNang;
	}

	/**
	 * @param maChucNang the maChucNang to set
	 */
	public void setMaChucNang(String maChucNang) {
		this.maChucNang = maChucNang;
	}

	/**
	 * @return the tenHienThi
	 */
	public String getTenHienThi() {
		return tenHienThi;
	}

	/**
	 * @param tenHienThi the tenHienThi to set
	 */
	public void setTenHienThi(String tenHienThi) {
		this.tenHienThi = tenHienThi;
	}

	/**
	 * @return the duongDan
	 */
	public String getDuongDan() {
		return duongDan;
	}

	/**
	 * @param duongDan the duongDan to set
	 */
	public void setDuongDan(String duongDan) {
		this.duongDan = duongDan;
	}

	/**
	 * @return the hinhAnh
	 */
	public String getHinhAnh() {
		return hinhAnh;
	}

	/**
	 * @param hinhAnh the hinhAnh to set
	 */
	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
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
	 * @return the chucNangCha
	 */
	public ChucNang getChucNangCha() {
		return chucNangCha;
	}

	/**
	 * @param chucNangCha the chucNangCha to set
	 */
	public void setChucNangCha(ChucNang chucNangCha) {
		chucNangCha = chucNangCha;
	}

	/**
	 * @return the thoiGianCapNhat
	 */
/*	public Date getThoiGianCapNhat() {
		return thoiGianCapNhat;
	}

	*//**
	 * @param thoiGianCapNhat the thoiGianCapNhat to set
	 *//*
	public void setThoiGianCapNhat(Date thoiGianCapNhat) {
		this.thoiGianCapNhat = thoiGianCapNhat;
	}
	*/
	

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((chucNangCha == null) ? 0 : chucNangCha.hashCode());
		result = prime * result + ((duongDan == null) ? 0 : duongDan.hashCode());
		result = prime * result + ((ghiChu == null) ? 0 : ghiChu.hashCode());
		result = prime * result + ((hinhAnh == null) ? 0 : hinhAnh.hashCode());
		result = prime * result + ((maChucNang == null) ? 0 : maChucNang.hashCode());
		result = prime * result + ((moTa == null) ? 0 : moTa.hashCode());
		result = prime * result + ((tenHienThi == null) ? 0 : tenHienThi.hashCode());
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
		ChucNang other = (ChucNang) obj;
		if (chucNangCha == null) {
			if (other.chucNangCha != null)
				return false;
		} else if (!chucNangCha.equals(other.chucNangCha))
			return false;
		if (duongDan == null) {
			if (other.duongDan != null)
				return false;
		} else if (!duongDan.equals(other.duongDan))
			return false;
		if (ghiChu == null) {
			if (other.ghiChu != null)
				return false;
		} else if (!ghiChu.equals(other.ghiChu))
			return false;
		if (hinhAnh == null) {
			if (other.hinhAnh != null)
				return false;
		} else if (!hinhAnh.equals(other.hinhAnh))
			return false;
		if (maChucNang == null) {
			if (other.maChucNang != null)
				return false;
		} else if (!maChucNang.equals(other.maChucNang))
			return false;
		if (moTa == null) {
			if (other.moTa != null)
				return false;
		} else if (!moTa.equals(other.moTa))
			return false;
		if (tenHienThi == null) {
			if (other.tenHienThi != null)
				return false;
		} else if (!tenHienThi.equals(other.tenHienThi))
			return false;
/*		if (thoiGianCapNhat == null) {
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
		return "ChucNang [maChucNang=" + maChucNang + ", tenHienThi=" + tenHienThi + ", duongDan=" + duongDan
				+ ", hinhAnh=" + hinhAnh + ", moTa=" + moTa + ", ghiChu=" + ghiChu + ", ChucNangCha=" + chucNangCha
				+ ", thoiGianCapNhat=" /*+ thoiGianCapNhat*/ + "]";
	}

	@Override
	public int compareTo(ChucNang o) {
		return this.maChucNang.compareTo(o.maChucNang);
	}

	/**
	 * @return the nhomPhanQuyens
	 */
	
	
	
}
