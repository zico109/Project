<%@page import="core.utils.Util_Date"%>
<%@page import="core.model.ThongTinDatPhong"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="core.modelDAO.DAO_ThongTinDatPhong"%>
<%@page import="core.dao.ObjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "ThongTinDatPhong";
	String tenTrang = "Quản lý thông tin đặt phòng";
	String trangDanhSach = "index.jsp?p=pages/thongtindatphongs.jsp";
	String[] tk_value = { "maThongTinDatPhong", "soLuongNguoi", "ngayDen", "ngayDi", "loaiPhong", "phong",
			"khachHang" };
	String[] tk_show = { "Mã thông tin đặt phòng", "Số Lượng Người", "Ngày đến", "Ngày đi", "Loại Phòng",
			"Phòng", "Khách hàng" };
%>
<%@ include file="../../hostelPartial/code-header.jsp"%>

<%
	ObjectDAO<ThongTinDatPhong> dao = new DAO_ThongTinDatPhong();

	ArrayList<ThongTinDatPhong> list = new ArrayList<ThongTinDatPhong>();

	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
	if (listTemp.get(0) instanceof ThongTinDatPhong) {
				list = (ArrayList<ThongTinDatPhong>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<ThongTinDatPhong>();
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
						<th>Mã thông tin đặt phòng</th>
						<th>Số lượng người</th>
						<th>Ngày đến</th>
						<th>Ngày đi</th>
						<th>Loại phòng</th>	
						<th>Khách hàng</th>		
						<th>Phòng</th>						
					</tr>
				</thead>
				<tbody>
					<%
						for (ThongTinDatPhong obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaThongTinDatPhong();
							String tenDoiTuong = obj.getSoLuongNguoi();
					%>
					<tr class="odd gradeX">
						<td><%=obj.getMaThongTinDatPhong() != null ? obj.getMaThongTinDatPhong() : ""%></td>
						<td><%=obj.getSoLuongNguoi() != null ? obj.getSoLuongNguoi() : ""%></td>
						<td><%=obj.getNgayDen() != null ? obj.getNgayDen() : ""%></td>
						<td><%=obj.getNgayDi() != null ? obj.getNgayDi() : ""%></td>
						<td><%=obj.getLoaiPhong() == null ? "" : obj.getLoaiPhong().getTenLP()%></td>
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