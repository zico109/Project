<%@page import="core.utils.Util_Date"%>
<%@page import="core.model.HoaDonDatPhong"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="core.modelDAO.DAO_HoaDonDatPhong"%>
<%@page import="core.dao.ObjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "HoaDonDatPhong";
	String tenTrang = "Quản lý hóa đơn";
	String trangDanhSach = "index.jsp?p=pages/hoadondatphongs.jsp";
	String[] tk_value = { "soHD", "trangThaiThanhToan", "ngayDat", "thanhTien", "khachHang", "nhanVien",
			"loaiPhong", "thongTinDatPhong" };
	String[] tk_show = { "Số hóa đơn", "Trạng thái thanh toán", "Ngày đặt", "Thành tiền", "Khách hàng",
			"Nhân viên", "Loại phòng", "Thông tin đặt phòng" };
%>

<%@ include file="../../hostelPartial/code-header.jsp"%>

<%
	ObjectDAO<HoaDonDatPhong> dao = new DAO_HoaDonDatPhong();

	ArrayList<HoaDonDatPhong> list = new ArrayList<HoaDonDatPhong>();

	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
	if (listTemp.get(0) instanceof HoaDonDatPhong) {
				list = (ArrayList<HoaDonDatPhong>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<HoaDonDatPhong>();
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
						<th>Số Hóa Đơn</th>
						<th>Trạng thái thanh toán</th>
						<th>Ngày đặt</th>
						<th>Thành tiền</th>
						<th>Loại phòng</th>	
						<th>Khách hàng</th>		
						<th>Nhân viên</th>		
						<th>Thông tin đặt phòng</th>				
					</tr>
				</thead>
				<tbody>
					<%
						for (HoaDonDatPhong obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getSoHD();
							String tenDoiTuong = obj.getTrangThaiThanhToan();
					%>
					<tr class="odd gradeX">
						<td><%=obj.getSoHD() != null ? obj.getSoHD() : ""%></td>
						<td><%=obj.getTrangThaiThanhToan() != null ? obj.getTrangThaiThanhToan() : ""%></td>
						<td><%=obj.getNgayDat() != null ? obj.getNgayDat() : ""%></td>
						<td><%=obj.getThanhTien() >0 ? obj.getThanhTien() : ""%></td>
						<td><%=obj.getLoaiPhong() == null ? "" : obj.getLoaiPhong().getTenLP()%></td>
						<td><%=obj.getKhachHang() == null ? "" : obj.getKhachHang().getMaKH()%></td>
						<td><%=obj.getNhanVien() == null ? "" : obj.getNhanVien().getMaNV()%></td>
						<td><%=obj.getThongTinDatPhong() == null ? "" : obj.getThongTinDatPhong().getMaThongTinDatPhong()%></td>
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