<%@page import="core.modelDAO.DAO_NhanVien"%>
<%@page import="core.model.NhanVien"%>
<%@page import="java.util.ArrayList"%>
<%@page import="core.dao.ObjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "NhanVien";
	String tenTrang = "Quản lý nhân viên";
	String trangDanhSach = "index.jsp?p=pages/nhanviens.jsp";
	String[] tk_value = { "maNV", "hoVaTenNV", "cmnd", "diaChi", "queQuan", "danToc", "gioiTinh", "ngaySinh", "sdt", "email", "chucVu", "bacLuong", "trinhDo","ngayTuyenDung" };
	String[] tk_show = { "Mã Nhân Viên", "Họ Tên Nhân Viên", "CMND", "Địa Chỉ", "Quê Quán", "Dân Tộc", "Giới Tính", "Ngày Sinh", "SDT", "Email", "Chức Vụ","Bậc lương", "Trình Độ", "Ngày Tuyển Dụng" };
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

	NhanVien obj = session.getAttribute("obj") != null ? (NhanVien) session.getAttribute("obj") : null;
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
									<label>Mã nhân viên</label> <input class="form-control" name="maNV"
										value="<%=(obj != null ? obj.getMaNV() : "")%>"
										<%=(modeView || modeEdit ? " readonly " : "")%>>
								</div>
								<div class="form-group">
									<label>Họ tên nhân viên</label> <input class="form-control"
										name="hoVaTenNV"
										value="<%=(obj != null ? obj.getHoVaTenNV() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>CMND</label> <input class="form-control" name="cmnd"
										value="<%=(obj != null ? obj.getCmnd() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Địa chỉ</label> <input class="form-control"
										name="diaChi"
										value="<%=(obj != null ? obj.getDiaChi() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Quê quán</label> <input class="form-control"
										name="queQuan"
										value="<%=(obj != null ? obj.getQueQuan() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Dân tộc</label> <input class="form-control"
										name="danToc"
										value="<%=(obj != null ? obj.getDanToc() : "")%>"
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
								<div class="form-group">
									<label>Chức vụ</label> <input class="form-control"
										name="chucVu"
										value="<%=(obj != null ? obj.getChucVu() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Bậc lương</label> <input class="form-control"
										name="bacLuong"
										value="<%=(obj != null ? obj.getBacLuong() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Trình độ</label> <input class="form-control"
										name="trinhDo"
										value="<%=(obj != null ? obj.getTrinhDo() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Ngày tuyển dụng</label> <input class="form-control"
										name="ngayTuyenDung"
										value="<%=(obj != null ? obj.getNgayTuyenDung() : "")%>"
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