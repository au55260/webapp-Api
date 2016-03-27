<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>
<table class="table table-hover">
	<thead>
		<tr>
			<th>User Name</th>
			
		</tr>
	</thead>
	<tbody>
		<c:forEach var="users" items="${users}">
			<tr>
				<td>
				<a href='<spring:url value="/user/${users.id}.html"/>'>
				${users.name}</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>