<%@page import="core.modelDAO.DAO_HoaDonDatPhong"%>
<%@page import="core.model.HoaDonDatPhong"%>
<%@page import="core.modelDAO.DAO_LoaiPhong"%>
<%@page import="core.model.LoaiPhong"%>
<%@page import="core.modelDAO.DAO_NhanVien"%>
<%@page import="core.model.NhanVien"%>
<%@page import="core.modelDAO.DAO_KhachHang"%>
<%@page import="core.model.KhachHang"%>
<%@page import="core.modelDAO.DAO_ThongTinDatPhong"%>
<%@page import="core.model.ThongTinDatPhong"%>
<%@page import="java.util.ArrayList"%>
<%@page import="core.dao.ObjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "HoaDonDatPhong";
	String tenTrang = "Quản lý hóa đơn";
	String trangDanhSach = "index.jsp?p=pages/hoadondatphongs.jsp";
	String[] tk_value = { "soHD", "trangThaiThanhToan", "ngayDat", "thanhTien", "khachHang", "nhanVien",
			"loaiPhong", "thongTinDatPhong" };
	String[] tk_show = { "Số hóa đơn", "Trạng thái thanh toán", "Ngày đặt", "Thành tiền", "Khách hàng",
			"Nhân viên", "Loại phòng", "Thông tin đặt phòng" };
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

	HoaDonDatPhong obj = session.getAttribute("obj") != null ? (HoaDonDatPhong) session.getAttribute("obj")
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
									<label>Số hóa đơn</label> <input class="form-control"
										name="soHD" value="<%=(obj != null ? obj.getSoHD() : "")%>"
										<%=(modeView || modeEdit ? " readonly " : "")%>>
								</div>
								<div class="form-group">
									<label>Trạng thái thanh toán</label> <input
										class="form-control" name="trangThaiThanhToan"
										value="<%=(obj != null ? obj.getTrangThaiThanhToan() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Ngày đặt</label> <input class="form-control"
										name="ngayDat"
										value="<%=(obj != null ? obj.getNgayDat() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Thành tiền</label> <input class="form-control"
										name="thanhTien"
										value="<%=(obj != null ? obj.getThanhTien() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
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
									<label>Nhân viên</label> <select class="form-control"
										name="maNV" <%=(modeView ? " disabled " : "")%>>
										<option></option>
										<%
											ObjectDAO dao_nhanvien = new DAO_NhanVien();
											ArrayList<NhanVien> listNhanVien = dao_nhanvien.listAll();
											for (int i = 0; i < listNhanVien.size(); i++) {
												NhanVien nv = listNhanVien.get(i);
												if (obj != null && obj.getNhanVien() != null && obj.getNhanVien().getMaNV().equals(nv.maNV)) {
										%>
										<option value="<%=nv.maNV%>" selected="selected"><%=nv.maNV%></option>
										<%
											} else {
										%>
										<option value="<%=nv.maNV%>"><%=nv.maNV%></option>
										<%
											}
										%>
										<%
											}
										%>
									</select>
								</div>
								<div class="form-group">
									<label>Thông tin đặt phòng</label> <select class="form-control"
										name="maThongTinDatPhong" <%=(modeView ? " disabled " : "")%>>
										<option></option>
										<%
											ObjectDAO dao_thongtindatphong = new DAO_ThongTinDatPhong();
											ArrayList<ThongTinDatPhong> listThongTinDatPhong = dao_thongtindatphong.listAll();
											for (int i = 0; i < listThongTinDatPhong.size(); i++) {
												ThongTinDatPhong ttdp = listThongTinDatPhong.get(i);
												if (obj != null && obj.getNhanVien() != null
														&& obj.getThongTinDatPhong().getMaThongTinDatPhong().equals(ttdp.maThongTinDatPhong)) {
										%>
										<option value="<%=ttdp.maThongTinDatPhong%>"
											selected="selected"><%=ttdp.maThongTinDatPhong%></option>
										<%
											} else {
										%>
										<option value="<%=ttdp.maThongTinDatPhong%>"><%=ttdp.maThongTinDatPhong%></option>
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