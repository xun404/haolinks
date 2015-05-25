<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="foot-place"></div>
<div class="footer" data-pisition="fixed" data-role="footer">
 
  <c:if test="${select == 1 }">
   <div class="foot_item foot_1"><a href="/phone/index"><img src="/resource/phone/images/index_s.png" width="25" height="36" alt=""/></a></div>
  </c:if>
  <c:if test="${select != 1 }">
   <div class="foot_item foot_1"><a href="/phone/index"><img src="/resource/phone/images/index_pic.png" width="25" height="36" alt=""/></a></div>
  </c:if>
  
  
  <c:if test="${select == 2 }">
    <div class="foot_item foot_2"><a href="/phoneInvest/getPhoneLoanSignList"><img src="/resource/phone/images/investment_financing_s.png" width="40" height="36" alt=""/></a></div>
  </c:if>
  <c:if test="${select != 2 }">
   <div class="foot_item foot_2"><a href="/phoneInvest/getPhoneLoanSignList"><img src="/resource/phone/images/investment_financing.png" width="40" height="36" alt=""/></a></div>
  </c:if>
  
  
  <c:if test="${select == 3 }">
   <div class="foot_item foot_3"><a href="/phoneVisitor/individualCenter"><img src="/resource/phone/images/individual_center_s.png" width="40" height="36" alt=""/></a></div>
  </c:if>
  <c:if test="${select != 3 }">
   <div class="foot_item foot_3"><a href="/phoneVisitor/individualCenter"><img src="/resource/phone/images/individual_center.png" width="40" height="36" alt=""/></a></div>
  </c:if>
  
  
  <c:if test="${select == 4 }">
   <div class="foot_item foot_4"><a href="/phoneInvest/getPhoneAboutUS"><img src="/resource/phone/images/about_me_s.png" width="40" height="36" alt=""/></a></div>
  </c:if>
  <c:if test="${select != 4 }">
 <div class="foot_item foot_4"><a href="/phoneInvest/getPhoneAboutUS"><img src="/resource/phone/images/about_me.png" width="40" height="36" alt=""/></a></div>
  </c:if>
 
  <div class="c"></div>
  
  
</div>
