<%@page import="core.model.Phong"%>
<%@page import="core.modelDAO.DAO_Phong"%>
<%@page import="core.modelDAO.DAO_Giuong"%>
<%@page import="core.model.Giuong"%>
<%@page import="java.util.ArrayList"%>
<%@page import="core.dao.ObjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "Giuong";
	String tenTrang = "Quản lý giường";
	String trangDanhSach = "index.jsp?p=pages/giuongs.jsp";
	String[] tk_value = { "maGiuong","trangThai", "phong" };
	String[] tk_show = { "Mã Phòng", "Trạng Thái", "Phòng" };
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

	Giuong obj = session.getAttribute("obj") != null ? (Giuong) session.getAttribute("obj") : null;
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
									<label>Mã giường</label> <input class="form-control" name="maGiuong"
										value="<%=(obj != null ? obj.getMaGiuong() : "")%>"
										<%=(modeView || modeEdit ? " readonly " : "")%>>
								</div>
								<div class="form-group">
									<label>Trạng thái</label> <input class="form-control"
										name="trangThai"
										value="<%=(obj != null ? obj.getTrangThai() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
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
												if (obj != null && obj.getPhong() != null
														&& obj.getPhong().getMaPhong().equals(p.maPhong)) {
										%>
										<option value="<%=p.maPhong%>" selected="selected"><%=p.tenPhong%></option>
										<%
											} else {
										%>
										<option value="<%=p.maPhong%>"><%=p.tenPhong%></option>
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