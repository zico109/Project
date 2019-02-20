<%@page import="core.utils.Util_Date"%>
<%@page import="core.model.Giuong"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="core.modelDAO.DAO_Giuong"%>
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
	ObjectDAO<Giuong> dao = new DAO_Giuong();

	ArrayList<Giuong> list = new ArrayList<Giuong>();

	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
	if (listTemp.get(0) instanceof Giuong) {
				list = (ArrayList<Giuong>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<Giuong>();
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
						<th>Mã giường</th>
						<th>Trạng thái</th>
						<th>Phòng</th>			
					</tr>
				</thead>
				<tbody>
					<%
						for (Giuong obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaGiuong();
							String tenDoiTuong = obj.getTrangThai();
					%>
					<tr class="odd gradeX">
						<td><%=obj.getMaGiuong() != null ? obj.getMaGiuong() : ""%></td>
						<td><%=obj.getTrangThai() != null ? obj.getTrangThai() : ""%></td>
						<td><%=obj.getPhong() == null ? "" : obj.getPhong().getTenPhong()%></td>
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