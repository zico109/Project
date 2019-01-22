package core.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.Type;

@Entity

public class PhanHoi implements Comparable<PhanHoi> {
	@Id
	public String maPhanHoi;
	public KhachHang khachHang;
	@Type(type = "text")
	public String noiDungPhanHoi;
	public Date ngayPhanHoi;
	public Date thoiGianCapNhat;

	public PhanHoi() {
		super();
	}

	public PhanHoi(String maPhanHoi, KhachHang khachHang, String noiDungPhanHoi, Date ngayPhanHoi,
			Date thoiGianCapNhat) {
		super();
		this.maPhanHoi = maPhanHoi;
		this.khachHang = khachHang;
		this.noiDungPhanHoi = noiDungPhanHoi;
		this.ngayPhanHoi = ngayPhanHoi;
		this.thoiGianCapNhat = thoiGianCapNhat;
	}

	public String getMaPhanHoi() {
		return maPhanHoi;
	}

	public void setMaPhanHoi(String maPhanHoi) {
		this.maPhanHoi = maPhanHoi;
	}


	public KhachHang getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

	public String getNoiDungPhanHoi() {
		return noiDungPhanHoi;
	}

	public void setNoiDungPhanHoi(String noiDungPhanHoi) {
		this.noiDungPhanHoi = noiDungPhanHoi;
	}

	public Date getNgayPhanHoi() {
		return ngayPhanHoi;
	}

	public void setNgayPhanHoi(Date ngayPhanHoi) {
		this.ngayPhanHoi = ngayPhanHoi;
	}

	public Date getThoiGianCapNhat() {
		return thoiGianCapNhat;
	}

	public void setThoiGianCapNhat(Date thoiGianCapNhat) {
		this.thoiGianCapNhat = thoiGianCapNhat;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((maPhanHoi == null) ? 0 : maPhanHoi.hashCode());
		result = prime * result + ((ngayPhanHoi == null) ? 0 : ngayPhanHoi.hashCode());
		result = prime * result + ((noiDungPhanHoi == null) ? 0 : noiDungPhanHoi.hashCode());
		result = prime * result + ((khachHang == null) ? 0 : khachHang.hashCode());
		result = prime * result + ((thoiGianCapNhat == null) ? 0 : thoiGianCapNhat.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PhanHoi other = (PhanHoi) obj;
		if (maPhanHoi == null) {
			if (other.maPhanHoi != null)
				return false;
		} else if (!maPhanHoi.equals(other.maPhanHoi))
			return false;
		if (ngayPhanHoi == null) {
			if (other.ngayPhanHoi != null)
				return false;
		} else if (!ngayPhanHoi.equals(other.ngayPhanHoi))
			return false;
		if (noiDungPhanHoi == null) {
			if (other.noiDungPhanHoi != null)
				return false;
		} else if (!noiDungPhanHoi.equals(other.noiDungPhanHoi))
			return false;
		if (khachHang == null) {
			if (other.khachHang != null)
				return false;
		} else if (!khachHang.equals(other.khachHang))
			return false;
		if (thoiGianCapNhat == null) {
			if (other.thoiGianCapNhat != null)
				return false;
		} else if (!thoiGianCapNhat.equals(other.thoiGianCapNhat))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "PhanHoi [maPhanHoi=" + maPhanHoi + ", khachHang=" + khachHang + ", noiDungPhanHoi="
				+ noiDungPhanHoi + ", ngayPhanHoi=" + ngayPhanHoi + ", thoiGianCapNhat=" + thoiGianCapNhat + "]";
	}

	@Override
	public int compareTo(PhanHoi o) {
		return this.maPhanHoi.compareTo(o.maPhanHoi);
	}

}
