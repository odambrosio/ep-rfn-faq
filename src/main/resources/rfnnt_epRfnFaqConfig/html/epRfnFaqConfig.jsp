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

<div class="sidebar-tools faq">
  <div class="content-sidebar-tools">
    <ul class="tag">
      <li class="title">
        <h3>
          ${currentNode.properties['popularTermsTitle'].string}
        </h3>
      </li>
      <c:foreach var="terms" items="${currentNode.properties['popularTermsList'].string}">
        <li>
          <a href="#">
            ${terms}
          </a>
        </li>
      </c:foreach>
    </ul>
    <ul>
      <li>
        <h3>
          ${currentNode.properties['contactFormTitle'].string}
        </h3>
        <p>
          ${currentNode.properties['contactFormDescTitle'].string}
        </p>
        <a href="mailto:${currentNode.properties['contactFormMailAddress'].string}?subject=${currentNode.properties['contactFormMailSubject'].string}&body=${currentNode.properties['contactFormMailBody'].string}" class="contact-faq">
        	Contact us
        </a>
      </li>
    </ul>
  </div>
</div>