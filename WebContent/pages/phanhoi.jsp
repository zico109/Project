<%@page import="core.modelDAO.DAO_KhachHang"%>
<%@page import="java.util.Date"%>
<%@page import="core.utils.Util_Date"%>
<%@page import="core.modelDAO.DAO_PhanHoi"%>
<%@page import="core.model.NhanVien"%>
<%@page import="core.model.KhachHang"%>
<%@page import="core.model.PhanHoi"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String tenLop = "PhanHoi";
	String tenTrang = "Quản lý phản hồi";
	String trangDanhSach = "index.jsp?p=pages/phanhois.jsp";
	String[] tk_value = { "maPhanHoi", "khachhang", "noiDungPhanHoi", "ngayPhanHoi" };
	String[] tk_show = { "Mã phản hồi", "Khách hàng", "Nội dung phản hồi", "Ngày phản hồi" };
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

	PhanHoi obj = session.getAttribute("obj") != null ? (PhanHoi) session.getAttribute("obj") : null;
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
									<label>Mã phản hồi</label> <input class="form-control"
										name="maPhanHoi"
										value="<%=(obj != null ? obj.getMaPhanHoi() : "")%>"
										<%=(modeView || modeEdit ? " readonly " : "")%>>
								</div>
								<div class="form-group">
									<label>Nội dung phản hồi</label> <input class="form-control"
										name="noiDungPhanHoi"
										value="<%=(obj != null ? obj.getNoiDungPhanHoi() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Ngày phản hồi <span class="text-danger">(*)</span></label>
									<input type="date" class="form-control" name="s_ngayPhanHoi"
										value="<%=(obj != null ? Util_Date.dateToString(obj.getNgayPhanHoi()) : Util_Date.dateToString(new Date()))%>"
										disabled required="required">
								</div>

								<div class="form-group">
									<label>Mã khách hàng <span class="text-danger">(*)</span></label>
									<input class="form-control" name="maKhachHang"
										<%=(modeView ? " readonly " : "")%>
										value='<%=obj != null && obj.getKhachHang() != null ? obj.getKhachHang().getMaKH() : ""%> '

							
									>
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