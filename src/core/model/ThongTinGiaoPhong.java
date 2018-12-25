package core.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;



@Entity
public class ThongTinGiaoPhong implements Comparable<ThongTinGiaoPhong> {
	@Id
	public String maThongTinGiaoPhong;
	public boolean trangThaiGiaoPhong;

	@ManyToOne(fetch = FetchType.EAGER)
	public HoaDonDatPhong hoaDonDatPhong;
	@ManyToOne(fetch = FetchType.EAGER)
	public KhachHang khachHang;
	@ManyToOne(fetch = FetchType.EAGER)
	public Phong phong;

	/**
	 * 
	 */
	public ThongTinGiaoPhong() {
	}

	/**
	 * @param maThongTinGiaoPhong
	 * @param trangThaiGiaoPhong
	 * @param hoaDonDatPhong
	 * @param khachHang
	 * @param phong
	 */
	public ThongTinGiaoPhong(String maThongTinGiaoPhong, boolean trangThaiGiaoPhong,
			core.model.HoaDonDatPhong hoaDonDatPhong, core.model.KhachHang khachHang, core.model.Phong phong) {
		this.maThongTinGiaoPhong = maThongTinGiaoPhong;
		this.trangThaiGiaoPhong = trangThaiGiaoPhong;
		hoaDonDatPhong = hoaDonDatPhong;
		khachHang = khachHang;
		phong = phong;
	}

	/**
	 * @return the maThongTinGiaoPhong
	 */
	public String getMaThongTinGiaoPhong() {
		return maThongTinGiaoPhong;
	}

	/**
	 * @param maThongTinGiaoPhong
	 *            the maThongTinGiaoPhong to set
	 */
	public void setMaThongTinGiaoPhong(String maThongTinGiaoPhong) {
		this.maThongTinGiaoPhong = maThongTinGiaoPhong;
	}

	/**
	 * @return the trangThaiGiaoPhong
	 */
	public boolean isTrangThaiGiaoPhong() {
		return trangThaiGiaoPhong;
	}

	/**
	 * @param trangThaiGiaoPhong
	 *            the trangThaiGiaoPhong to set
	 */
	public void setTrangThaiGiaoPhong(boolean trangThaiGiaoPhong) {
		this.trangThaiGiaoPhong = trangThaiGiaoPhong;
	}

	/**
	 * @return the hoaDonDatPhong
	 */
	public HoaDonDatPhong getHoaDonDatPhong() {
		return hoaDonDatPhong;
	}

	/**
	 * @param hoaDonDatPhong
	 *            the hoaDonDatPhong to set
	 */
	public void setHoaDonDatPhong(HoaDonDatPhong hoaDonDatPhong) {
		hoaDonDatPhong = hoaDonDatPhong;
	}

	/**
	 * @return the khachHang
	 */
	public KhachHang getKhachHang() {
		return khachHang;
	}

	/**
	 * @param khachHang
	 *            the khachHang to set
	 */
	public void setKhachHang(KhachHang khachHang) {
		khachHang = khachHang;
	}

	/**
	 * @return the phong
	 */
	public Phong getPhong() {
		return phong;
	}

	/**
	 * @param phong
	 *            the phong to set
	 */
	public void setPhong(Phong phong) {
		phong = phong;
	}
	
	
	

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((hoaDonDatPhong == null) ? 0 : hoaDonDatPhong.hashCode());
		result = prime * result + ((khachHang == null) ? 0 : khachHang.hashCode());
		result = prime * result + ((phong == null) ? 0 : phong.hashCode());
		result = prime * result + ((maThongTinGiaoPhong == null) ? 0 : maThongTinGiaoPhong.hashCode());
		result = prime * result + (trangThaiGiaoPhong ? 1231 : 1237);
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
		ThongTinGiaoPhong other = (ThongTinGiaoPhong) obj;
		if (hoaDonDatPhong == null) {
			if (other.hoaDonDatPhong != null)
				return false;
		} else if (!hoaDonDatPhong.equals(other.hoaDonDatPhong))
			return false;
		if (khachHang == null) {
			if (other.khachHang != null)
				return false;
		} else if (!khachHang.equals(other.khachHang))
			return false;
		if (phong == null) {
			if (other.phong != null)
				return false;
		} else if (!phong.equals(other.phong))
			return false;
		if (maThongTinGiaoPhong == null) {
			if (other.maThongTinGiaoPhong != null)
				return false;
		} else if (!maThongTinGiaoPhong.equals(other.maThongTinGiaoPhong))
			return false;
		if (trangThaiGiaoPhong != other.trangThaiGiaoPhong)
			return false;
		return true;
	}
	
	

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "ThongTinGiaoPhong [maThongTinGiaoPhong=" + maThongTinGiaoPhong + ", trangThaiGiaoPhong="
				+ trangThaiGiaoPhong + ", HoaDonDatPhong=" + hoaDonDatPhong + ", KhachHang=" + khachHang + ", Phong="
				+ phong + "]";
	}

	@Override
	public int compareTo(ThongTinGiaoPhong o) {
		return this.maThongTinGiaoPhong.compareTo(o.maThongTinGiaoPhong);
	}

}
