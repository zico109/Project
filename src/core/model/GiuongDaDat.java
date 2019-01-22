package core.model;

public class GiuongDaDat {
	
	private Giuong giuong;
	private int soLuong;
	/**
	 * 
	 */
	public GiuongDaDat() {
	}
	/**
	 * @param giuong
	 * @param soLuong
	 */
	public GiuongDaDat(Giuong giuong, int soLuong) {
		this.giuong = giuong;
		this.soLuong = soLuong;
	}
	/**
	 * @return the giuong
	 */
	public Giuong getGiuong() {
		return giuong;
	}
	/**
	 * @param giuong the giuong to set
	 */
	public void setGiuong(Giuong giuong) {
		this.giuong = giuong;
	}
	/**
	 * @return the soLuong
	 */
	public int getSoLuong() {
		return soLuong;
	}
	/**
	 * @param soLuong the soLuong to set
	 */
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	
	
	

}
