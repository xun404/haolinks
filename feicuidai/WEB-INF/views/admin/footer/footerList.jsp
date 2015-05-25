<%@ page language="java" pageEncoding="UTF-8" %>

<div class="pageContent">
    <form method="post" action="/footer/updateFooter" class="pageForm required-validate"
          onsubmit="return validateCallback(this, navTabAjaxDone);">
        <div class="pageFormContent" layoutH="56">
            <p>
                <label>地址</label>
                <input type="hidden" value="${footer.id}" name="id"/>
                <input name="address" type="text" size="30" class="required" value="${footer.address}"/>
            </p>

            <p>
                <label>公司名称</label>
                <input name="name" type="text" size="30" class="required" value="${footer.name}"/>
            </p>

            <p>
                <label>电话号码</label>
                <input type="text" name="phone" size="30" class="phone" value="${footer.phone }">
            </p>

            <p>
                <label>电话号码400</label>
                <input type="text" name="phone400" size="30" value="${footer.phone400}">
            </p>

            <p>
                <label>网址</label>
                <input name="url" type="text" size="30" class="required url" value="${footer.url}"/>
            </p>

            <p>
                <label>邮箱</label>
                <input name="email" type="text" size="30" class="required email" value="${footer.email}"/>
            </p>

            <p>
                <label>公司QQ群</label>
                <input name="qqGroupNumber" type="text" size="30" class="required" value="${footer.qqGroupNumber}"/>
            </p>

            <p>
                <label>工作QQ</label>
                <input name="qq" type="text" size="30" class="required" value="${footer.qq}"/>
            </p>

            <p>
                <label>工作时间</label>
                <input name="workTime" type="text" size="30" class="required" value="${footer.workTime}"/>
            </p>

            <p>
                <label>版权所有</label>
                <input name="copyRight" type="text" size="30" class="required" value="${footer.copyRight}"/>
            </p>

            <p>
                <label>备案号</label>
                <input name="records" type="text" size="30" class="required" value="${footer.records}"/>
            </p>

            <p>
                <label>新浪微博链接</label>
                <input name="xlurl" type="text" size="30" class="required" value="${footer.xlurl}"/>
            </p>

            <p>
                <label>腾讯微博链接</label>
                <input name="txurl" type="text" size="30" class="required" value="${footer.txurl}"/>
            </p>

            <p>
                <label>其他</label>
                <input name="context" type="text" value="${footer.context}"/>
            </p>

            <p>
                <label>平台名称</label>
                <input name="sitesName" type="text" value="${footer.sitesName}"/>
            </p>
            <p>
                <label>首页标题</label>
                <input name="indexTitle" type="text" value="${footer.indexTitle}"/>
            </p>
            <p>
                <label>首页关键词</label>
                <input name="indexKeywords" type="text" value="${footer.indexKeywords}"/>
            </p>
            <p>
                <label>首页描述</label>
                <input name="description" type="text" value="${footer.description}"/>
            </p>
        </div>
        <div class="formBar">
            <ul>
                <li>
                    <div class="buttonActive">
                        <div class="buttonContent">
                            <button type="submit">保存</button>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="button">
                        <div class="buttonContent">
                            <button type="reset" class="close">取消</button>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </form>
</div>
