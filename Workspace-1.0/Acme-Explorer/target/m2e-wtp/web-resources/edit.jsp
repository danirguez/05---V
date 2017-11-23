<%--
 * list.jsp
 *
 * Copyright (C) 2017 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>

<form:form action="audit/auditor/edit.do" modelAttribute="audit">
	
	<security:authorize access="hasRole('AUDITOR')">
	
	<form:hidden path="auditor" />
	<form:hidden path="draftMode" />
	
	<form:label path="moment">
		<spring:message code="audit.moment" />:
	</form:label>
	<form:input path="moment" />
	<form:errors cssClass="error" path="moment" />
	<br />
	
	<form:label path="title">
		<spring:message code="audit.title" />:
	</form:label>
	<form:input path="title" />
	<form:errors cssClass="error" path="title" />
	<br />
	
	<form:label path="description">
		<spring:message code="audit.description" />:
	</form:label>
	<form:input path="description" />
	<form:errors cssClass="error" path="description" />
	<br />
	
	<form:label path="attachment">
		<spring:message code="audit.attachment" />:
	</form:label>
	<form:input path="attachment" />
	<form:errors cssClass="error" path="attachment" />
	<br />
	
	










