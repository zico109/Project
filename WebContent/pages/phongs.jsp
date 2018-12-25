<%@page import="core.utils.Util_Date"%>
<%@page import="core.model.Phong"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="core.modelDAO.DAO_Phong"%>
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
	ObjectDAO<Phong> dao = new DAO_Phong();

	ArrayList<Phong> list = new ArrayList<Phong>();

	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
	if (listTemp.get(0) instanceof Phong) {
				list = (ArrayList<Phong>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<Phong>();
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
						<th>Mã phòng</th>
						<th>Tên phòng</th>
						<th>Số lượng người</th>
						<th>Trạng thái</th>
						<th>Loại phòng</th>			
					</tr>
				</thead>
				<tbody>
					<%
						for (Phong obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaPhong();
							String tenDoiTuong = obj.getTenPhong();
					%>
					<tr class="odd gradeX">
						<td><%=obj.getMaPhong() != null ? obj.getMaPhong() : ""%></td>
						<td><%=obj.getTenPhong() != null ? obj.getTenPhong() : ""%></td>
						<td><%=obj.getSoLuongNguoi() != null ? obj.getSoLuongNguoi() : ""%></td>
						<td><%=obj.getTrangThai() != null ? obj.getTrangThai() : ""%></td>
						<td><%=obj.getLoaiPhong() == null ? "" : obj.getLoaiPhong().getTenLP()%></td>
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