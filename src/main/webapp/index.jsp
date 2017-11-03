<%--
<html>
<body>
<h2>Hello World!</h2>
</body>
</html>
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js" type="text/javascript"></script>
    <!--找不到本地js？？？？-->
    <!--script src="js/jquery.min.js" type="text/javascript"></script-->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
生成的验证码：<img id="changeCaptcha" src="http://localhost:8081/captcha/getCaptchaCode.htm"> <a href="javascript:changeCaptcha()">看不清，换一张</a>
<br>
<br>
请输入验证码：<input id="captchaCode" type="text"> <input type="button" value="提交验证" onclick="checkCaptcha()">
</body>
<script type="text/javascript">
    //获取验证码图片
    function changeCaptcha(){
        $("#changeCaptcha").attr("src","http://localhost:8081/captcha/getCaptchaCode.htm");
    }
    //验证输入的验证码
    function checkCaptcha(){
        var captchaCode = $("#captchaCode").val();
        $.ajax({
            type:'post',
            async : false,
            url:'http://localhost:8081/captcha/checkCaptchaCode.htm',
            data:{"captchaCode" : captchaCode},
            success:function(res){
                alert(res);
            }
        });
    }
</script>
</html>
