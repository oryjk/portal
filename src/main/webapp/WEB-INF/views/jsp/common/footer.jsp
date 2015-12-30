<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="footer">
    <div class="footer-content">
        <div class="footer-left">
            <ul class="footer-content-left">
            
            <c:forEach items="${menuList }" var="menu">
 				<c:if test="${menu.num==1 }">
           		 	<li class="footer-index"><a href="${pageContext.request.contextPath }/${menu.url }">${menu.name }</a></li>
    			</c:if>
    			<c:if test="${menu.num==5 }">
           		 	<li class="footer-about"><a href="${pageContext.request.contextPath }/${menu.url }">${menu.name }</a></li>
    			</c:if>	
    			<c:if test="${(menu.num!=1)&&(menu.num!=5) }">
           		 	<li><a href="${pageContext.request.contextPath }/${menu.url }">${menu.name }</a></li>
    			</c:if>	
    					
 			</c:forEach>
        
            </ul>
            <div class="footer-content-left1">
                联系电话：028-85033350
                <div class="footer-add">公司地址：成都市武侯区武阳大道5号下一站都市A座302</div>
            </div>
        </div>
        <div class="footer-right-all">
            <div class="footer-right">
                版权所有：众鑫惠联网络科技有限公司（成都）
                <span class="qr-code">扫码下载官方APP </span>

                <div class="footer-right-c">蜀ICP备15022028号 2015 dianjinzi,Inc.Allrights reserved.</div>
            </div>
            <img class="footer-img" src="${pageContext.request.contextPath }/resources/zhongxinkeji/img/QR%20Code.jpg">
        </div>

    </div>
</div>