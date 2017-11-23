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
	
	<spring:message code="note.moment" var="momentHeader" />
	<display:column property="moment" title="${momentHeader}" sortable="true" >
		<jstl:out value="${row.moment}"/>
	</display:column>

	<spring:message code="note.remark" var="remarkHeader" />
	<display:column property="remark" title="${remarkHeader}" sortable="true" >
		<jstl:out value="${row.remark}"/>
	</display:column>

	<spring:message code="note.reply" var="replyHeader" />
	<display:column property="reply" title="${replyHeader}" sortable="false" >
		<jstl:out value="${row.reply}"/>
	</display:column>

	<spring:message code="note.momentReply" var="momentReplyHeader" />
	<display:column property="momentReply" title="${momentReplyHeader}"	sortable="false" >
		<jstl:out value="${row.momentReply}"/>
	</display:column>
	
	<spring:message code="note.trip" var="tripHeader" />
	<display:column property="trip" title="${tripHeader}"	sortable="true" >
		<jstl:out value="${row.trip}"/>
	</display:column>

</display:table>

	
<!-- Action links -->

<security:authorize access="hasRole('MANAGER')">
	<div>
		<a href="note/manager/edit.do"> <spring:message
				code="note.create" />
		</a>
	</div>
</security:authorize>

<security:authorize access="hasRole('AUDITOR')">
	<div>
		<a href="note/auditor/edit.do"> <spring:message
				code="note.create" />
		</a>
	</div>
</security:authorize>