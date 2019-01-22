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
	ObjectDAO<PhanHoi> dao = new DAO_PhanHoi();

	ArrayList<PhanHoi> list = new ArrayList<PhanHoi>();

	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
	if (listTemp.get(0) instanceof PhanHoi) {
				list = (ArrayList<PhanHoi>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<PhanHoi>();
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
						<th>Mã phản hồi</th>
						<th>Nội dung phản hồi</th>	
						<th>Ngày Phản hồi</th>
						<th>Khách Hàng</th>	
					</tr>
				</thead>
				<tbody>
					<%
						for (PhanHoi obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaPhanHoi();
							String tenDoiTuong = obj.getNoiDungPhanHoi();
					%>
					<tr class="odd gradeX">
						<td><%=obj.getMaPhanHoi() != null ? obj.getMaPhanHoi() : ""%></td>
						<td><%=obj.getNoiDungPhanHoi() != null ? obj.getNoiDungPhanHoi() : ""%></td>
						<td><%=obj.getNgayPhanHoi() != null ? obj.getNgayPhanHoi() : ""%></td>
						<td><%=obj.getKhachHang() == null ? "" : obj.getKhachHang().getMaKH()%></td>
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