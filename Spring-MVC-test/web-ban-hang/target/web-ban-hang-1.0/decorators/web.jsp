<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title><dec:title default="Thái minh" /></title>
  <link href="<c:url value='/template/web/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css">
  <link href="<c:url value='/template/web/css/style.css'/>" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file="/common/web/header.jsp" %>

	<dec:body/>

	<%@ include file="/common/web/footer.jsp" %>

	<!-- Bootstrap core JavaScript -->
	<script src="<c:url value='/template/web/js/jquery.min.js'/>"></script>
	<script src="<c:url value='/template/web/js/bootstrap.min.js'/>"></script>
</body>
</html>