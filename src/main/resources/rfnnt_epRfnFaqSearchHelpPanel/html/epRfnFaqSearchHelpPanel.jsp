<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>

<div class="search-help-panel">
  <c:if test="${not empty currentNode.properties['firstText']}">
    <p class="text-primary">
      ${currentNode.properties['firstText'].string}
    </p>
  </c:if>
  <c:if test="${not empty currentNode.properties['firstListElement'] or not empty currentNode.properties['secondListElement'] or not empty currentNode.properties['thirdListElement'] or not empty currentNode.properties['fourthListElement'] or not empty currentNode.properties['fifthListElement']}">
    <ul>
      <c:if test="${not empty currentNode.properties['firstListElement']}">
        <li>
          ${currentNode.properties['firstListElement'].string}
        </li>
      </c:if>
      <c:if test="${not empty currentNode.properties['secondListElement']}">
        <li>
          ${currentNode.properties['secondListElement'].string}
        </li>
      </c:if>
      <c:if test="${not empty currentNode.properties['thirdListElement']}">
        <li>
          ${currentNode.properties['thirdListElement'].string}
        </li>
      </c:if>
      <c:if test="${not empty currentNode.properties['fourthListElement']}">
        <li>
          ${currentNode.properties['fourthListElement'].string}
        </li>
      </c:if>
      <c:if test="${not empty currentNode.properties['fifthListElement']}">
        <li>
          ${currentNode.properties['fifthListElement'].string}
        </li>
      </c:if>
    </ul>
  </c:if>
  <c:if test="${not empty currentNode.properties['lastText']}">
    <p class="text-primary">
      <br>
      ${currentNode.properties['lastText'].string}
    </p>
  </c:if>
</div>