<%@page import="core.utils.Util_Date"%>
<%@page import="core.model.LoaiPhong"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="core.modelDAO.DAO_LoaiPhong"%>
<%@page import="core.dao.ObjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "LoaiPhong";
	String tenTrang = "Quản lý loại phòng";
	String trangDanhSach = "index.jsp?p=pages/phongs.jsp";
	String[] tk_value = { "maLP", "tenLP", "giaLP", "tienNghi", "soLuongPhong" };
	String[] tk_show = { "Mã Loại Phòng", "Tên Loại Phòng", "Giá Loại Phòng", "Tiện nghi", "Số Lượng Phòng" };
%>

<%@ include file="../../hostelPartial/code-header.jsp"%>

<%
	ObjectDAO<LoaiPhong> dao = new DAO_LoaiPhong();

	ArrayList<LoaiPhong> list = new ArrayList<LoaiPhong>();

	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
	if (listTemp.get(0) instanceof LoaiPhong) {
				list = (ArrayList<LoaiPhong>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<LoaiPhong>();
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
						<th>Mã loại phòng</th>
						<th>Tên loại phòng</th>
						<th>Giá loại phòng</th>
						<th>Tiện nghi</th>
						<th>Số lượng phòng</th>			
					</tr>
				</thead>
				<tbody>
					<%
						for (LoaiPhong obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaLP();
							String tenDoiTuong = obj.getTenLP();
					%>
					<tr class="odd gradeX">
						<td><%=obj.getMaLP() != null ? obj.getMaLP() : ""%></td>
						<td><%=obj.getTenLP() != null ? obj.getTenLP() : ""%></td>
						<td><%=obj.getGiaLP() >0 ? obj.getGiaLP(): "" %></td>
						<td><%=obj.getTienNghi() != null ? obj.getTienNghi(): "" %></td>
						<td><%=obj.getSoLuongPhong() != null ? obj.getSoLuongPhong(): "" %></td>
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