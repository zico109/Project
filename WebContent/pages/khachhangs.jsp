<%@page import="core.model.KhachHang"%>
<%@page import="core.modelDAO.DAO_KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "KhachHang";
	String tenTrang = "Quản lý khách hàng";
	String trangDanhSach = "index.jsp?p=pages/khachhangs.jsp";
	String[] tk_value = {"maKH", "hoVaTenKH", "cmnd", "gioiTinh", "ngaySinh", "quocTich", "sdt", "email"};
	String[] tk_show = {"Mã Nhân Viên", "Họ Tên Nhân Viên", "CMND", "Giới Tính", "Ngày Sinh", "Quốc Tịch",
			"SDT", "Email"};
%>
<%@ include file="../../hostelPartial/code-header.jsp"%>

<%
	ObjectDAO<KhachHang> dao = new DAO_KhachHang();

	ArrayList<KhachHang> list = new ArrayList<KhachHang>();

	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
			if (listTemp.get(0) instanceof KhachHang) {
				list = (ArrayList<KhachHang>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<KhachHang>();
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
						<th>Mã khách hàng</th>
						<th>Họ tên khách hàng</th>
						<th>CMND</th>
						<th>Giới tính</th>
						<th>Ngày sinh</th>
						<th>Quốc tịch</th>
						<th>SDT</th>
						<th>Email</th>
					</tr>
				</thead>
				<tbody>
					<%
						for (KhachHang obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaKH();
							String tenDoiTuong = obj.getHoVaTenKH();
					%>
					<tr class="odd gradeX">
						<td><%=obj.getMaKH() != null ? obj.getMaKH() : ""%></td>
						<td><%=obj.getHoVaTenKH() != null ? obj.getHoVaTenKH() : ""%></td>
						<td><%=obj.getCmnd() != null ? obj.getCmnd() : ""%></td>
						<td><%=obj.getGioiTinh() == null ? obj.getGioiTinh() : ""%></td>
						<td><%=obj.getNgaySinh() == null ? obj.getNgaySinh() : ""%></td>
						<td><%=obj.getQuocTich() != null ? obj.getQuocTich() : ""%></td>
						<td><%=obj.getSdt() == null ? obj.getSdt() : ""%></td>
						<td><%=obj.getEmail() == null ? obj.getEmail() : ""%></td>
						<td style="text-align: center;"><%@ include
								file="../../hostelPartial/menupullcuadoituong.jsp"%></td>
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

<script type="text/javascript">
	document.getElementById("nutNhapLieuExcel").style.display = "none";
</script>
