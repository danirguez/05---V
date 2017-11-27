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


<security:authorize access="hasRole('AUDITOR') or hasRole('MANAGER')">
<display:table pagesize="5" class="displaytag" keepStatus="true"
	name="note" requestURI="${requestURI}" id="row">
	
	<security:authorize access="hasRole('AUDITOR')">
	<spring:message code="note.edit" var="editHeader" />
	<display:column>
		<a href= "note/auditor/edit.do?auditId=${row.id}">
		<spring:message code="note.edit" var="editHeader" /></a>
	</display:column>
	</security:authorize>
	
	<security:authorize access="hasRole('MANAGER')">
	<spring:message code="note.addReply" var="addHeader" />
	<display:column>
		<a href= "note/manager/create.do">
		<spring:message code="note.addReply" var="addHeader" /></a>
	</display:column>
	</security:authorize>
	
	<spring:message code="note.moment" var="momentHeader" />
	<display:column property="moment" title="${momentHeader}" sortable="true" />

	<spring:message code="note.remark" var="remarkHeader" />
	<display:column property="remark" title="${remarkHeader}" sortable="true" />

	<spring:message code="note.reply" var="replyHeader" />
	<display:column property="reply" title="${replyHeader}" sortable="false" />

	<spring:message code="note.momentReply" var="momentReplyHeader" />
	<display:column property="momentReply" title="${momentReplyHeader}"	sortable="false" />
	
	<spring:message code="note.trip" var="tripHeader" />
	<display:column property="trip" title="${tripHeader}"	sortable="true" />

</display:table>
</security:authorize>
