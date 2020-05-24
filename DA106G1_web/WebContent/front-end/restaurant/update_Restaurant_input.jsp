<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.restaurant.model.*"%>

<%
    RestaurantVO restVO = (RestaurantVO) request.getAttribute("restVO");
    //EmpServlet.java (Concroller) �s�Jreq��empVO���� (�]�A�������X��empVO, �]�]�A��J��ƿ��~�ɪ�empVO����)
%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>�\�U��ƭק� - update_Restaurant_input.jsp</title>

<style>
  table#table-1 {
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  
  
  h4 {
    color: blue;
    display: inline;
  }
</style>

<style>
  table {
	width: 450px;
	background-color: white;
	margin-top: 1px;
	margin-bottom: 1px;
  }
  table, th, td {
    border: 0px solid #CCCCFF;
  }
  th, td {
    padding: 1px;
  }
</style>

</head>
<body bgcolor='white'>

<table id="table-1">
	<tr><td>
		 <h3>�\�U��ƭק� - update_Restaurant_input.jsp</h3>
		 <h4><a href="select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></h4>
	</td></tr>
</table>

<h3>��ƭק�:</h3>

<%-- ���~���C --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">�Эץ��H�U���~:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<FORM METHOD="post" ACTION="rest.do" name="form1">
<table>
	<tr>
		<td>�\�U�s��:<font color=red><b>*</b></font></td>
		<td><%=restVO.getResNo()%></td>
	</tr>
	<tr>
		<td>�\�U�W��:</td>
		<td><input type="TEXT" name="resName" size="45" value="<%=restVO.getResName()%>" /></td>
	</tr>
	<tr>
		<td>�y��:</td>
		<td><input type="TEXT" name="totalSeat" size="45"	value="<%=restVO.getTotalSeat()%>" /></td>
	</tr>
	<tr>
		<td>�p���H:</td>
		<td><input type="TEXT" name="resContact" size="45"	value="<%=restVO.getResContact()%>" /></td>
	</tr>
	<tr>
		<td>�q��:</td>
		<td><input type="TEXT" name="resPhone" size="45" value="<%=restVO.getResPhone()%>" /></td>
	</tr>
	
	
	<tr>
		<td>���A:</td>
		<td><input type="TEXT" name="resStatus" size="45" value="<%=restVO.getResStatus()%>" /></td>
	</tr>

	

</table>
<br>
<input type="hidden" name="action" value="update">
<input type="hidden" name="resNo" value="<%=restVO.getResNo()%>">
<input type="submit" value="�e�X�ק�"></FORM>
</body>



<!-- =========================================�H�U�� datetimepicker �������]�w========================================== -->


</html>