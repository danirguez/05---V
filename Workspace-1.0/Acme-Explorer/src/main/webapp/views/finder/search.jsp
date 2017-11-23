<%--
 * search.jsp
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

<form:form action="finder/unauthenticated/search.do" modelAttribute="finder">

	<form:hidden path="id" />
	<form:hidden path="version" />
	
	<form:hidden path="minPrice" />
	<form:hidden path="maxPrice" />
	<form:hidden path="start" />
	<form:hidden path="end" />	
	<form:hidden path="cache" />
	
	<form:hidden path="trip" />
	
	<form:label path="singleKey">
		<spring:message code="finder.singleKey" />:
	</form:label>
	<form:input path="singleKey" />
	<form:errors cssClass="error" path="singleKey" />
	<br />

	<input type="submit" name="search"
		value="<spring:message code="finder.search" />" />&nbsp; 
	
	<input type="button" name="cancel"
		value="<spring:message code="finder.cancel" />"
		onclick="javascript: relativeRedir('finder/unauthenticated/search.do');" />
	<br />
</form:form>