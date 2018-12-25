package core.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class KhachHang implements Comparable<KhachHang> {
	@Id
	public String maKH;
	public String gioiTinh;
	public Date ngaySinh;
	public String cmnd;
	public String hoVaTenKH;
	public String quocTich;
	public String sdt;
	public String email;
	/**
	 * 
	 */
	public KhachHang() {
	}
	/**
	 * @param maKH
	 * @param gioiTinh
	 * @param ngaySinh
	 * @param cmnd
	 * @param hoVaTenKH
	 * @param quocTich
	 * @param sdt
	 * @param email
	 */
	public KhachHang(String maKH, String gioiTinh, Date ngaySinh, String cmnd, String hoVaTenKH, String quocTich,
			String sdt, String email) {
		this.maKH = maKH;
		this.gioiTinh = gioiTinh;
		this.ngaySinh = ngaySinh;
		this.cmnd = cmnd;
		this.hoVaTenKH = hoVaTenKH;
		this.quocTich = quocTich;
		this.sdt = sdt;
		this.email = email;
	}
	/**
	 * @return the maKH
	 */
	public String getMaKH() {
		return maKH;
	}
	/**
	 * @param maKH the maKH to set
	 */
	public void setMaKH(String maKH) {
		this.maKH = maKH;
	}
	/**
	 * @return the gioiTinh
	 */
	public String getGioiTinh() {
		return gioiTinh;
	}
	/**
	 * @param gioiTinh the gioiTinh to set
	 */
	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}
	/**
	 * @return the ngaySinh
	 */
	public Date getNgaySinh() {
		return ngaySinh;
	}
	/**
	 * @param ngaySinh the ngaySinh to set
	 */
	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
	/**
	 * @return the cmnd
	 */
	public String getCmnd() {
		return cmnd;
	}
	/**
	 * @param cmnd the cmnd to set
	 */
	public void setCmnd(String cmnd) {
		this.cmnd = cmnd;
	}
	/**
	 * @return the hoVaTenKH
	 */
	public String getHoVaTenKH() {
		return hoVaTenKH;
	}
	/**
	 * @param hoVaTenKH the hoVaTenKH to set
	 */
	public void setHoVaTenKH(String hoVaTenKH) {
		this.hoVaTenKH = hoVaTenKH;
	}
	/**
	 * @return the quocTich
	 */
	public String getQuocTich() {
		return quocTich;
	}
	/**
	 * @param quocTich the quocTich to set
	 */
	public void setQuocTich(String quocTich) {
		this.quocTich = quocTich;
	}
	/**
	 * @return the sdt
	 */
	public String getSdt() {
		return sdt;
	}
	/**
	 * @param sdt the sdt to set
	 */
	public void setSdt(String sdt) {
		this.sdt = sdt;
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
	
	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cmnd == null) ? 0 : cmnd.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((gioiTinh == null) ? 0 : gioiTinh.hashCode());
		result = prime * result + ((hoVaTenKH == null) ? 0 : hoVaTenKH.hashCode());
		result = prime * result + ((maKH == null) ? 0 : maKH.hashCode());
		result = prime * result + ((ngaySinh == null) ? 0 : ngaySinh.hashCode());
		result = prime * result + ((quocTich == null) ? 0 : quocTich.hashCode());
		result = prime * result + ((sdt == null) ? 0 : sdt.hashCode());
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
		KhachHang other = (KhachHang) obj;
		if (cmnd == null) {
			if (other.cmnd != null)
				return false;
		} else if (!cmnd.equals(other.cmnd))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (gioiTinh == null) {
			if (other.gioiTinh != null)
				return false;
		} else if (!gioiTinh.equals(other.gioiTinh))
			return false;
		if (hoVaTenKH == null) {
			if (other.hoVaTenKH != null)
				return false;
		} else if (!hoVaTenKH.equals(other.hoVaTenKH))
			return false;
		if (maKH == null) {
			if (other.maKH != null)
				return false;
		} else if (!maKH.equals(other.maKH))
			return false;
		if (ngaySinh == null) {
			if (other.ngaySinh != null)
				return false;
		} else if (!ngaySinh.equals(other.ngaySinh))
			return false;
		if (quocTich == null) {
			if (other.quocTich != null)
				return false;
		} else if (!quocTich.equals(other.quocTich))
			return false;
		if (sdt == null) {
			if (other.sdt != null)
				return false;
		} else if (!sdt.equals(other.sdt))
			return false;
		return true;
	}
	
	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "KhachHang [maKH=" + maKH + ", gioiTinh=" + gioiTinh + ", ngaySinh=" + ngaySinh + ", cmnd=" + cmnd
				+ ", hoVaTenKH=" + hoVaTenKH + ", quocTich=" + quocTich + ", sdt=" + sdt + ", email=" + email + "]";
	}
	@Override
	public int compareTo(KhachHang o) {
		return this.maKH.compareTo(o.maKH);
	}
	
}
