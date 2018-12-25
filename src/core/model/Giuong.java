package core.model;

import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Entity;
import javax.persistence.FetchType;
@Entity
public class Giuong implements Comparable<Giuong> {
	@Id
	public String maGiuong;
	public String trangThai;
	@ManyToOne(fetch = FetchType.EAGER)
	public Phong phong;
	/**
	 * 
	 */
	public Giuong() {
	}
	/**
	 * @param maGiuong
	 * @param trangThai
	 * @param phong
	 */
	public Giuong(String maGiuong, String trangThai, core.model.Phong phong) {
		this.maGiuong = maGiuong;
		this.trangThai = trangThai;
		phong = phong;
	}
	/**
	 * @return the maGiuong
	 */
	public String getMaGiuong() {
		return maGiuong;
	}
	/**
	 * @param maGiuong the maGiuong to set
	 */
	public void setMaGiuong(String maGiuong) {
		this.maGiuong = maGiuong;
	}
	/**
	 * @return the trangThai
	 */
	public String getTrangThai() {
		return trangThai;
	}
	/**
	 * @param trangThai the trangThai to set
	 */
	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
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
		phong = phong;
	}
	
	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((phong == null) ? 0 : phong.hashCode());
		result = prime * result + ((maGiuong == null) ? 0 : maGiuong.hashCode());
		result = prime * result + ((trangThai == null) ? 0 : trangThai.hashCode());
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
		Giuong other = (Giuong) obj;
		if (phong == null) {
			if (other.phong != null)
				return false;
		} else if (!phong.equals(other.phong))
			return false;
		if (maGiuong == null) {
			if (other.maGiuong != null)
				return false;
		} else if (!maGiuong.equals(other.maGiuong))
			return false;
		if (trangThai != other.trangThai)
			return false;
		return true;
	}
	
	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Giuong [maGiuong=" + maGiuong + ", trangThai=" + trangThai + ", Phong=" + phong + "]";
	}
	@Override
	public int compareTo(Giuong o) {
		return this.maGiuong.compareTo(o.maGiuong);
	}
	
	

}
