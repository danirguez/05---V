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
	name="survival" requestURI="${requestURI}" id="row">
	
	<!-- Attributes -->

	<spring:message code="survival.title" var="titleHeader" />
	<display:column property="title" title="${titleHeader}" sortable="true" >
		<jstl:out value="${row.title}"/>
	</display:column>

	<spring:message code="survival.description" var="descriptionHeader" />
	<display:column property="description" title="${descriptionHeader}" sortable="false" >
		<jstl:out value="${row.description}"/>
	</display:column>

	<spring:message code="survival.moment" var="momentHeader" />
	<display:column property="moment" title="${momentHeader}" sortable="true" >
		<jstl:out value="${row.moment}"/>
	</display:column>

	<spring:message code="survival.location" var="locationHeader" />
	<display:column property="location" title="${locationHeader}"	sortable="true" >
		<jstl:out value="${row.location}"/>
	</display:column>
	
	<spring:message code="survival.manager" var="managerHeader" />
	<display:column property="manager" title="${managerHeader}"	sortable="true" >
		<jstl:out value="${row.manager}"/>
	</display:column>
	
	<spring:message code="survival.trip" var="tripHeader" />
	<display:column property="trip" title="${tripHeader}"	sortable="true" >
		<jstl:out value="${row.trip}"/>
	</display:column>
	
	<spring:message code="survival.explorer" var="explorerHeader" />
	<display:column property="explorer" title="${explorerHeader}"	sortable="true" >
		<jstl:out value="${row.explorer}"/>
	</display:column>
	
</display:table>

<!-- Action links -->

<security:authorize access="hasRole('EXPLORER')">
	<div>
		<a href="survival/explorer/register.do"> <spring:message
				code="survival.register" />
		</a>
	</div>
</security:authorize>