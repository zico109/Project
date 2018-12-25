<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="robots" content="noindex, nofollow">

<title>Panel table with filters (per column) - Bootsnipp.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
.filterable {
	margin-top: 15px;
}

.filterable .panel-heading .pull-right {
	margin-top: -20px;
}

.filterable .filters input[disabled] {
	background-color: transparent;
	border: none;
	cursor: auto;
	box-shadow: none;
	padding: 0;
	height: auto;
}

.filterable .filters input[disabled]::-webkit-input-placeholder {
	color: #333;
}

.filterable .filters input[disabled]::-moz-placeholder {
	color: #333;
}

.filterable .filters input[disabled]:-ms-input-placeholder {
	color: #333;
}
</style>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<!--  <script type="text/javascript">
        window.alert = function(){};
        var defaultCSS = document.getElementById('bootstrap-css');
        function changeCSS(css){
            if(css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="'+ css +'" type="text/css" />'); 
            else $('head > link').filter(':first').replaceWith(defaultCSS); 
        }
        $( document ).ready(function() {
          var iframe_height = parseInt($('html').height()); 
          window.parent.postMessage( iframe_height, 'https://bootsnipp.com');
        });
    </script> -->
</head>
<body>
	<div class="container">
		
		<h1 align="center">Admin Page</h1>
		<div align="center">
		<img class="img-responsive" alt="" src="images/admin2.jpg">
		</div>
		
		<hr>
		<div class="row">
			<div class="panel panel-primary filterable">
				<div class="panel-heading">
					<h3 class="panel-title">Users</h3>
					<div class="pull-right">
						<button class="btn btn-default btn-xs btn-filter">
							<span class="glyphicon glyphicon-filter"></span> Filter
						</button>
					</div>
				</div>

				<table class="table">
					<thead>
						<tr class="filters">
							<th><input type="text" class="form-control"
								placeholder="ID Product" disabled></th>
							<th><input type="text" class="form-control"
								placeholder="Product" disabled></th>
							<th><input type="text" class="form-control"
								placeholder="Quantity" disabled></th>
							<th><input type="text" class="form-control"
								placeholder="Manufacturer" disabled></th>
							<th><input type="text" class="form-control"
								placeholder="Price" disabled></th>
								
							<th><a href="insert.jsp">Insert</a></th>
						</tr>

					</thead>
					<tbody>
						xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		/*
		Please consider that the JS part isn't production ready at all, I just code it to show the concept of merging filters and titles together !
		 */
		$(document)
				.ready(
						function() {
							$('.filterable .btn-filter')
									.click(
											function() {
												var $panel = $(this).parents(
														'.filterable'), $filters = $panel
														.find('.filters input'), $tbody = $panel
														.find('.table tbody');
												if ($filters.prop('disabled') == true) {
													$filters.prop('disabled',
															false);
													$filters.first().focus();
												} else {
													$filters.val('').prop(
															'disabled', true);
													$tbody.find('.no-result')
															.remove();
													$tbody.find('tr').show();
												}
											});

							$('.filterable .filters input')
									.keyup(
											function(e) {
												/* Ignore tab key */
												var code = e.keyCode || e.which;
												if (code == '9')
													return;
												/* Useful DOM data and selectors */
												var $input = $(this), inputContent = $input
														.val().toLowerCase(), $panel = $input
														.parents('.filterable'), column = $panel
														.find('.filters th')
														.index(
																$input
																		.parents('th')), $table = $panel
														.find('.table'), $rows = $table
														.find('tbody tr');
												/* Dirtiest filter function ever ;) */
												var $filteredRows = $rows
														.filter(function() {
															var value = $(this)
																	.find('td')
																	.eq(column)
																	.text()
																	.toLowerCase();
															return value
																	.indexOf(inputContent) === -1;
														});
												/* Clean previous no-result if exist */
												$table.find('tbody .no-result')
														.remove();
												/* Show all rows, hide filtered ones (never do that outside of a demo ! xD) */
												$rows.show();
												$filteredRows.hide();
												/* Prepend no-result row if all rows are filtered */
												if ($filteredRows.length === $rows.length) {
													$table
															.find('tbody')
															.prepend(
																	$('<tr class="no-result text-center"><td colspan="'
																			+ $table
																					.find('.filters th').length
																			+ '">No result found</td></tr>'));
												}
											});
						});
	</script>
</body>
</html>
