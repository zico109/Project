package core.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.ManyToOne;


@Entity
@Inheritance
public class TaiKhoan implements Comparable<TaiKhoan> {
	@Id
	public String maDangNhap;
	public String matKhau;
	public String anhDaiDien;
	public Date ngayTao;
	public Date ngayCapNhatMatKhau;
	public String loaiTaiKhoan;
	public boolean trangThaiHoatDong;
	public String email;
	public String hoVaTen;
	public String ghiChu;
/*	public Date thoiGianCapNhat;*/
	
	@ManyToOne
	public NhomPhanQuyen nhomPhanQuyen;

	/**
	 * 
	 */
	public TaiKhoan() {
	}

	/**
	 * @param maDangNhap
	 * @param matKhau
	 * @param anhDaiDien
	 * @param ngayTao
	 * @param ngayCapNhatMatKhau
	 * @param loaiTaiKhoan
	 * @param trangThaiHoatDong
	 * @param email
	 * @param hoVaTen
	 * @param ghiChu
	 * @param thoiGianCapNhat
	 * @param nhomPhanQuyen
	 */
	public TaiKhoan(String maDangNhap, String matKhau, String anhDaiDien, Date ngayTao, Date ngayCapNhatMatKhau,
			String loaiTaiKhoan, boolean trangThaiHoatDong, String email, String hoVaTen, String ghiChu,
			/*Date thoiGianCapNhat,*/ NhomPhanQuyen nhomPhanQuyen) {
		this.maDangNhap = maDangNhap;
		this.matKhau = matKhau;
		this.anhDaiDien = anhDaiDien;
		this.ngayTao = ngayTao;
		this.ngayCapNhatMatKhau = ngayCapNhatMatKhau;
		this.loaiTaiKhoan = loaiTaiKhoan;
		this.trangThaiHoatDong = trangThaiHoatDong;
		this.email = email;
		this.hoVaTen = hoVaTen;
		this.ghiChu = ghiChu;
/*		this.thoiGianCapNhat = thoiGianCapNhat;*/
		this.nhomPhanQuyen = nhomPhanQuyen;
	}

	/**
	 * @return the maDangNhap
	 */
	public String getMaDangNhap() {
		return maDangNhap;
	}

	/**
	 * @param maDangNhap the maDangNhap to set
	 */
	public void setMaDangNhap(String maDangNhap) {
		this.maDangNhap = maDangNhap;
	}

	/**
	 * @return the matKhau
	 */
	public String getMatKhau() {
		return matKhau;
	}

	/**
	 * @param matKhau the matKhau to set
	 */
	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	/**
	 * @return the anhDaiDien
	 */
	public String getAnhDaiDien() {
		return anhDaiDien;
	}

	/**
	 * @param anhDaiDien the anhDaiDien to set
	 */
	public void setAnhDaiDien(String anhDaiDien) {
		this.anhDaiDien = anhDaiDien;
	}

	/**
	 * @return the ngayTao
	 */
	public Date getNgayTao() {
		return ngayTao;
	}

	/**
	 * @param ngayTao the ngayTao to set
	 */
	public void setNgayTao(Date ngayTao) {
		this.ngayTao = ngayTao;
	}

	/**
	 * @return the ngayCapNhatMatKhau
	 */
	public Date getNgayCapNhatMatKhau() {
		return ngayCapNhatMatKhau;
	}

	/**
	 * @param ngayCapNhatMatKhau the ngayCapNhatMatKhau to set
	 */
	public void setNgayCapNhatMatKhau(Date ngayCapNhatMatKhau) {
		this.ngayCapNhatMatKhau = ngayCapNhatMatKhau;
	}

	/**
	 * @return the loaiTaiKhoan
	 */
	public String getLoaiTaiKhoan() {
		return loaiTaiKhoan;
	}

	/**
	 * @param loaiTaiKhoan the loaiTaiKhoan to set
	 */
	public void setLoaiTaiKhoan(String loaiTaiKhoan) {
		this.loaiTaiKhoan = loaiTaiKhoan;
	}

	/**
	 * @return the trangThaiHoatDong
	 */
	public boolean isTrangThaiHoatDong() {
		return trangThaiHoatDong;
	}

