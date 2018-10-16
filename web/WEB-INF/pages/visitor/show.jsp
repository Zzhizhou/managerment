<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/12
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>游客界面</title>
    <link rel="stylesheet" href="/tableExport/css/bootstrap.min.css">
    <link rel="stylesheet" href="/tableExport/css/tableexport.css">
    <script src="/tableExport/js/jquery-1.11.3.min.js"></script>
    <script src="/tableExport/js/js-xlsx/xlsx.core.min.js"></script>
    <script src="/tableExport/js/Blob.js/Blob.js"></script>
    <script src="/tableExport/js/FileSaver.js/FileSaver.js"></script>
    <script src="/tableExport/js/TableExport.js/jquery.tableexport.js"></script>
    <script src="/tableExport/js/Bootstrap/bootstrap.min.js"></script>

    <script type="text/javascript">
        $(function () {
            $("ul li a").each(function () {
                var $a=$(this)
                if($a[0].href==String(window.location)){
                    $("ul li").removeClass("active");
                    $a.parent().addClass("active")
                }
            })
        })
    </script>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">首页</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="nav1.jsp">招聘信息<span class="sr-only">(current)</span></a></li>
                <li><a href="nav2.jsp">修改密码</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">管理简历 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="aa.jsp">查看简历</a></li>
                        <li><a href="aa.jsp">填写简历</a></li>
                        <li><a href="#">修改简历</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.jsp">退出</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

</body>
</html>