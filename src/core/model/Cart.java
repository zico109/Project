package core.model;

import java.util.HashMap;
import java.util.Map;

//Giỏ hàng
public class Cart {
	private HashMap<String, Room> cartRooms;

	public Cart() {
		cartRooms = new HashMap<>();
	}

	public Cart(HashMap<String, Room> cartRooms) {
		this.cartRooms = cartRooms;
	}

	public HashMap<String, Room> getCartRooms() {
		return cartRooms;
	}

	public void setCartItems(HashMap<String, Room> cartRooms) {
		this.cartRooms = cartRooms;
	}

	// Thêm giỏ hàng(insert to cart)
	public void plusToCart(String key, Room room) {
		boolean check = cartRooms.containsKey(key);
		if (check) {
			int soluong_old = room.getSoluong();
			room.setSoluong(soluong_old + 1);
			cartRooms.put(key, room);
		} else {
			cartRooms.put(key, room);
		}
	}

	// Tính tổng sản phẩm trong giỏ
	public void subToCart(String key, Room room) {
		boolean check = cartRooms.containsKey(key);
		if (check) {
			int soluong_old = room.getSoluong();
			if (soluong_old <= 1) {
				cartRooms.remove(key);
			} else {
				room.setSoluong(soluong_old - 1);
				cartRooms.put(key, room);
			}
		}
	}

	// xóa giỏ hàng
	public void removeToCart(String key) {
		boolean check = cartRooms.containsKey(key);
		if (check) {
			cartRooms.remove(key);
		}
	}

	// đếm số lượng sản phẩm trong giỏ
	public int countroom() {
		return cartRooms.size();
	}

	// tính tổng
	public double totalCart() {
		int count = 0;
		// count = giaBan * quantity
		for (Map.Entry<String, Room> list : cartRooms.entrySet()) {
			count += list.getValue().getPhong().getLoaiPhong().getGiaLP() * list.getValue().getSoluong();
		}
		return count;
	}
}
