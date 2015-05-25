<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="clear"></div>
<!--footer-->
<!--------公告、咨询 START---------->

<div class="friendship_all">
    <div class="friendship">
       <h4>友情链接 :</h4>
           <ul>
            <c:forEach items="${application_link}" var="link">
                <c:if test="${link.type eq 0 }">
                  <li>   <a href="${link.url}" target="_bank">${link.name}</a></li>
                </c:if>
            </c:forEach>
            </ul>
        <h4><a href="/to/single-10-22.htm" >更多  >></a></h4>
        <div class="c" style="height:8px;"></div>
    </div>
</div>
<div class="foot_all">
    <div class="foot">
        <div class="foot_left">
            <div class="ico_box">
                <div class="tex"> ${footer.context } | ${footer.name} | ${footer.email} | ${footer.records}</div>
                <a
                        href="http://webscan.360.cn/index/checkwebsite/url/www.feicuidai.com"
                        target="_bank"><img width="99" height="35" border="0"
                                            src="http://img.webscan.360.cn/status/pai/hash/f8dae0c6e2d0210a15f87795462b6cfd"/>
                </a> <a href="http://www.beianbeian.com/" target="_blank"><img
                    src="/resource/images/ico_4.png" width="99" height="35" alt=""/>
            </a><a target="_blank"
                   href="https://cert.ebs.gov.cn/aaa43295-5c69-40b2-8e31-371a4d49b4f3">
                <img width="99" height="35"
                     style="border-width:0px;border:hidden; border:none;"
                     alt="深圳市市场监督管理局企业主体身份公示" title="深圳市市场监督管理局企业主体身份公示"
                     src="/resource/images/ico_5.png"> </a>
                <a
                        href="http://www.anquan.org/authenticate/cert/?site=feicuidai.com&at=business" target="_blank"><img
                        src="/resource/images/hy_124x47.png" width="99" height="35" alt=""/>
                </a>
            </div>
        </div>
    </div>
</div>
<!--------公告、咨询 END---------->
<!--End footer-->