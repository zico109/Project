package core.model;

import java.util.HashMap;
import java.util.Map;

//Giỏ hàng
public class Cart {
	private HashMap<String, GiuongDaDat> cartBeds;

	public Cart() {
		cartBeds = new HashMap<>();
	}

	public Cart(HashMap<String, GiuongDaDat> cartBeds) {
		this.cartBeds = cartBeds;
	}

	public HashMap<String, GiuongDaDat> getCartBeds() {
		return cartBeds;
	}

	public void setCartItems(HashMap<String, GiuongDaDat> cartBeds) {
		this.cartBeds = cartBeds;
	}

	// Thêm giỏ hàng(insert to cart)
	public void plusToCart(String key, GiuongDaDat giuongDaDat) {
		boolean check = cartBeds.containsKey(key);
		if (check) {
			int soluong_old = giuongDaDat.getSoLuong();
			giuongDaDat.setSoLuong(soluong_old + 1);
			cartBeds.put(key, giuongDaDat);
		} else {
			cartBeds.put(key, giuongDaDat);
		}
	}

	// Tính tổng sản phẩm trong giỏ
	public void subToCart(String key, GiuongDaDat giuongDaDat) {
		boolean check = cartBeds.containsKey(key);
		if (check) {
			int soluong_old = giuongDaDat.getSoLuong();
			if (soluong_old <= 1) {
				cartBeds.remove(key);
			} else {
				giuongDaDat.setSoLuong(soluong_old - 1);
				cartBeds.put(key, giuongDaDat);
			}
		}
	}

	// xóa giỏ hàng
	public void removeToCart(String key) {
		boolean check = cartBeds.containsKey(key);
		if (check) {
			cartBeds.remove(key);
		}
	}

	// đếm số lượng sản phẩm trong giỏ
	public int countbed() {
		return cartBeds.size();
	}

	// tính tổng
	public double totalCart() {
		int count = 0;
		// count = giaBan * quantity
		for (Map.Entry<String, GiuongDaDat> list : cartBeds.entrySet()) {
			count += list.getValue().getGiuong().getPhong().getLoaiPhong().getGiaLP() * list.getValue().getSoLuong();
		}
		return count;
	}
}
