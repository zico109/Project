<%@page import="core.modelDAO.DAO_ThongTinDatPhong"%>
<%@page import="core.modelDAO.DAO_KhachHang"%>
<%@page import="core.modelDAO.DAO_Phong"%>
<%@page import="core.modelDAO.DAO_LoaiPhong"%>
<%@page import="core.model.Phong"%>
<%@page import="core.model.ThongTinDatPhong"%>
<%@page import="core.model.KhachHang"%>
<%@page import="core.model.LoaiPhong"%>
<%@page import="java.util.ArrayList"%>
<%@page import="core.dao.ObjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "ThongTinDatPhong";
	String tenTrang = "Quản lý thông tin đặt phòng";
	String trangDanhSach = "index.jsp?p=pages/thongtindatphongs.jsp";
	String[] tk_value = { "maThongTinDatPhong", "soLuongNguoi", "ngayDen", "ngayDi", "loaiPhong", "phong",
			"khachHang" };
	String[] tk_show = { "Mã thông tin đặt phòng", "Số Lượng Người", "Ngày đến", "Ngày đi", "Loại Phòng",
			"Phòng", "Khách hàng" };
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

	ThongTinDatPhong obj = session.getAttribute("obj") != null ? (ThongTinDatPhong) session.getAttribute("obj")
			: null;
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
									<label>Mã thông tin đặt phòng</label> <input
										class="form-control" name="maThongTinDatPhong"
										value="<%=(obj != null ? obj.getMaThongTinDatPhong() : "")%>"
										<%=(modeView || modeEdit ? " readonly " : "")%>>
								</div>
								<div class="form-group">
									<label>Số lượng người</label> <input class="form-control"
										name="soLuongNguoi"
										value="<%=(obj != null ? obj.getSoLuongNguoi() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Ngày đến</label> <input class="form-control"
										name="ngayDen"
										value="<%=(obj != null ? obj.getNgayDen() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Ngày đi</label> <input class="form-control"
										name="ngayDi"
										value="<%=(obj != null ? obj.getNgayDi() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Loại phòng</label> <select class="form-control"
										name="maLP" <%=(modeView ? " disabled " : "")%>>
										<option></option>
										<%
											ObjectDAO dao_loaiphong = new DAO_LoaiPhong();
											ArrayList<LoaiPhong> listLoaiPhong = dao_loaiphong.listAll();
											for (int i = 0; i < listLoaiPhong.size(); i++) {
												LoaiPhong lp = listLoaiPhong.get(i);
												if (obj != null && obj.getLoaiPhong() != null && obj.getLoaiPhong().getMaLP().equals(lp.maLP)) {
										%>
										<option value="<%=lp.maLP%>" selected="selected"><%=lp.tenLP%></option>
										<%
											} else {
										%>
										<option value="<%=lp.maLP%>"><%=lp.tenLP%></option>
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