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

<form:form action="trip/edit.do" modelAttribute="trip">

	<security:authorize access="hasRole('EXPLORER')">

	<form:hidden path="id" />
	<form:hidden path="version" />
	
	<form:hidden path="publication" />
	<form:hidden path="reason" />
	<form:hidden path="cancelled" />
	
	<form:hidden path="id" />
	<form:hidden path="version" />

	<form:label path="ticker">
		<spring:message code="trip.ticker" />:
	</form:label>
	<form:input path="ticker" />
	<form:errors cssClass="error" path="ticker" />
	<br />
	
	<form:label path="title">
		<spring:message code="trip.title" />:
	</form:label>
	<form:input path="title" />
	<form:errors cssClass="error" path="title" />
	<br />
	
	<form:label path="title">
		<spring:message code="trip.title" />:
	</form:label>
	<form:input path="title" />
	<form:errors cssClass="error" path="title" />
	<br />
	
	<form:label path="description">
		<spring:message code="trip.description" />:
	</form:label>
	<form:input path="description" />
	<form:errors cssClass="error" path="description" />
	<br />
	
	<form:label path="price">
		<spring:message code="trip.price" />:
	</form:label>
	<form:input path="price" />
	<form:errors cssClass="error" path="price" />
	<br />
	
	<form:label path="requirement">
		<spring:message code="trip.requirement" />:
	</form:label>
	<form:input path="requirement" />
	<form:errors cssClass="error" path="requirement" />
	<br />
	
	<form:label path="tripStart">
		<spring:message code="trip.tripStart" />:
	</form:label>
	<form:input path="tripStart" />
	<form:errors cssClass="error" path="tripStart" />
	<br />
	
	<form:label path="tripEnd">
		<spring:message code="trip.tripEnd" />:
	</form:label>
	<form:input path="tripEnd" />
	<form:errors cssClass="error" path="tripEnd" />
	<br />

	<input type="submit" name="save"
		value="<spring:message code="ranger.save" />" />&nbsp; 
	<jstl:if test="${ranger.id != 0}">
		<input type="submit" name="delete"
			value="<spring:message code="ranger.delete" />"
			onclick="return confirm('<spring:message code="ranger.confirm.delete" />')" />&nbsp;
	</jstl:if>
	<input type="button" name="cancel"
		value="<spring:message code="ranger.cancel" />"
		onclick="javascript: relativeRedir('/');" />
	<br />
	</security:authorize>
</form:form>