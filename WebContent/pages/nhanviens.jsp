<%@page import="core.model.NhanVien"%>
<%@page import="core.modelDAO.DAO_NhanVien"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "NhanVien";
	String tenTrang = "Quản lý nhân viên";
	String trangDanhSach = "index.jsp?p=pages/nhanviens.jsp";
	String[] tk_value = { "maNV", "hoVaTenNV", "cmnd", "diaChi", "queQuan", "danToc", "gioiTinh", "ngaySinh", "sdt", "email", "chucVu", "bacLuong", "trinhDo","ngayTuyenDung" };
	String[] tk_show = { "Mã Nhân Viên", "Họ Tên Nhân Viên", "CMND", "Địa Chỉ", "Quê Quán", "Dân Tộc", "Giới Tính", "Ngày Sinh", "SDT", "Email", "Chức Vụ","Bậc lương", "Trình Độ", "Ngày Tuyển Dụng" };
%>
<%@ include file="../../hostelPartial/code-header.jsp"%>

<%
	ObjectDAO<NhanVien> dao = new DAO_NhanVien();

	ArrayList<NhanVien> list = new ArrayList<NhanVien>();

	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
	if (listTemp.get(0) instanceof NhanVien) {
				list = (ArrayList<NhanVien>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<NhanVien>();
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
						<th>Mã nhân viên</th>
						<th>Họ tên nhân viên</th>
						<th>CMND</th>
						<th>Địa chỉ</th>
						<th>Quê quán</th>
						<th>Dân tộc</th>
						<th>Giới tính</th>
						<th>Ngày sinh</th>
						<th>SDT</th>
						<th>Email</th>
						<th>Chức vụ</th>
						<th>Bặc lương</th>
						<th>Trình độ</th>
						<th>Ngày tuyển dụng</th>		
					</tr>
				</thead>
				<tbody>
					<%
						for (NhanVien obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaNV();
							String tenDoiTuong = obj.getHoVaTenNV();
					%>
					<tr class="odd gradeX">
						<td><%=obj.getMaNV() != null ? obj.getMaNV() : ""%></td>
						<td><%=obj.getHoVaTenNV() != null ? obj.getHoVaTenNV() : ""%></td>
						<td><%=obj.getCmnd() != null ? obj.getCmnd() : ""%></td>
						<td><%=obj.getDiaChi() != null ? obj.getDiaChi() : ""%></td>
						<td><%=obj.getQueQuan() == null ? obj.getQueQuan() : ""%></td>
						<td><%=obj.getDanToc() == null ? obj.getDanToc() : ""%></td>
						<td><%=obj.getGioiTinh() == null ? obj.getGioiTinh() : ""%></td>
						<td><%=obj.getNgaySinh() == null ? obj.getNgaySinh() : ""%></td>
						<td><%=obj.getSdt() == null ? obj.getSdt() : ""%></td>
						<td><%=obj.getEmail() == null ? obj.getEmail() : ""%></td>
						<td><%=obj.getChucVu() == null ? obj.getChucVu() : ""%></td>
						<td><%=obj.getBacLuong() == null ? obj.getBacLuong() : ""%></td>
						<td><%=obj.getTrinhDo() == null ? obj.getTrinhDo() : ""%></td>
						<td><%=obj.getNgayTuyenDung() == null ? obj.getNgayTuyenDung() : ""%></td>
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
