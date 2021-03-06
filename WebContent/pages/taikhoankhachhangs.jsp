<%@page import="core.model.KhachHang"%>
<%@page import="core.utils.Util_Date"%>
<%@page import="core.modelDAO.DAO_TaiKhoan"%>
<%@page import="core.model.TaiKhoan"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="core.dao.ObjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "TaiKhoanKhachHang";
	String tenTrang = "Quản lý Tài Khoản Khách Hàng";
	String[] tk_value = { "maDangNhap", "ngayTao", "loaiTaiKhoan", "hoVaTen", "email" };
	String[] tk_show = { "Mã đăng nhập", "Ngày tạo", "Loại tài khoản", "Họ và tên", "Email" };
%>

<%@ include file="../../hostelPartial/code-header.jsp"%>

<%
	ObjectDAO<TaiKhoanKhachHang> dao = new DAO_TaiKhoanKhachHang();

	ArrayList<TaiKhoanKhachHang> list = new ArrayList<TaiKhoanKhachHang>();

	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
			if (listTemp.get(0) instanceof TaiKhoanKhachHang) {
				list = (ArrayList<TaiKhoanKhachHang>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<TaiKhoanKhachHang>();
	} else {
		list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
	}
%>


<div class="row">
	<div class="col-lg-12">
		<h4 class="page-header"><%=tenTrang%>
			<p style="color: red; display: inline;"><%=msg%></p>
		</h4>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<%@ include file="../../hostelPartial/panel-heading.jsp"%>
		<!-- /.panel-heading -->
		<div class="panel-body">
			<table width="100%"
				class="table table-striped table-bordered table-hover"
				id="dataTables-example">
				<thead>
					<tr>
						<th>Mã đăng nhập</th>
						<th>Loại tài khoản</th>
						<th>Trạng thái hoạt động</th>
						<th>Email</th>
						<th>Họ và tên</th>
						<th>Xử lí</th>

					</tr>
				</thead>
				<tbody>
					<%
						for (TaiKhoanKhachHang obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaDangNhap();
							String tenDoiTuong = obj.getHoVaTen();
					%>
					<tr class="odd gradeX">
						<td><%=obj.getMaDangNhap()%></td>
						<td><%=obj.getLoaiTaiKhoan() != null ? obj.getLoaiTaiKhoan() : ""%></td>
						<td><%=obj.isTrangThaiHoatDong() == true ? "Hoạt động" : "Không hoạt động"%></td>
						<td><%=obj.getEmail() != null ? obj.getEmail() : ""%></td>
						<td><%=obj != null && obj.getKhachHang() != null ? obj.getKhachHang().getHoVaTenKH() : ""%></td>

						<td style="text-align: center;">
							<%-- 						<%@ include --%> <%-- 								file="../../hostelPartial/menupullcuadoituong.jsp"%></td> --%>

							<div class="pull-center">
								<div class="btn-group">
									<button type="button"
										class="btn btn-default btn-xs dropdown-toggle"
										data-toggle="dropdown">
										<img src="content/images/menu-16.png" /> Chọn chức năng <span
											class="caret"></span>
									</button>
									<ul class="dropdown-menu pull-right" role="menu">
										<li><a
											href="xemChiTiet<%=tenLop%>.action?maobj=<%=maDoiTuong%>"><img
												src="content/images/detail-16.png" />&nbsp;&nbsp; Xem chi
												tiết</a></li>
										<li id="xemChiTietVaChinhSuaDoiTuong"><a
											href="xemChiTietVaChinhSua<%=tenLop%>.action?maobj=<%=maDoiTuong%>"><img
												src="content/images/edit-16.png" />&nbsp;&nbsp; Chỉnh sửa</a></li>
										<li id="xoaDoiTuong"><a id="<%=tenLop%>"
											title="<%=maDoiTuong%>" target="<%=tenDoiTuong%>"
											onclick="confirmDelete(this)"><img
												src="content/images/delete-16.png" />&nbsp;&nbsp; Xóa</a></li>
									</ul>
								</div>
							</div>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<!-- /.table-responsive -->
			<!-- Phan trang -->
			<%@ include file="../../hostelPartial/phantrang.jsp"%>
			<!-- ket thuc phan trang -->
		</div>
		<!-- /.panel-body -->
	</div>
	<!-- /.panel -->
</div>
<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<!-- Modal Tìm kiếm-->
<%@ include file="../../hostelPartial/timkiemModel.jsp"%>