<%@page import="core.modelDAO.DAO_NhomPhanQuyen"%>
<%@page import="java.util.Date"%>
<%@page import="core.utils.Util_Date"%>
<%@page import="core.model.TaiKhoan"%>
<%@page import="core.model.TaiKhoanNhanVien"%>
<%@page import="core.model.TaiKhoanKhachHang"%>
<%@page import="java.util.ArrayList"%>
<%@page import="core.modelDAO.DAO_TaiKhoan"%>
<%@page import="core.dao.ObjectDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "TaiKhoanKhachHang";
	String tenTrang = "Quản lý Tài Khoản Khách Hàng";
	String trangDanhSach = "index.jsp?p=pages/taikhoankhachhangs.jsp";
	String[] tk_value = { "maDangNhap", "ngayTao", "loaiTaiKhoan", "hoVaTen", "email" };
	String[] tk_show = { "Mã đăng nhập", "Ngày tạo", "Loại tài khoản", "Họ và tên", "Email" };
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

	TaiKhoanKhachHang obj = null;
	if (session.getAttribute("obj") != null) {
		if (session.getAttribute("obj") instanceof TaiKhoanKhachHang) {
			obj = (TaiKhoanKhachHang) session.getAttribute("obj");
		}
	}
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
									<label>Mã đăng nhập</label> <input class="form-control"
										name="maDangNhap"
										value="<%=(obj != null ? obj.getMaDangNhap() : "")%>"
										<%=(modeView || modeEdit ? " readonly " : "")%>>
								</div>
								<div class="form-group">
									<label>Mật khẩu</label> <input class="form-control"
										name="matKhau" type="password"
										value="<%=(obj != null ? obj.getMatKhau() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Họ và tên</label> <input class="form-control"
										name="hoVaTen"
										value="<%=(obj != null ? obj.getHoVaTen() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
							</div>
							<div class="col-lg-6">
								
								<div class="form-group">
									<label>Trạng thái hoạt động</label> <select
										class="form-control" name="trangThaiHoatDong"
										<%=(modeView ? " readonly " : "")%>>
										<option
											<%=obj != null && obj.isTrangThaiHoatDong() == true ? "selected" : ""%>
											value="true">Hoạt động</option>
										<option
											<%=obj != null && obj.isTrangThaiHoatDong() == false ? "selected" : ""%>
											value="false">Không hoạt động</option>
									</select>
								</div>
								<div class="form-group">
									<label>Email</label> <input class="form-control" name="email"
										value="<%=(obj != null ? obj.getEmail() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Nhóm phân quyền</label> <select class="form-control"
										name="maNhomPhanQuyen"<%=(modeView ? " disabled " : "")%>>
										<option></option>
										<%
											ObjectDAO dao_nhomPhanQuyen = new DAO_NhomPhanQuyen();
											ArrayList<NhomPhanQuyen> listNhomPhanQuyen = dao_nhomPhanQuyen.listAll();
											for (int i = 0; i < listNhomPhanQuyen.size(); i++) {
												NhomPhanQuyen npq = listNhomPhanQuyen.get(i);
												if (obj != null && obj.getNhomPhanQuyen() != null
														&& obj.getNhomPhanQuyen().getMaNhomPhanQuyen().equals(npq.maNhomPhanQuyen)) {
										%>
										<option value="<%=npq.maNhomPhanQuyen%>" selected="selected"><%=npq.maNhomPhanQuyen%></option>
										<%
											} else {
										%>
										<option value="<%=npq.maNhomPhanQuyen%>"><%=npq.maNhomPhanQuyen%></option>
										<%
											}
										%>
										<%
											}
										%>
									</select>
								</div>
								<div class="form-group">
									<label>Mã khách hàng</label> <input class="form-control"
										name="maKH"
										value="<%=(obj != null && obj.getKhachHang()!=null? obj.getKhachHang().getMaKH() :"" )%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<input class="form-control"
										name="s_ngayTao" type="hidden"
										value="<%=(obj != null &&obj.getNgayTao()!=null? Util_Date.dateToString(obj.getNgayTao()) : new Date())%>"
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