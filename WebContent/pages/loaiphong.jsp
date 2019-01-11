<%@page import="core.modelDAO.DAO_LoaiPhong"%>
<%@page import="core.model.LoaiPhong"%>
<%@page import="core.model.LoaiPhong"%>
<%@page import="java.util.ArrayList"%>
<%@page import="core.dao.ObjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "LoaiPhong";
	String tenTrang = "Quản lý loại phòng";
	String trangDanhSach = "index.jsp?p=pages/phongs.jsp";
	String[] tk_value = { "maLP", "tenLP", "giaLP", "tienNghi", "soLuongPhong", "anh" };
	String[] tk_show = { "Mã Loại Phòng", "Tên Loại Phòng", "Giá Loại Phòng", "Tiện nghi", "Số Lượng Phòng","Ảnh" };
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

	LoaiPhong obj = session.getAttribute("obj") != null ? (LoaiPhong) session.getAttribute("obj") : null;
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
									<label>Mã loại phòng</label> <input class="form-control" name="maLP"
										value="<%=(obj != null ? obj.getMaLP() : "")%>"
										<%=(modeView || modeEdit ? " readonly " : "")%>>
								</div>
								<div class="form-group">
									<label>Tên loại phòng</label> <input class="form-control"
										name="tenLP"
										value="<%=(obj != null ? obj.getTenLP() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Giá loại phòng</label> <input class="form-control" name="giaLP"
										value="<%=(obj != null ? obj.getGiaLP() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Tiện nghi</label> <input class="form-control"
										name="tienNghi"
										value="<%=(obj != null ? obj.getTienNghi() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Số lượng phòng</label> <input class="form-control"
										name="soLuongPhong"
										value="<%=(obj != null ? obj.getSoLuongPhong() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Ảnh</label> <input class="form-control"
										name="anh"
										value="<%=(obj != null ? obj.getAnh() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
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