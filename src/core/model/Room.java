package core.model;

// Chứa sản phẩm và số lượng trong giỏ
public class Room {
	private Phong phong;
	private int soluong;
	/**
	 * 
	 */
	public Room() {
	}
	/**
	 * @param phong
	 * @param soluong
	 */
	public Room(Phong phong, int soluong) {
		this.phong = phong;
		this.soluong = soluong;
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
		this.phong = phong;
	}
	/**
	 * @return the soluong
	 */
	public int getSoluong() {
		return soluong;
	}
	/**
	 * @param soluong the soluong to set
	 */
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}



}
