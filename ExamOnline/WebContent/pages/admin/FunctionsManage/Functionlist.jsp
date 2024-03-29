<%@page import="cn.edu.nsu.exam.function.function" %>
<%@page import="java.util.ArrayList"%>
<%@page import="cn.edu.nsu.exam.function.functionDAO" %>
<%@page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="utf-8">
		<!--全局CSS-->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/admin.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/pintuer.css">
		<script src="<%=request.getContextPath() %>/js/jquery.js"></script>
		<script src="<%=request.getContextPath() %>/js/pintuer.js"></script>

		<!--私有CSS-->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/myModal.css">
	</head>

	<body>
		<!-- 页面顶部导航条 -->
		<div class="row panel titlePanel">
			<div class="col-md-12">
				<div class="col-md-3">
					<h3>
				<div class="panel-head"><strong class="icon-reorder"> 功能管理</strong></div>
				</h3>
				</div>
				<div class="col-md-6">
					<div style="text-align: center;"></div>
				</div>
			</div>
		</div>
		<!-- 页面内容体 -->

		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default" style="margin-bottom: 0px;">
					<div id="collapseFunctionQuery" class="panel-collapse collapse"></div>
				</div>
			</div>

			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row col-md-12">
							<div class="padding border-bottom">
								<a href="#add" rel="rs-dialog" data-target="updateModal"><button type="button" class="button border-yellow" onclick="window.location.href='#add'"><span class="icon-plus-square-o"></span> 添加功能</button></a>
							</div>
						</div>
					</div>
					<div class="panel-body">

						<table width="539" class="table table-hover table-bordered table-striped" id="dataTable">
							<thead>
								<tr>
									<th width="102">名称</th>
									<th width="147">URI</th>
									<th width="111">说明</th>
									<th width="159">操作</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td height="48">系部管理功能</td>
									<td>functions/DepartmentDetail.html</td>
									<td>拥有此功能可以对系部信息进行操作</td>
									<td>
										<a href="Department/DepartmentDetail.jsp"><button class="button alert-blue" type="button">详情</button></a>
										<a href="Department/modify.jsp"><button class="button alert-green" type="button">修改</button></a>
										<a href="Department/DepartmentPredom.jsp"><button class="button alert-yellow" type="button">配置权限</button></a>
										<a href="success.jsp"><button class="button alert-red" type="button">禁用</button></a>
									</td>
								</tr>

								<tr>
									<td height="48">教师管理功能</td>
									<td>functions/TeacherDetail.jsp</td>
									<td>拥有此功能可以对教师信息进行操作</td>
									<td>
										<a href="Teacher/TeacherDetail.jsp"><button class="button alert-blue" type="button">详情</button></a>
										<a href="Teacher/modify.jsp"><button class="button alert-green" type="button">修改</button></a>
										<a href="Teacher/TeacherPredom.jsp"><button class="button alert-yellow" type="button">配置权限</button></a>
										<a href="success.jsp"><button class="button alert-red" type="button">禁用</button></a>
									</td>
								</tr>
								<tr>
									<td height="48">学生管理功能</td>
									<td>/functions/StudentDetail.jsp</td>
									<td>拥有此功能可以对学生信息进行操作</td>
									<td>
										<a href="Student/StudentDetail.jsp"><button class="button alert-blue" type="button">详情</button></a>
										<a href="Student/modify.jsp"><button class="button alert-green" type="button">修改</button></a>
										<a href="Student/StudentPredom.jsp"><button class="button alert-yellow" type="button">配置权限</button></a>
										<a href="success.jsp"><button class="button alert-red" type="button">禁用</button></a>
									</td>
								</tr>
								<tr>
									<td height="48">课程管理功能</td>
									<td>/functions/CourseDetail.jsp</td>
									<td>拥有此功能可以对课程信息进行操作</td>
									<td>
										<a href="Course/CourseDetail.jsp"><button class="button alert-blue" type="button">详情</button></a>
										<a href="Course/modify.jsp"><button class="button alert-green" type="button">修改</button></a>
										<a href="Course/CoursePredom.jsp"><button class="button alert-yellow" type="button">配置权限</button></a>
										<a href="success.jsp"><button class="button alert-red" type="button">禁用</button></a>
									</td>
								</tr>
								<tr>
									<td height="48">专业管理功能</td>
									<td>/functions/MajorDetail.jsp</td>
									<td>拥有此功能可以对专业信息进行操作</td>
									<td>
										<a href="Major/MajorDetail.jsp"><button class="button alert-blue" type="button">详情</button></a>
										<a href="Major/modify.jsp"><button class="button alert-green" type="button">修改</button></a>
										<a href="Major/MajorPredom.jsp"><button class="button alert-yellow" type="button">配置权限</button></a>
										<a href="success.jsp"><button class="button alert-red" type="button">禁用</button></a>
									</td>
								</tr>
								<tr>
									<td height="48">行政班管理功能</td>
									<td>/functions/PoliticalClassDetail.jsp</td>
									<td>拥有此功能可以对行政班信息进行操作</td>
									<td>
										<a href="PoliticalClass/PoliticalClassDetail.jsp"><button class="button alert-blue" type="button">详情</button></a>
										<a href="PoliticalClass/modify.jsp"><button class="button alert-green" type="button">修改</button></a>
										<a href="PoliticalClass/PoliticalClassPredom.jsp"><button class="button alert-yellow" type="button">配置权限</button></a>
										<a href="success.jsp"><button class="button alert-red" type="button">禁用</button></a>
									</td>
								</tr>
								<tr>
									<td height="48">开课管理功能</td>
									<td>functions/BeginDetail.jsp</td>
									<td>拥有此功能可以对开课信息进行操作</td>
									<td>
										<a href="Begin/BeginDetail.jsp"><button class="button alert-blue" type="button">详情</button></a>
										<a href="Begin/modify.jsp"><button class="button alert-green" type="button">修改</button></a>
										<a href="Begin/BeginPredom.jsp"><button class="button alert-yellow" type="button">配置权限</button></a>
										<a href="success.jsp"><button class="button alert-red" type="button">禁用</button></a>
									</td>
								</tr>
								<tr>
									<td height="48">选课管理功能</td>
									<td>functions/SCourseDetail.jsp</td>
									<td>拥有此功能可以对选课信息进行操作</td>
									<td>
										<a href="SCourse/SCourseDetail.jsp"><button class="button alert-blue" type="button">详情</button></a>
										<a href="SCourse/modify.jsp"><button class="button alert-green" type="button">修改</button></a>
										<a href="SCourse/SCoursePredom.jsp"><button class="button alert-yellow" type="button">配置权限</button></a>
										<a href="success.jsp"><button class="button alert-red" type="button">禁用</button></a>
									</td>
								</tr>
								<tr>
									<td height="48">学年管理功能</td>
									<td>functions/YearDetail.jsp</td>
									<td>拥有此功能可以对学年信息进行操作</td>
									<td>
										<a href="Years/YearsDetail.jsp"><button class="button alert-blue" type="button">详情</button></a>
										<a href="Years/modify.jsp"><button class="button alert-green" type="button">修改</button></a>
										<a href="Years/YearsPredom.jsp"><button class="button alert-yellow" type="button">配置权限</button></a>
										<a href="success.jsp"><button class="button alert-red" type="button">禁用</button></a>
									</td>
								</tr>
							</tbody>
						</table>

					</div>
					<!--<div class="panel-footer">
			    	 <div class="row paginationBox">
			    		<div class="col-md-4">
			    			<div class="paginationInfo">显示第 1 至 10 项结果，共 57 项</div>
			    		</div>
			    		<!--<div class="col-md-4"></div>
			    		<div class="col-md-4">
			    			<ul class="pagination">
			    			    <li><a href="#">&laquo;</a></li>
			    			    <li class="active"><a href="#">1</a></li>
			    			    <li><a href="#">2</a></li>
			    			    <li><a href="#">3</a></li>
			    			    <li><a href="#">4</a></li>
			    			    <li><a href="#">5</a></li>
			    			    <li><a href="#">&raquo;</a></li>
			    			  </ul>
			    		</div>
			    	</div>-->
				</div>
			</div>
		</div>

		</div>

		<!--添加/修改模态框 -->
		<div class="rs-dialog" id="updateModal">
			<form action="">
				<div class="rs-dialog-box">
					<a class="close dismiss" href="#add">&times;</a>
					<div class="rs-dialog-header">
						<h3>新增功能</h3>
					</div>
					<div class="rs-dialog-body">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group col-md-12 form-inline">
									<label class="control-label-required">名称</label>
									<input class="form-control" type="text" placeholder="请输入功能的名称">
								</div>
								<div class="form-group col-md-12 form-inline">
									<label class="control-label-required">URI</label>
									<input class="form-control" type="text" placeholder="请输入功能的URI">
								</div>
								<div class="form-group col-md-12 form-inline">
									<label class="control-label-norequired">说明</label>
									<textarea class="form-control" rows="2" cols="40" placeholder="请输入功能的说明"></textarea>
								</div>

							</div>
						</div>
					</div>
					<div class="rs-dialog-footer form-footer">
						<input type="button" class="button bg-main icon-check-square-o dismiss" value="提交">
					</div>
				</div>
			</form>
		</div>

		<!--全局JS-->
		<!--<script src="/bookshop/js/admin/share/jquery-3.2.1.min.js"></script>
		<script src="/bookshop/js/admin/share/bootstrap.min.js"></script>-->
	<!--	<script src="/bookshop/js/admin/share/share.js"></script>-->
		<!--私有JS-->
		<script src="<%=request.getContextPath() %>/js/myModal.js"></script>

		<!--<script type="text/javascript"></script>-->
	</body>

</html>