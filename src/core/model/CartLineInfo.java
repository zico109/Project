package core.model;

public class CartLineInfo {
	private Giuong giuongInfo;
	private int quantity;

	public CartLineInfo() {
		this.quantity = 0;
	}

	public Giuong getGiuongInfo() {
		return giuongInfo;
	}

	public void setGiuongInfo(Giuong giuongInfo) {
		this.giuongInfo = giuongInfo;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getAmount() {
		//long gia = this.giuongInfo.getPhong().getLoaiPhong().getGiaLP();
		return 100;
	}
}
