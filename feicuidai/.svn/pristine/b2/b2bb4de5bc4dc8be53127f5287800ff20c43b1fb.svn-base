<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="clear"></div>
<!--信息咨询-->

<!--------公告、咨询 START---------->
<div class="list_content_text">
    <div class="notice_left">
        <c:forEach items="${appDeputys}" var="d">
            <c:if test="${d.name eq '官方公告' }">
                <div class="notice">
                    <h3 class="notice_h3">官方公告<a href="${d.url}"><img src="/resource/images/more.png" width="83"
                                                                      height="25"
                                                                      alt=""/></a></h3>
                    <ul>
                        <c:set var="n" value="0"/>
                        <c:forEach items="${appArticles}" var="itemTmp" varStatus="number">
                            <c:if test="${itemTmp.deputySection.id  == d.id }">
                                <c:if test="${n < 5}">
                                    <li>
                                        <a href="${itemTmp.url}">${itemTmp.title}</a><span>[${fn:substring(itemTmp.createTime,0, 10)}]</span>
                                    </li>
                                    <c:set var="n" value="${n+1}"/>
                                </c:if>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
            </c:if>
        </c:forEach>
    </div>

    <div class="notice_left notice_right">
        <c:forEach items="${appDeputys}" var="d">
            <c:if test="${d.name eq '媒体报道' }">
                <div class="notice">
                    <h3 class="media_h3">媒体报道<a href="${d.url}"><img src="/resource/images/more.png" width="83"
                                                                     height="25"
                                                                     alt=""/></a></h3>
                    <ul>
                        <c:set var="n" value="0"/>
                        <c:forEach items="${appArticles}" var="itemTmp">
                            <c:if test="${itemTmp.deputySection.id  == d.id }">
                                <c:if test="${n < 5}">
                                    <li>
                                        <a href="${itemTmp.url}">${itemTmp.title}</a><span>[${fn:substring(itemTmp.createTime,0, 10)}]</span>
                                    </li>
                                    <c:set var="n" value="${n+1}"/>
                                </c:if>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
            </c:if>
        </c:forEach>
    </div>
</div>

<div class="c"></div>

</div>

<!--信息咨询-->