package core.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Catch;

import core.dao.GiuongDAO;
import core.model.Cart;
import core.model.CartInfo;
import core.model.GiuongDaDat;
import core.utils.CartUtil;
import core.model.Giuong;


/**
 * Servlet implementation class CartServlet
 */

public class CartServlet extends HttpServlet {
	
	private final GiuongDAO giuongDAO = new GiuongDAO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String command = request.getParameter("command");
		//String maGiuong = request.getParameter("maGiuong");
		//Cart cart = (Cart) session.getAttribute("cart");	
		CartInfo myCart = CartUtil.getCartInSession(request);
		try {
			//Giuong giuong = giuongDAO.getGiuong(maGiuong);
			 switch (command) {
             case "plus":
                 /*if (cart.getCartBeds().containsKey(maGiuong)) {
                     cart.plusToCart(maGiuong, new GiuongDaDat(giuong,
                             cart.getCartBeds().get(maGiuong).getSoLuong()));
                 } else {
                     cart.plusToCart(maGiuong, new GiuongDaDat(giuong, 1));
                 }*/
            	 String maGiuong = request.getParameter("maGiuong");
            	 Giuong giuongInfo = new GiuongDAO().getGiuong(maGiuong);
            	 myCart.addGiuong(giuongInfo, 1);
            	 response.sendRedirect("./beds.jsp");
                 break;
             case "remove":
            	 String maGiuong1 = request.getParameter("maGiuong");
            	 Giuong giuongInfo1 = new GiuongDAO().getGiuong(maGiuong1);
                 myCart.removeGiuong(giuongInfo1);
                 break;
         }
     } catch (Exception e) {
         e.printStackTrace();
         response.sendRedirect("/Project/beds.jsp");
     }
/*     session.setAttribute("cart", cart);
     response.sendRedirect("/Project/beds.jsp");*/
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
		
	}


}