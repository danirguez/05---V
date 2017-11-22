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

<display:table pagesize="5" class="displaytag" keepStatus="true"
	name="announcements" requestURI="${requestURI}" id="row">
	
	<!-- Attributes -->

	<spring:message code="trip.ticker" var="tickerHeader" />
	<display:column property="ticker" title="${tickerHeader}" sortable="true" />

	<spring:message code="trip.title" var="titleHeader" />
	<display:column property="title" title="${titleHeader}" sortable="true" />

	<spring:message code="trip.description" var="descriptionHeader" />
	<display:column property="description" title="${descriptionHeader}" sortable="false" />

	<spring:message code="trip.requirement" var="requirementHeader" />
	<display:column property="requirement" title="${requirementHeader}"	sortable="false" />
	
	<spring:message code="trip.publication" var="publicationHeader" />
	<display:column property="publication" title="${publicationHeader}"	sortable="true" format="{0,date,dd/MM/yyyy HH:mm}" />
	
	<spring:message code="trip.tripStart" var="tripStartHeader" />
	<display:column property="tripStart" title="${tripStartHeader}"	sortable="true" format="{0,date,dd/MM/yyyy HH:mm}" />
	
	<spring:message code="trip.tripEnd" var="tripEndHeader" />
	<display:column property="tripEnd" title="${tripEndHeader}"	sortable="true" format="{0,date,dd/MM/yyyy HH:mm}" />
	
	<spring:message code="trip.reason" var="reasonHeader" />
	<display:column property="reason" title="${reasonHeader}"	sortable="true" />

	<spring:message code="trip.cancelled" var="cancelledHeader" />
		<display:column property="cancelled" title="${cancelledHeader}"	sortable="true" />
	</display:table>

<!-- Action links -->

<security:authorize access="hasRole('MANAGER')">
	<div>
		<a href="trip/manager/edit.do"> <spring:message
				code="trip.create" />
		</a>
	</div>
</security:authorize>