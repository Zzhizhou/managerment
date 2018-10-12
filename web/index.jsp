<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/11
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>游客注册</title>
    <script src="js/jquery-1.7.2.js"></script>
    <script>
      //验证是否存在用户
        $(function () {
            $("#t1").blur(function () {
                var name=$("input:eq(0)").val();
                var url="${pageContext.request.contextPath}/visitor/queryByName";
                var args={"name":name};
                $.post(url,args,function (data) {
                    if(data==1){
                        $("#sp1").text("用户已存在")
                        $(":submit").attr("disabled",true)
                    }else{
                        if(name==""){
                            $("#sp1").text("账户不能为空")
                            $(":submit").attr("disabled",true)
                        }else {
                            $("#sp1").text("可以注册")
                            $(":submit").attr("disabled",false)
                        }
                    }
                })
            })
        })
      $(function () {
          //对密码做验证
          $("form").submit(function () {
              var password1=$("#psw1").val();
              var password2=$("#psw2").val();
              if(password1==""){
                  $("#sp2").text("不能为空")
                  return false;
              }else {
                  $("#sp2").text()
              }
              if(password1!=password2){
                  $("#sp3").text("密码不一致")
                  return false;
              }else {
                  $("#sp3").text()
              }
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
        height: 230px;
        width: 370px;
      }
    </style>
  </head>
  <body>
  <div style="text-align: center">
    <h2>注册</h2>
    <table style="text-align: center">
      <form action="${pageContext.request.contextPath}/visitor/regist">
      <tr>
        <td>用户名：</td>
        <td><input id="t1" type="text" name="name"></td>
        <td><span id="sp1"></span></td>
      </tr>
      <tr>
        <td>密码：</td>
        <td><input id="psw1" type="text" name="password"></td>
        <td> <span id="sp2"></span></td>
      </tr>
      <tr>
        <td>确认密码：</td>
        <td> <input id="psw2"type="text"></td>
        <td> <span id="sp3"></span></td>
      </tr>
      <tr>
        <td colspan="3"> <input type="submit" value="注册"></td>
      </tr>
      <tr>
        <td colspan="3"><input type="reset" value="取消"></td>
      </tr>
      </form>
    </table>
    <p>已经有账号？<a href="${pageContext.request.contextPath}/login.jsp">登录</a></p>
  </div>
  </body>
</html>
