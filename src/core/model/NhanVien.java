package core.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;



@Entity
public class NhanVien implements Comparable<NhanVien> {
	@Id
	public String maNV;
	public String hoVaTenNV;
	public String cmnd;
	public String diaChi;
	public String queQuan;
	public String danToc;
	public String gioiTinh;
	public Date ngaySinh;
	public String sdt;
	public String email;
	public String chucVu;
	public String bacLuong;
	public String trinhDo;
	public Date ngayTuyenDung;
	/**
	 * 
	 */
	public NhanVien() {
	}
	/**
	 * @param maNV
	 * @param hoVaTenNV
	 * @param cmnd
	 * @param diaChi
	 * @param queQuan
	 * @param danToc
	 * @param gioiTinh
	 * @param ngaySinh
	 * @param sdt
	 * @param email
	 * @param chucVu
	 * @param bacLuong
	 * @param trinhDo
	 * @param ngayTuyenDung
	 */
	public NhanVien(String maNV, String hoVaTenNV, String cmnd, String diaChi, String queQuan, String danToc,
			String gioiTinh, Date ngaySinh, String sdt, String email, String chucVu, String bacLuong, String trinhDo,
			Date ngayTuyenDung) {
		this.maNV = maNV;
		this.hoVaTenNV = hoVaTenNV;
		this.cmnd = cmnd;
		this.diaChi = diaChi;
		this.queQuan = queQuan;
		this.danToc = danToc;
		this.gioiTinh = gioiTinh;
		this.ngaySinh = ngaySinh;
		this.sdt = sdt;
		this.email = email;
		this.chucVu = chucVu;
		this.bacLuong = bacLuong;
		this.trinhDo = trinhDo;
		this.ngayTuyenDung = ngayTuyenDung;
	}
	/**
	 * @return the maNV
	 */
	public String getMaNV() {
		return maNV;
	}
	/**
	 * @param maNV the maNV to set
	 */
	public void setMaNV(String maNV) {
		this.maNV = maNV;
	}
	/**
	 * @return the hoVaTenNV
	 */
	public String getHoVaTenNV() {
		return hoVaTenNV;
	}
	/**
	 * @param hoVaTenNV the hoVaTenNV to set
	 */
	public void setHoVaTenNV(String hoVaTenNV) {
		this.hoVaTenNV = hoVaTenNV;
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
	 * @return the diaChi
	 */
	public String getDiaChi() {
		return diaChi;
	}
	/**
	 * @param diaChi the diaChi to set
	 */
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	/**
	 * @return the queQuan
	 */
	public String getQueQuan() {
		return queQuan;
	}
	/**
	 * @param queQuan the queQuan to set
	 */
	public void setQueQuan(String queQuan) {
		this.queQuan = queQuan;
	}
	/**
	 * @return the danToc
	 */
	public String getDanToc() {
		return danToc;
	}
	/**
	 * @param danToc the danToc to set
	 */
	public void setDanToc(String danToc) {
		this.danToc = danToc;
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
	/**
	 * @return the chucVu
	 */
	public String getChucVu() {
		return chucVu;
	}
	/**
	 * @param chucVu the chucVu to set
	 */
	public void setChucVu(String chucVu) {
		this.chucVu = chucVu;
	}
	/**
	 * @return the bacLuong
	 */
	public String getBacLuong() {
		return bacLuong;
	}
	/**
	 * @param bacLuong the bacLuong to set
	 */
	public void setBacLuong(String bacLuong) {
		this.bacLuong = bacLuong;
	}
	/**
	 * @return the trinhDo
	 */
	public String getTrinhDo() {
		return trinhDo;
	}
	/**
	 * @param trinhDo the trinhDo to set
	 */
	public void setTrinhDo(String trinhDo) {
		this.trinhDo = trinhDo;
	}
	/**
	 * @return the ngayTuyenDung
	 */
	public Date getNgayTuyenDung() {
		return ngayTuyenDung;
	}
	/**
	 * @param ngayTuyenDung the ngayTuyenDung to set
	 */
	public void setNgayTuyenDung(Date ngayTuyenDung) {
		this.ngayTuyenDung = ngayTuyenDung;
	}
	
	
	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((bacLuong == null) ? 0 : bacLuong.hashCode());
		result = prime * result + ((chucVu == null) ? 0 : chucVu.hashCode());
		result = prime * result + ((cmnd == null) ? 0 : cmnd.hashCode());
		result = prime * result + ((danToc == null) ? 0 : danToc.hashCode());
		result = prime * result + ((diaChi == null) ? 0 : diaChi.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((gioiTinh == null) ? 0 : gioiTinh.hashCode());
		result = prime * result + ((hoVaTenNV == null) ? 0 : hoVaTenNV.hashCode());
		result = prime * result + ((maNV == null) ? 0 : maNV.hashCode());
		result = prime * result + ((ngaySinh == null) ? 0 : ngaySinh.hashCode());
		result = prime * result + ((ngayTuyenDung == null) ? 0 : ngayTuyenDung.hashCode());
		result = prime * result + ((queQuan == null) ? 0 : queQuan.hashCode());
		result = prime * result + ((sdt == null) ? 0 : sdt.hashCode());
		result = prime * result + ((trinhDo == null) ? 0 : trinhDo.hashCode());
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
		NhanVien other = (NhanVien) obj;
		if (bacLuong == null) {
			if (other.bacLuong != null)
				return false;
		} else if (!bacLuong.equals(other.bacLuong))
			return false;
		if (chucVu == null) {
			if (other.chucVu != null)
				return false;
		} else if (!chucVu.equals(other.chucVu))
			return false;
		if (cmnd == null) {
			if (other.cmnd != null)
				return false;
		} else if (!cmnd.equals(other.cmnd))
			return false;
		if (danToc == null) {
			if (other.danToc != null)
				return false;
		} else if (!danToc.equals(other.danToc))
			return false;
		if (diaChi == null) {
			if (other.diaChi != null)
				return false;
		} else if (!diaChi.equals(other.diaChi))
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
		if (hoVaTenNV == null) {
			if (other.hoVaTenNV != null)
				return false;
		} else if (!hoVaTenNV.equals(other.hoVaTenNV))
			return false;
		if (maNV == null) {
			if (other.maNV != null)
				return false;
		} else if (!maNV.equals(other.maNV))
			return false;
		if (ngaySinh == null) {
			if (other.ngaySinh != null)
				return false;
		} else if (!ngaySinh.equals(other.ngaySinh))
			return false;
		if (ngayTuyenDung == null) {
			if (other.ngayTuyenDung != null)
				return false;
		} else if (!ngayTuyenDung.equals(other.ngayTuyenDung))
			return false;
		if (queQuan == null) {
			if (other.queQuan != null)
				return false;
		} else if (!queQuan.equals(other.queQuan))
			return false;
		if (sdt == null) {
			if (other.sdt != null)
				return false;
		} else if (!sdt.equals(other.sdt))
			return false;
		if (trinhDo == null) {
			if (other.trinhDo != null)
				return false;
		} else if (!trinhDo.equals(other.trinhDo))
			return false;
		return true;
	}
	
	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "NhanVien [maNV=" + maNV + ", hoVaTenNV=" + hoVaTenNV + ", cmnd=" + cmnd + ", diaChi=" + diaChi
				+ ", queQuan=" + queQuan + ", danToc=" + danToc + ", gioiTinh=" + gioiTinh + ", ngaySinh=" + ngaySinh
				+ ", sdt=" + sdt + ", email=" + email + ", chucVu=" + chucVu + ", bacLuong=" + bacLuong + ", trinhDo="
				+ trinhDo + ", ngayTuyenDung=" + ngayTuyenDung + "]";
	}
	@Override
	public int compareTo(NhanVien o) {
		return this.maNV.compareTo(o.maNV);
	}


		
}
