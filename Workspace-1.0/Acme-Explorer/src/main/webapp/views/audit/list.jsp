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
	name="audits" requestURI="${requestURI}" id="row">
	
	<!-- Attributes -->
	
	<security:authorize access="hasRole('AUDITOR')">
	
	<spring:message code="audit.delete" var="deleteHeader" />
	<display:column>
		<a href= "audit/auditor/delete.do?auditId=${row.id}">
		<spring:message code="audit.delete" var="deleteHeader" /></a>
	</display:column>
	
	<spring:message code="audit.edit" var="editHeader" />
	<display:column>
		<a href= "audit/auditor/edit.do?auditId=${row.id}">
		<spring:message code="audit.edit" var="editHeader" /></a>
	</display:column>
	
	</security:authorize>
	
	<spring:message code="audit.moment" var="momentHeader" />
	<display:column property="moment" title="${momentHeader}" sortable="true" >
		<jstl:out value="${row.moment}"/>
	</display:column>
	
	<spring:message code="audit.title" var="titleHeader" />
	<display:column property="title" title="${titleHeader}" sortable="true" >
		<jstl:out value="${row.title}"/>
	</display:column>
	
	<spring:message code="audit.description" var="descriptionHeader" />
	<display:column property="description" title="${descriptionHeader}" sortable="false" >
		<jstl:out value="${row.description}"/>
	</display:column>
	
	<spring:message code="audit.attachment" var="attachmentHeader" />
	<display:column property="attachment" title="${attachmentHeader}" sortable="false" >
		<jstl:out value="${row.attachment}"/>
	</display:column>
	
	<spring:message code="audit.draftMode" var="draftModeHeader" />
	<display:column property="draftMode" title="${draftModeHeader}" sortable="true" >
		<jstl:out value="${row.draftMode}"/>
	</display:column>
	
	<spring:message code="audit.trip" var="tripHeader" />
	<display:column property="trip" title="${tripHeader}" sortable="true" >
		<jstl:out value="${row.trip}"/>
	</display:column>
	
	<spring:message code="audit.auditor" var="auditorHeader" />
	<display:column property="auditor" title="${auditorHeader}" sortable="true" >
		<jstl:out value="${row.auditor}"/>
	</display:column>
	
</display:table>
	
	 
	
	
	
	
	
	
	
	
	
	