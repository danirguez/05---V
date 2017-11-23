<%--
 * trip.jsp
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

<form:form action="application/explorer/edit.do" modelAttribute="application">

	<security:authorize access="hasRole('EXPLORER')">

	<form:hidden path="manager" />

	<form:label path="status">
		<spring:message code="application.status" />:
	</form:label>
	<form:select path="status">
              <form:option value="PENDING"/>
              <form:option value="REJECTED"/>
              <form:option value="DUE"/>
              <form:option value="ACCEPTED"/>
              <form:option value="CANCELLED"/>
    </form:select>
	<br />
	
	<form:label path="comment">
		<spring:message code="application.comment" />:
	</form:label>
	<form:input path="comment" />
	<form:errors cssClass="error" path="comment" />
	<br />
	
	<form:label path="reason">
		<spring:message code="application.reason" />:
	</form:label>
	<form:input path="reason" />
	<form:errors cssClass="error" path="reason" />
	<br />
	
	<form:label path="creditcard">
		<spring:message code="application.creditcard" />:
	</form:label>
	<form:select path="creditcard">
		<jstl:forEach var="creditcard" items=${row.creditcard }>
              <form:option value="${creditcard}">${creditcard.number}</form:option>
		</jstl:forEach>
	</form:select>
	<form:input path="creditcard" />
	<form:errors cssClass="error" path="creditcard" />
	<br />
	
	<form:label path="trip">
		<spring:message code="application.trip" />:
	</form:label>
	<form:select path="trip">
		<jstl:forEach var="trip" items=${row.trip }>
              <form:option value="${trip}">${trip.title}</form:option>
		</jstl:forEach>
	</form:select>
	<form:input path="trip" />
	<form:errors cssClass="error" path="trip" />
	<br />
	
	<input type="submit" name="save"
		value="<spring:message code="application.save" />" />&nbsp; 
	<jstl:if test="${application.id != 0}">
		<input type="submit" name="delete"
			value="<spring:message code="application.delete" />"
			onclick="return confirm('<spring:message code="application.confirm.delete" />')" />&nbsp;
	</jstl:if>
	<input type="button" name="cancel"
		value="<spring:message code="application.cancel" />"
		onclick="javascript: relativeRedir('/');" />
	<br />
	</security:authorize>
</form:form>