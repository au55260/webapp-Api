<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table>
	<thead>
		<tr>
			<th>User Name
			<th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="users" items="${users}">
			<tr>
				<td>${users.name}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>