<%--
 * register.jsp
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

<form:form action="survival/register.do" modelAttribute="survival">

	<security:authorize access="hasRole('EXPLORER')">

	<form:hidden path="id" />
	<form:hidden path="version" />
	
	<form:hidden path="title" />
	<form:hidden path="description" />
	<form:hidden path="moment" />
	<form:hidden path="location" />
	
	<form:hidden path="manager" />
	<form:hidden path="trip" />
	<form:hidden path="explorer" />
	
	<form:label path="survival">
		<spring:message code="survival.register" />:
	</form:label>
	<form:select path="survival">
		<jstl:forEach var="survival" items=${row.survival }>
              <form:option value="${survival}"/>
		</jstl:forEach>
	</form:select>
	<form:input path="survival" />
	<form:errors cssClass="error" path="survival" />
	<br />
	
	</security:authorize>
</form:form>