<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${model.navName}</title>
<meta name="keywords" content="生物技术系,生物医学工程"/>
<meta name="description" content="电子科技大学生命科学与技术学院"/>
<link href="${ctx}/template/css/all.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/template/css/index.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/template/css/style.css" type="text/css" rel="stylesheet" />
<script type=text/javascript src="${ctx}/template/js/jquery-1.3.2.min.js"></script>
<script type=text/javascript src="${ctx}/template/js/lmsf.js"></script>
<script type=text/javascript src="${ctx}/script/setHome.js"></script>
<script type="text/javascript" src="${ctx}/script/page.js"></script>
<!--[if lte IE 6]>
<script src="${ctx}/template/js/iepng.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a ,span');
    </script>
<![endif]--> 
</head>
<body>
<%@include file="/upload/top.html"%>
<!--wrap-->
<div id="wrap">
   <jsp:include page="/upload/${navsec}.html"/>
    <div id="center">
      <div class="centerlmbg"><span>${model.navName}</span></div>
      <div class="yyhdbox">
        <div class="zxhdlm">最新活动:</div>
		<c:forEach var="article" items="${articles}">
          <dl>
              <dt>
              <b><img src="${ctx}/template/images/yyhdpic2.jpg"/></b>
              <span><img src="${ctx}/template/images/yyhdpiczz.png"/></span>
              </dt>
              <dd>
                  <span><strong>活动时间 ：<fmt:formatDate value="${article.createDate}" pattern="MM/dd HH:mm"/></strong>${article.title}</span>
                  <p>${fn:substring(fht:delHTMLTag(article.content),0,200)}...<a href="${ctx}/article/detail?nav=${navsec}&model=${model.id}&article=${article.id}">[查看详细]</a></p>
              </dd>
          </dl>
        </c:forEach>
      </div>
	  <!--
      <div class="yyhdlslmbg mar2"><a href="#">历史活动</a></div>
      <div class="newscolumn">
          <ul>
			
          </ul>
      </div>
	  -->
      <div class="page mar2">
			<script>
				var pg = new showPages('pg');
				pg.pageCount = ${maxPage};
				pg.argName = 'currentPage';
				pg.printHtml();  
			</script>
	  </div>
    </div>
    <%@include file="/upload/right.html"%>
</div>
<!--wrap_End-->
<%@include file="/upload/bottom.html"%>
</body>
</html>
