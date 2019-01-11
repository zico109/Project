<%@page import="core.utils.Util_Date"%>
<%@page import="core.model.ThongTinGiaoPhong"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="core.modelDAO.DAO_ThongTinGiaoPhong"%>
<%@page import="core.dao.ObjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "ThongTinGiaoPhong";
	String tenTrang = "Quản lý thông tin giao phòng";
	String trangDanhSach = "index.jsp?p=pages/thongtingiaophongs.jsp";
	String[] tk_value = { "maThongTinGiaoPhong", "trangThaiGiaoPhong", "hoaDonDatPhong", "khachHang", "phong" };
	String[] tk_show = { "Mã thông tin giao phòng", "Trạng thái giao phòng", "Hóa đơn đặt phòng", "Khách hàng",
			"Phòng" };
%>

<%@ include file="../../hostelPartial/code-header.jsp"%>

<%
	ObjectDAO<ThongTinGiaoPhong> dao = new DAO_ThongTinGiaoPhong();

	ArrayList<ThongTinGiaoPhong> list = new ArrayList<ThongTinGiaoPhong>();

	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
	if (listTemp.get(0) instanceof ThongTinGiaoPhong) {
				list = (ArrayList<ThongTinGiaoPhong>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<ThongTinGiaoPhong>();
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
						<th>Mã thông tin giao phòng</th>
						<th>Trạng thái giao phòng</th>
						<th>Hóa đơn đặt phòng</th>
						<th>Khách hàng</th>		
						<th>Phòng</th>					
					</tr>
				</thead>
				<tbody>
					<%
						for (ThongTinGiaoPhong obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaThongTinGiaoPhong();
							String tenDoiTuong = obj.getTrangThaiGiaoPhong();
					%>
					<tr class="odd gradeX">
						<td><%=obj.getMaThongTinGiaoPhong() != null ? obj.getMaThongTinGiaoPhong() : ""%></td>
						<td><%=obj.getTrangThaiGiaoPhong() != null ? obj.getTrangThaiGiaoPhong() : ""%></td>
						<td><%=obj.getHoaDonDatPhong() == null ? "" : obj.getHoaDonDatPhong().getSoHD()%></td>
						<td><%=obj.getKhachHang() == null ? "" : obj.getKhachHang().getMaKH()%></td>
						<td><%=obj.getPhong() == null ? "" : obj.getPhong().getMaPhong()%></td>
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