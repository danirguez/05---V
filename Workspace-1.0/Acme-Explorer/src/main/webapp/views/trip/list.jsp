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
	<display:column property="ticker" title="${tickerHeader}" sortable="true" >
		<jstl:out value="${row.ticker}"/>
	</display:column>

	<spring:message code="trip.title" var="titleHeader" />
	<display:column property="title" title="${titleHeader}" sortable="true" >
		<jstl:out value="${row.title}"/>
	</display:column>

	<spring:message code="trip.description" var="descriptionHeader" />
	<display:column property="description" title="${descriptionHeader}" sortable="false" >
		<jstl:out value="${row.description}"/>
	</display:column>

	<spring:message code="trip.requirement" var="requirementHeader" />
	<display:column property="requirement" title="${requirementHeader}"	sortable="false" >
		<jstl:out value="${row.requirement}"/>
	</display:column>
	
	<spring:message code="trip.publication" var="publicationHeader" />
	<display:column property="publication" title="${publicationHeader}"	sortable="true" >
		<jstl:out value="${row.publication}"/>
	</display:column>
	
	<spring:message code="trip.tripStart" var="tripStartHeader" />
	<display:column property="tripStart" title="${tripStartHeader}"	sortable="true" >
		<jstl:out value="${row.tripStart}"/>
	</display:column>
	
	<spring:message code="trip.tripEnd" var="tripEndHeader" />
	<display:column property="tripEnd" title="${tripEndHeader}"	sortable="true" >
		<jstl:out value="${row.tripEnd}"/>
	</display:column>
	
	<spring:message code="trip.reason" var="reasonHeader" />
	<display:column property="reason" title="${reasonHeader}"	sortable="true" >
		<jstl:out value="${row.reason}"/>
	</display:column>

	<spring:message code="trip.cancelled" var="cancelledHeader" />
	<display:column property="cancelled" title="${cancelledHeader}"	sortable="true" >
		<jstl:out value="${row.cancelled}"/>
	</display:column>
</display:table>

<!-- Action links -->

<security:authorize access="hasRole('MANAGER')">
	<div>
		<a href="trip/manager/edit.do"> <spring:message
				code="trip.create" />
		</a>
	</div>
</security:authorize>