<%@page import="core.modelDAO.DAO_ThongTinGiaoPhong"%>
<%@page import="core.model.ThongTinGiaoPhong"%>
<%@page import="core.modelDAO.DAO_HoaDonDatPhong"%>
<%@page import="core.model.HoaDonDatPhong"%>
<%@page import="core.modelDAO.DAO_LoaiPhong"%>
<%@page import="core.model.LoaiPhong"%>
<%@page import="core.modelDAO.DAO_NhanVien"%>
<%@page import="core.model.NhanVien"%>
<%@page import="core.modelDAO.DAO_KhachHang"%>
<%@page import="core.model.KhachHang"%>
<%@page import="core.modelDAO.DAO_Phong"%>
<%@page import="core.model.Phong"%>
<%@page import="java.util.ArrayList"%>
<%@page import="core.dao.ObjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "ThongTinGiaoPhong";
	String tenTrang = "Quản lý thông tin giao phòng";
	String trangDanhSach = "index.jsp?p=pages/thongtingiaophongs.jsp";
	String[] tk_value = { "maThongTinGiaoPhong", "trangThaiGiaoPhong", "hoaDonDatPhong", "khachHang", "phong" };
	String[] tk_show = { "Mã thông tin giao phòng", "Trạng thái giao phòng", "Hóa đơn đặt phòng", "Khách hàng",
			"Phòng" };
%>
<%@ include file="../../hostelPartial/code-header.jsp"%>

<%
	String mode = session.getAttribute("mode") + "";
	String tenTrangChiTiet = "";
	tenTrangChiTiet = mode.equals("addNew") ? "Thêm mới" : tenTrangChiTiet;
	tenTrangChiTiet = mode.equals("viewDetail") ? "Xem thông tin chi tiết" : tenTrangChiTiet;
	tenTrangChiTiet = mode.equals("viewDetailAndEdit") ? "Chỉnh sửa thông tin" : tenTrangChiTiet;
	tenTrangChiTiet = mode.equals("null") ? "" : tenTrangChiTiet;

	boolean modeView = mode.equals("viewDetail");
	boolean modeEdit = mode.equals("viewDetailAndEdit");

	ThongTinGiaoPhong obj = session.getAttribute("obj") != null
			? (ThongTinGiaoPhong) session.getAttribute("obj") : null;
%>
<div class="row">
	<div class="col-lg-12">
		<h4 class="page-header"><%=tenTrang%>
			-
			<%=tenTrangChiTiet%>
		</h4>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<form action="luuDuLieu<%=tenLop%>.action" method="post">
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading" style="text-align: left;">
					<div class="row">
						<div class="col-md-5">
							<p style="color: red; display: inline;"><%=msg%></p>
						</div>
						<div class="col-md-7">
							<%@ include file="../../hostelPartial/processform.jsp"%>
						</div>
					</div>
				</div>
				<div class="panel-body">
					<div class="row" style="padding: 10px">
						<div class="row">
							<div class="col-lg-6">
								<div class="form-group">
									<label>Mã thông tin giao phòng</label> <input
										class="form-control" name="maThongTinGiaoPhong"
										value="<%=(obj != null ? obj.getMaThongTinGiaoPhong() : "")%>"
										<%=(modeView || modeEdit ? " readonly " : "")%>>
								</div>
<!-- 								<div class="form-group"> -->
<!-- 									<label>Trạng thái giao phòng</label> <input -->
<!-- 										class="form-control" name="trangThaiGiaoPhong" -->
<%-- 										value="<%=(obj != null ? obj.getTrangThaiGiaoPhong() : "")%>" --%>
<%-- 										<%=(modeView ? " disabled " : "")%>> --%>
<!-- 								</div> -->
								<div class="form-group">
									<label>Trạng thái giao phòng</label> <input
										class="form-control" name="trangThaiGiaoPhong"
										value="<%=(obj != null ? obj.getTrangThaiGiaoPhong() : "")%>"
										<%=(modeView || modeEdit ? " readonly " : "")%>>
								</div>
								<div class="form-group">
									<label>Phòng</label> <select class="form-control"
										name="maPhong" <%=(modeView ? " disabled " : "")%>>
										<option></option>
										<%
											ObjectDAO dao_phong = new DAO_Phong();
											ArrayList<Phong> listPhong = dao_phong.listAll();
											for (int i = 0; i < listPhong.size(); i++) {
												Phong p = listPhong.get(i);
												if (obj != null && obj.getPhong() != null && obj.getPhong().getMaPhong().equals(p.maPhong)) {
										%>
										<option value="<%=p.maPhong%>" selected="selected"><%=p.maPhong%></option>
										<%
											} else {
										%>
										<option value="<%=p.maPhong%>"><%=p.maPhong%></option>
										<%
											}
										%>
										<%
											}
										%>
									</select>
								</div>
								<div class="form-group">
									<label>Khách hàng</label> <select class="form-control"
										name="maKH" <%=(modeView ? " disabled " : "")%>>
										<option></option>
										<%
											ObjectDAO dao_khachhang = new DAO_KhachHang();
											ArrayList<KhachHang> listKhachHang = dao_khachhang.listAll();
											for (int i = 0; i < listKhachHang.size(); i++) {
												KhachHang kh = listKhachHang.get(i);
												if (obj != null && obj.getKhachHang() != null && obj.getKhachHang().getMaKH().equals(kh.maKH)) {
										%>
										<option value="<%=kh.maKH%>" selected="selected"><%=kh.maKH%></option>
										<%
											} else {
										%>
										<option value="<%=kh.maKH%>"><%=kh.maKH%></option>
										<%
											}
										%>
										<%
											}
										%>
									</select>
								</div>
								<div class="form-group">
									<label>Hóa đơn đặt phòng</label> <select class="form-control"
										name="soHD" <%=(modeView ? " disabled " : "")%>>
										<option></option>
										<%
											ObjectDAO dao_hoadondatphong = new DAO_HoaDonDatPhong();
											ArrayList<HoaDonDatPhong> listHoaDonDatPhong = dao_hoadondatphong.listAll();
											for (int i = 0; i < listHoaDonDatPhong.size(); i++) {
												HoaDonDatPhong hddp = listHoaDonDatPhong.get(i);
												if (obj != null && obj.getHoaDonDatPhong() != null && obj.getHoaDonDatPhong().getSoHD().equals(hddp.soHD)) {
										%>
										<option value="<%=hddp.soHD%>" selected="selected"><%=hddp.soHD%></option>
										<%
											} else {
										%>
										<option value="<%=hddp.soHD%>"><%=hddp.soHD%></option>
										<%
											}
										%>
										<%
											}
										%>
									</select>
								</div>
							</div>
							<div class="panel-footer" style="text-align: left;">
								<div class="col-md-5"></div>
								<div class="col-md-7">
									<%@ include file="../../hostelPartial/processform.jsp"%>
								</div>
							</div>
							<!-- /.col-lg-6 (nested) -->
							<!-- /.col-lg-6 (nested) -->
						</div>
						<!-- /.row (nested) -->
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
</form>