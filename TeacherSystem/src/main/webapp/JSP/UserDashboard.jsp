<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>教师信息查询——注册用户</title>
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
	    <link href="${pageContext.request.contextPath}/CSS/Dashboard.css" rel="stylesheet" />
	</head>

	<body>
	    <div class="container mt-4">
		    <h1 class="mb-4">教师管理系统</h1>
			<div class="text-end mb-3">
	            <a href="userProfile?action=view" class="btn btn-primary">个人中心</a>
	        </div>
	        
		    <!-- 搜索栏 -->
		    <form action="userDashboard" method="get" class="mb-3">
		        <input type="hidden" name="action" value="search">
		        <div class="input-group">
		            <input type="text" name="keyword" class="form-control" placeholder="通过工号或姓名搜索">
		            <button class="btn btn-primary" type="submit">搜索</button>
		        </div>
		    </form>
		
		    <!-- 筛选栏 -->
		    <form action="userDashboard" method="get" class="mb-4">
		        <input type="hidden" name="action" value="filter">
		        <div class="row">
		            <div class="col-md-4">
		                <input type="text" name="school" class="form-control" placeholder="按学院筛选">
		            </div>
		            <div class="col-md-4">
		                <select name="gender" class="form-select">
		                    <option value="">所有性别</option>
		                    <option value="男">男</option>
		                    <option value="女">女</option>
		                </select>
		            </div>
		            <div class="col-md-4">
			            <select name="title" class="form-select">
			                <option value="">所有职称</option>
			                <option value="教授">教授</option>
			                <option value="副教授">副教授</option>
			                <option value="讲师">讲师</option>
			            </select>
			        </div>
		        </div>
		        <button class="btn btn-success mt-3" type="submit">筛选</button>
		    </form>
		
		    <!-- 教师表 -->
		    <table class="table table-bordered">
		        <thead>
		        <tr>
		            <th>工号</th>
		            <th>姓名</th>
		            <th>性别</th>
		            <th>学院</th>
		            <th>职称</th>
		        </tr>
		        </thead>
		        <tbody>
			        <c:forEach var="teacher" items="${teachers}">
			            <tr>
			                <td>${teacher.getWork_id()}</td>
			                <td>${teacher.getName()}</td>
			                <td>${teacher.getGender()}</td>
			                <td>${teacher.getSchool()}</td>
			                <td>${teacher.getTitle()}</td>
			            </tr>
			        </c:forEach>
		        </tbody>
		    </table>
		    
		    <script src="${pageContext.request.contextPath}/JavaScript/Alert.js"></script>
			<c:if test="${empty teachers}">
				<div id="alertBox" class="alert alert-danger">
					<p>查无此人！</p>
				</div>
			</c:if>
		</div>
	</body>
</html>