	/**
	 * @param trangThaiHoatDong the trangThaiHoatDong to set
	 */
	public void setTrangThaiHoatDong(boolean trangThaiHoatDong) {
		this.trangThaiHoatDong = trangThaiHoatDong;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the hoVaTen
	 */
	public String getHoVaTen() {
		return hoVaTen;
	}

	/**
	 * @param hoVaTen the hoVaTen to set
	 */
	public void setHoVaTen(String hoVaTen) {
		this.hoVaTen = hoVaTen;
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
	}

	*//**
	 * @param thoiGianCapNhat the thoiGianCapNhat to set
	 *//*
	public void setThoiGianCapNhat(Date thoiGianCapNhat) {
		this.thoiGianCapNhat = thoiGianCapNhat;
	}*/

	/**
	 * @return the nhomPhanQuyen
	 */
	public NhomPhanQuyen getNhomPhanQuyen() {
		return nhomPhanQuyen;
	}

	/**
	 * @param nhomPhanQuyen the nhomPhanQuyen to set
	 */
	public void setNhomPhanQuyen(NhomPhanQuyen nhomPhanQuyen) {
		this.nhomPhanQuyen = nhomPhanQuyen;
	}

	
	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((anhDaiDien == null) ? 0 : anhDaiDien.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((ghiChu == null) ? 0 : ghiChu.hashCode());
		result = prime * result + ((hoVaTen == null) ? 0 : hoVaTen.hashCode());
		result = prime * result + ((loaiTaiKhoan == null) ? 0 : loaiTaiKhoan.hashCode());
		result = prime * result + ((maDangNhap == null) ? 0 : maDangNhap.hashCode());
		result = prime * result + ((matKhau == null) ? 0 : matKhau.hashCode());
		result = prime * result + ((ngayCapNhatMatKhau == null) ? 0 : ngayCapNhatMatKhau.hashCode());
		result = prime * result + ((ngayTao == null) ? 0 : ngayTao.hashCode());
		result = prime * result + ((nhomPhanQuyen == null) ? 0 : nhomPhanQuyen.hashCode());
/*		result = prime * result + ((thoiGianCapNhat == null) ? 0 : thoiGianCapNhat.hashCode());*/
		result = prime * result + (trangThaiHoatDong ? 1231 : 1237);
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
		TaiKhoan other = (TaiKhoan) obj;
		if (anhDaiDien == null) {
			if (other.anhDaiDien != null)
				return false;
		} else if (!anhDaiDien.equals(other.anhDaiDien))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (ghiChu == null) {
			if (other.ghiChu != null)
				return false;
		} else if (!ghiChu.equals(other.ghiChu))
			return false;
		if (hoVaTen == null) {
			if (other.hoVaTen != null)
				return false;
		} else if (!hoVaTen.equals(other.hoVaTen))
			return false;
		if (loaiTaiKhoan == null) {
			if (other.loaiTaiKhoan != null)
				return false;
		} else if (!loaiTaiKhoan.equals(other.loaiTaiKhoan))
			return false;
		if (maDangNhap == null) {
			if (other.maDangNhap != null)
				return false;
		} else if (!maDangNhap.equals(other.maDangNhap))
			return false;
		if (matKhau == null) {
			if (other.matKhau != null)
				return false;
		} else if (!matKhau.equals(other.matKhau))
			return false;
		if (ngayCapNhatMatKhau == null) {
			if (other.ngayCapNhatMatKhau != null)
				return false;
		} else if (!ngayCapNhatMatKhau.equals(other.ngayCapNhatMatKhau))
			return false;
		if (ngayTao == null) {
			if (other.ngayTao != null)
				return false;
		} else if (!ngayTao.equals(other.ngayTao))
			return false;
		if (nhomPhanQuyen == null) {
			if (other.nhomPhanQuyen != null)
				return false;
		} else if (!nhomPhanQuyen.equals(other.nhomPhanQuyen))
			return false;
/*		if (thoiGianCapNhat == null) {
			if (other.thoiGianCapNhat != null)
				return false;
		} else if (!thoiGianCapNhat.equals(other.thoiGianCapNhat))
			return false;
		if (trangThaiHoatDong != other.trangThaiHoatDong)
			return false;*/
		return true;
	}

	
	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "TaiKhoan [maDangNhap=" + maDangNhap + ", matKhau=" + matKhau + ", anhDaiDien=" + anhDaiDien
				+ ", ngayTao=" + ngayTao + ", ngayCapNhatMatKhau=" + ngayCapNhatMatKhau + ", loaiTaiKhoan="
				+ loaiTaiKhoan + ", trangThaiHoatDong=" + trangThaiHoatDong + ", email=" + email + ", hoVaTen="
				+ hoVaTen + ", ghiChu=" + ghiChu + ", thoiGianCapNhat=" /*+ thoiGianCapNhat*/ + ", nhomPhanQuyen="
				+ nhomPhanQuyen + "]";
	}

	@Override
	public int compareTo(TaiKhoan o) {
		return this.maDangNhap.compareTo(o.maDangNhap);
	}

	
}
