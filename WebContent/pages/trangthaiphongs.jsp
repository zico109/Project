<%@page import="core.utils.Util_Date"%>
<%@page import="core.model.TrangThaiPhong"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="core.modelDAO.DAO_TrangThaiPhong"%>
<%@page import="core.dao.ObjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "TrangThaiPhong";
	String tenTrang = "Quản lý trạng thái phòng";
	String trangDanhSach = "index.jsp?p=pages/trangthaiphongs.jsp";
	String[] tk_value = { "maTrangThaiPhong","tenTrangThaiPhong","soLuongKhach", "phong" };
	String[] tk_show = { "Mã trạng thái phòng", "Tên trạng thái phòng","Số lượng khách", "Phòng" };
%>

<%@ include file="../../hostelPartial/code-header.jsp"%>

<%
	ObjectDAO<TrangThaiPhong> dao = new DAO_TrangThaiPhong();

	ArrayList<TrangThaiPhong> list = new ArrayList<TrangThaiPhong>();

	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
	if (listTemp.get(0) instanceof TrangThaiPhong) {
				list = (ArrayList<TrangThaiPhong>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<TrangThaiPhong>();
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
						<th>Mã trạng thái phòng</th>
						<th>Tên trạng thái phòng</th>
						<th>Số lượng khách</th>
						<th>Phòng</th>			
					</tr>
				</thead>
				<tbody>
					<%
						for (TrangThaiPhong obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaTrangThaiPhong();
							String tenDoiTuong = obj.getTenTrangThaiPhong();
					%>
					<tr class="odd gradeX">
						<td><%=obj.getMaTrangThaiPhong() != null ? obj.getMaTrangThaiPhong() : ""%></td>
						<td><%=obj.getTenTrangThaiPhong() != null ? obj.getTenTrangThaiPhong() : ""%></td>
						<td><%=obj.getSoLuongKhach() != null ? obj.getSoLuongKhach() : ""%></td>
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