<%--
 * editPending.jsp
 *
 * Copyright (C) 2017 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl"	uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>

<form:form action="application/manager/editPending.do" modelAttribute="application">
	<security:authorize access="hasRole('MANAGER')">
		<form:hidden path="moment" />
		<form:hidden path="comment" />
		<form:hidden path="creaditCard" />
		<form:hidden path="manager" />
		<form:hidden path="explorer" />
		<form:hidden path="trip" />
		
		<form:label path="status">
  			<spring:message code="application.status" />:
 		</form:label>
 		<form:select path="status">
              <form:option value="REJECTED"/>
              <form:option value="DUE"/>
    	</form:select>
 		<br />
		
		<form:label path="reason">
			<spring:message code="application.reason" />:
		</form:label>
		<form:input path="reason" />
		<form:errors cssClass="error" path="reason" />
		<br />
		
		<input type="submit" name="save"
			value="<spring:message code="application.save" />" />&nbsp; 
		<input type="button" name="cancel"
			value="<spring:message code="application.cancel" />"
			onclick="javascript: relativeRedir('/application/manager/list.do');" />
		<br />
	
	</security:authorize>
</form:form>