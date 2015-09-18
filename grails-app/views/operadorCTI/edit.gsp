<%@ page import="goaccess.OperadorCTI" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'operadorCTI.label', default: 'OperadorCTI')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-operadorCTI" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:remoteLink class="list" action="indexAntigo" update="page-body"><g:message code="default.list.label" args="[entityName]" /></g:remoteLink></li>				
				<li><g:remoteLink class="create" action="create" update="page-body"><g:message code="default.new.label" args="[entityName]" /></g:remoteLink></li>				
			</ul>
		</div>
		<div id="edit-operadorCTI" class="content scaffold-edit" role="main">
			<br><h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${operadorCTIInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${operadorCTIInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:operadorCTIInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${operadorCTIInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitToRemote class="save" update="page-body" url="[controller:'operadorCTI', action:'update', id:operadorCTIInstance.id]" value="${message(code: 'default.button.update.label', default: 'Update')}" ></g:submitToRemote>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
