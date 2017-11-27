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

<!-- Listing grid -->

<security:authorize access="hasRole('EXPLORER')">
<display:table pagesize="5" class="displaytag" keepStatus="true"
	name="applicationExplorer" requestURI="${requestURI}" id="row">
	
	<!-- Attributes -->

	<spring:message code="application.status" var="statusHeader" />
	<display:column property="status" title="${statusHeader}" sortable="true" />

	<spring:message code="application.comment" var="commentHeader" />
	<display:column property="comment" title="${commentHeader}" sortable="true" />

	<spring:message code="application.reason" var="reasonHeader" />
	<display:column property="reason" title="${reasonHeader}" sortable="false" />

	<spring:message code="application.creditcard" var="creditcardHeader" />
	<display:column property="creditcard" title="${creditcardHeader}"	sortable="false" />
	
	<spring:message code="application.trip" var="tripHeader" />
	<display:column property="trip" title="${tripHeader}"	sortable="true" />
	
</display:table>
</security:authorize>

<security:authorize access="hasRole('MANAGER')">
<display:table pagesize="5" class="displaytag" keepStatus="true"
	name="applicationManager" requestURI="${requestURI}" id="row">
	
	<!-- Attributes -->

	<spring:message code="application.status" var="statusHeader" />
	<display:column property="status" title="${statusHeader}" sortable="true" />

	<spring:message code="application.comment" var="commentHeader" />
	<display:column property="comment" title="${commentHeader}" sortable="true" />

	<spring:message code="application.reason" var="reasonHeader" />
	<display:column property="reason" title="${reasonHeader}" sortable="false" />

	<spring:message code="application.creditcard" var="creditcardHeader" />
	<display:column property="creditcard" title="${creditcardHeader}"	sortable="false" />
	
	<spring:message code="application.trip" var="tripHeader" />
	<display:column property="trip" title="${tripHeader}"	sortable="true" />
	
</display:table>
</security:authorize>

<!-- Action links -->

<security:authorize access="hasRole('EXPLORER')">
	<div>
		<a href="application/explorer/edit.do"> <spring:message
				code="application.create" />
		</a>
	</div>
</security:authorize>