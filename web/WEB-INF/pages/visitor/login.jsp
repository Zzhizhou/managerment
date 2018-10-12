<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/12
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>游客登录</title>
    <script src="/js/jquery-1.7.2.js"></script>
    <script>
        $(function () {
            $("#t1").blur(function () {
                var name=$("input:eq(0)").val();
                var url="${pageContext.request.contextPath}/visitor/queryByName";
                var args={"name":name};
                $.post(url,args,function (data) {
                    if(data==1){
                        $("#sp1").text("√")
                        $(":submit").attr("disabled",false)
                    }else{
                        $("#sp1").text("用户不存在")
                        $(":submit").attr("disabled",true)
                    }
                })
            })
        })
    </script>
    <style>
        span{
            color: red;
        }
        div{
            background-color: gray;
            margin: 10% 20% ;
            height: 200px;
            width: 370px;
        }
    </style>
</head>
<body>
<div style="text-align: center">
    <h2>登录</h2>
    <table style="text-align: center">
        <form action="${pageContext.request.contextPath}/visitor/login">
            <tr>
                <td>用户名：</td>
                <td><input id="t1" type="text" name="name"></td>
                <td><span id="sp1"></span></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input id="psw1" type="text" name="password"></td>
                <td> <c:if test="${requestScope.error!=null}">
                    <span id="sp2">密码错误</span></c:if>
                </td>
            </tr>
            <tr>
                <td colspan="3"> <input type="submit" value="登录"></td>
            </tr>
            <tr>
                <td colspan="3"><input type="reset" value="取消"></td>
            </tr>
        </form>
    </table>
    <p>快来加入我们吧<a href="${pageContext.request.contextPath}/index.jsp">注册</a></p>
</div>
</body>
</html>
