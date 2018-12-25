<%@page import="core.modelDAO.DAO_LoaiPhong"%>
<%@page import="core.model.Phong"%>
<%@page import="core.model.LoaiPhong"%>
<%@page import="java.util.ArrayList"%>
<%@page import="core.dao.ObjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "Phong";
	String tenTrang = "Quản lý Phòng";
	String trangDanhSach = "index.jsp?p=pages/phongs.jsp";
	String[] tk_value = { "maPhong", "tenPhong", "soLuongNguoi", "trangThai", "loaiPhong" };
	String[] tk_show = { "Mã Phòng", "Tên Phòng", "Số Lượng Người", "Trạng Thái", "Loại Phòng" };
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

	Phong obj = session.getAttribute("obj") != null ? (Phong) session.getAttribute("obj") : null;
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
									<label>Mã phòng</label> <input class="form-control" name="maPhong"
										value="<%=(obj != null ? obj.getMaPhong() : "")%>"
										<%=(modeView || modeEdit ? " readonly " : "")%>>
								</div>
								<div class="form-group">
									<label>Tên phòng</label> <input class="form-control"
										name="tenPhong"
										value="<%=(obj != null ? obj.getTenPhong() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Số lượng người</label> <input class="form-control" name="soLuongNguoi"
										value="<%=(obj != null ? obj.getSoLuongNguoi() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Trạng thái</label> <input class="form-control"
										name="trangThai"
										value="<%=(obj != null ? obj.getTrangThai() : "")%>"
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
												if (obj != null && obj.getLoaiPhong() != null
														&& obj.getLoaiPhong().getMaLP().equals(lp.maLP)) {
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