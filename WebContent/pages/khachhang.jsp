<%@page import="core.modelDAO.DAO_KhachHang"%>
<%@page import="core.model.KhachHang"%>
<%@page import="java.util.ArrayList"%>
<%@page import="core.dao.ObjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "KhachHang";
	String tenTrang = "Quản lý khách hàng";
	String trangDanhSach = "index.jsp?p=pages/khachhangs.jsp";
	String[] tk_value = { "maKH", "hoVaTenKH", "cmnd", "gioiTinh", "ngaySinh", "quocTich", "sdt", "email" };
	String[] tk_show = { "Mã Nhân Viên", "Họ Tên Nhân Viên", "CMND", "Giới Tính", "Ngày Sinh", "Quốc Tịch",
			"SDT", "Email" };
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

	KhachHang obj = session.getAttribute("obj") != null ? (KhachHang) session.getAttribute("obj") : null;
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
									<label>Mã khách hàng</label> <input class="form-control"
										name="maKH" value="<%=(obj != null ? obj.getMaKH() : "")%>"
										<%=(modeView || modeEdit ? " readonly " : "")%>>
								</div>
								<div class="form-group">
									<label>Họ tên khách hàng</label> <input class="form-control"
										name="hoVaTenKH"
										value="<%=(obj != null ? obj.getHoVaTenKH() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>CMND</label> <input class="form-control" name="cmnd"
										value="<%=(obj != null ? obj.getCmnd() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Giới tính</label> <input class="form-control"
										name="gioiTinh"
										value="<%=(obj != null ? obj.getGioiTinh() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Ngày sinh</label> <input class="form-control"
										name="ngaySinh"
										value="<%=(obj != null ? obj.getNgaySinh() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Quốc tịch</label> <input class="form-control"
										name="quocTich"
										value="<%=(obj != null ? obj.getQuocTich() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>SDT</label> <input class="form-control"
										name="sdt"
										value="<%=(obj != null ? obj.getSdt() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Email</label> <input class="form-control"
										name="email"
										value="<%=(obj != null ? obj.getEmail() : "")%>"
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