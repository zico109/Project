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
import javax.persistence.ManyToOne;



@Entity
public class HoaDonDatPhong implements Comparable<HoaDonDatPhong> {
	@Id
	public String soHD;
	public String trangThaiThanhToan;
	public Date ngayDat;
	public Date tuNgay;
	public Date denNgay;
	public long thanhTien;
	
	@ManyToOne(fetch = FetchType.EAGER)
	public KhachHang khachHang;
	@ManyToOne(fetch = FetchType.EAGER)
	public NhanVien nhanVien;
	@ManyToOne(fetch = FetchType.EAGER)
	public LoaiPhong loaiPhong;
	

	/**
	 * 
	 */
	public HoaDonDatPhong() {
	}

	/**
	 * @param soHD
	 * @param trangThaiThanhToan
	 * @param ngayDat
	 * @param tuNgay
	 * @param denNgay
	 * @param thanhTien
	 * @param khachHang
	 * @param nhanVien
	 * @param loaiPhong
	 * @param chucNangs
	 */
	public HoaDonDatPhong(String soHD, String trangThaiThanhToan, Date ngayDat, Date tuNgay, Date denNgay,
			long thanhTien, core.model.KhachHang khachHang, core.model.NhanVien nhanVien,
			core.model.LoaiPhong loaiPhong) {
		this.soHD = soHD;
		this.trangThaiThanhToan = trangThaiThanhToan;
		this.ngayDat = ngayDat;
		this.tuNgay = tuNgay;
		this.denNgay = denNgay;
		this.thanhTien = thanhTien;
		khachHang = khachHang;
		nhanVien = nhanVien;
		loaiPhong = loaiPhong;
		
	}

	/**
	 * @return the soHD
	 */
	public String getSoHD() {
		return soHD;
	}

	/**
	 * @param soHD the soHD to set
	 */
	public void setSoHD(String soHD) {
		this.soHD = soHD;
	}

	/**
	 * @return the trangThaiThanhToan
	 */
	public String getTrangThaiThanhToan() {
		return trangThaiThanhToan;
	}

	/**
	 * @param trangThaiThanhToan the trangThaiThanhToan to set
	 */
	public void setTrangThaiThanhToan(String trangThaiThanhToan) {
		this.trangThaiThanhToan = trangThaiThanhToan;
	}

	/**
	 * @return the ngayDat
	 */
	public Date getNgayDat() {
		return ngayDat;
	}

	/**
	 * @param ngayDat the ngayDat to set
	 */
	public void setNgayDat(Date ngayDat) {
		this.ngayDat = ngayDat;
	}

	/**
	 * @return the tuNgay
	 */
	public Date getTuNgay() {
		return tuNgay;
	}

	/**
	 * @param tuNgay the tuNgay to set
	 */
	public void setTuNgay(Date tuNgay) {
		this.tuNgay = tuNgay;
	}

	/**
	 * @return the denNgay
	 */
	public Date getDenNgay() {
		return denNgay;
	}

	/**
	 * @param denNgay the denNgay to set
	 */
	public void setDenNgay(Date denNgay) {
		this.denNgay = denNgay;
	}

	/**
	 * @return the thanhTien
	 */
	public long getThanhTien() {
		return thanhTien;
	}

	/**
	 * @param thanhTien the thanhTien to set
	 */
	public void setThanhTien(long thanhTien) {
		this.thanhTien = thanhTien;
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
		khachHang = khachHang;
	}

	/**
	 * @return the nhanVien
	 */
	public NhanVien getNhanVien() {
		return nhanVien;
	}

	/**
	 * @param nhanVien the nhanVien to set
	 */
	public void setNhanVien(NhanVien nhanVien) {
		nhanVien = nhanVien;
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
		loaiPhong = loaiPhong;
	}

	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((khachHang == null) ? 0 : khachHang.hashCode());
		result = prime * result + ((nhanVien == null) ? 0 : nhanVien.hashCode());
		result = prime * result + ((nhanVien == null) ? 0 : nhanVien.hashCode());
		result = prime * result + ((denNgay == null) ? 0 : denNgay.hashCode());
		result = prime * result + ((ngayDat == null) ? 0 : ngayDat.hashCode());
		result = prime * result + ((soHD == null) ? 0 : soHD.hashCode());
		result = prime * result + (int) (thanhTien ^ (thanhTien >>> 32));
		result = prime * result + ((trangThaiThanhToan == null) ? 0 : trangThaiThanhToan.hashCode());
		result = prime * result + ((tuNgay == null) ? 0 : tuNgay.hashCode());
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
		HoaDonDatPhong other = (HoaDonDatPhong) obj;
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
		if (nhanVien == null) {
			if (other.nhanVien != null)
				return false;
		} else if (!nhanVien.equals(other.nhanVien))
			return false;
		if (denNgay == null) {
			if (other.denNgay != null)
				return false;
		} else if (!denNgay.equals(other.denNgay))
			return false;
		if (ngayDat == null) {
			if (other.ngayDat != null)
				return false;
		} else if (!ngayDat.equals(other.ngayDat))
			return false;
		if (soHD == null) {
			if (other.soHD != null)
				return false;
		} else if (!soHD.equals(other.soHD))
			return false;
		if (thanhTien != other.thanhTien)
			return false;
		if (trangThaiThanhToan == null) {
			if (other.trangThaiThanhToan != null)
				return false;
		} else if (!trangThaiThanhToan.equals(other.trangThaiThanhToan))
			return false;
		if (tuNgay == null) {
			if (other.tuNgay != null)
				return false;
		} else if (!tuNgay.equals(other.tuNgay))
			return false;
		return true;
	}

	
	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "HoaDonDatPhong [soHD=" + soHD + ", trangThaiThanhToan=" + trangThaiThanhToan + ", ngayDat=" + ngayDat
				+ ", tuNgay=" + tuNgay + ", denNgay=" + denNgay + ", thanhTien=" + thanhTien + ", KhachHang="
				+ khachHang + ", NhanVien=" + nhanVien + ", LoaiPhong=" + loaiPhong + "]";
	}

	@Override
	public int compareTo(HoaDonDatPhong o) {
		return this.soHD.compareTo(o.soHD);
	}


	/**
	 * @return the chucNangs
	 */
	

	
}
