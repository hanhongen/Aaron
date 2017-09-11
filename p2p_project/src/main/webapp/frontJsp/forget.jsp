<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<link rel="stylesheet"
	href="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/css/release-commons_38d5ebd.css?v=201512161721">
<link rel="stylesheet"
	href="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/iconfont/iconfont_0386360.css?v=201512161721" />
<link rel="stylesheet"
	href="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/css/center_8d38577.css?v=201512161721" />
<link rel="stylesheet"
	href="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/css/plugins/dialog_5b7bef5.css?v=201512161721" />
<script type="text/javascript"
	src="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/js/jquery/1.7.2/jquery_7a71356.js?v=201512161721"></script>
<script
	src="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/js/plugins/ppmoney.plugins_04539e8.js?v=201512161721"></script>
<script
	src="https://special.ppmoney.com/sensorsdata/sensorsdata_product.js"></script>
<script type="text/javascript"
	src="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/js/common/common_7b4e346.js?v=201512161721"></script>
<!--[if lte IE 7]>
    <script type="text/javascript" src='https://ppmoneycnt.b0.upaiyun.com/static/v4.01/js/json2_e8d9be0.js?v=201512161721'></script>
    <![endif]-->



<link
	href="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/css/register/register_819a98f.css?v=201512161721"
	rel="stylesheet" type="text/css" />

</head>
<body>




	<div class="contain-wrap">
		<div class="reg-cont-wrap">
			<div class="contain forget-pass">
				<div class="reg-wrap">
					<div class="reg-tips">
						<div class="reg-tips-hd">忘记密码</div>
						<p><div class="pp-tips-hd">
							<span class="icon-tips iconfont">&#xe652;</span>温馨提示：请输入手机号，找回密码！</div>
						</p>
                </div>
                <form action="/CustomerAuth/ForgetPassword"
						method="post" class="reg-form">
                    <input name="__RequestVerificationToken"
							type="hidden"
							value="UMGzDuZUqDQM1lG982M9zeCiXohdhCidvK_1Nzr7bnJoKC6IcHHi859aCZky4XOU-i2PIw2" />
                    <div class="phone">
                        <div class="labelText">
                            <span class="reg-icon iconfont">&#xe68b;</span>
                            <input id="Phone" type="text"
									class="txt-area" name="Phone" placeholder="手机号码" />
                            <input type="hidden" name="Password"
									value="password" />
                        </div>
                    </div>
                        <div class="geeter-box" style="height:0px">
                            <div id="easynetCaptcha"></div>
                            <input id="easynetCaptchaValue"
								type="hidden" />
                        </div>
                    <div class="phone-code">

                        <div class="labelText">
								<input id="RandCode" class="txt-area" type="text"
									name="RandCode" placeholder="手机验证码" />
							</div>
                        <div class="btn-send-c" data-countdown="">
                            <input id="getSafeCode" type="button"
									class="btn-send safe-code" value="获取短信验证码" />
                            <span id="speakRandcode"
									class="btn-send speak-randcode"></span>
                        </div>
                        <input id="refresh" type="button"
								class="btn-send btn-refresh" value="" />
                    </div>

                    <div class="speak-randcode-tips hide"
							id="speak-tips">
                        <span class="icon-tips iconfont">&#xe652;</span><span
								class="em">正在进行呼叫，请保持电话畅通。</span>
                    </div>
                    
                    <div class="btn-result-c">
                        <input id="submitSafeCode" class="btn-result"
								type="submit" value="确认" />
                    </div>
                    <span class="reg-warning"></span>
                    <input id="firstErrorMsg" type="hidden" value="" />
                    <div class="login-ms">
                        <a href="/p2p_project/frontJsp/index.jsp" class="in">返回首页</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript"
		src="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/js/sea_c494287.js?v=201512161721"
		id="seajsnode"></script>
<script type="text/javascript"
		src="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/js/sea-config_c8ac77c.js?v=201512161721"></script>

    <script src="https://special.ppmoney.com/lib/126captcha.load.min.js"></script>
    <script type="text/javascript"
		src="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/js/register/neteasyCaptcha_eb34505.js?v=201512161721"></script>

<script type="text/javascript">
    var IsGeet = false;
    var isNeteasy = true;

    seajs.use(['register/forgetPassword_756f061'], function (register) {
        if (isNeteasy) {
            register.initNeteasy('popup','easynetCaptcha','easynetCaptchaValue');
        }
        register.forgetPassword();//忘记密码
     });
  
    if (IsGeet) {
        var handlerPopup = function (captchaObj) {
            //
            captchaObj.onSuccess(function () {
                var validate = captchaObj.getValidate();
                $("#geetest_challenge").val(validate.geetest_challenge);
                $("#geetest_validate").val(validate.geetest_validate);
                $("#geetest_seccode").val(validate.geetest_seccode);
                $('#geeterCode').val("pass");
                $('#geeterGrade').hide();
            })

            captchaObj.onRefresh(function () { 
                $('#geeterCode').val("");
                $('#geeterGrade').hide();
            })

            //弹出式需要绑定触发验证码弹出按钮
            captchaObj.bindOn("#getSafeCode");
            //render
            captchaObj.appendTo("#div_id_embed");

        };

        $.ajax({
            url: "/AuthCode/GetValidateCode",
            type: "get",
            dataType: 'JSONP',
            success: function (result) {
                var data = JSON.parse(result);
                initGeetest({
                    gt: data.gt,
                    challenge: data.challenge,
                    product: "popup",
                    offline: !data.success
                }, handlerPopup);
            }
        })
    }
</script>


    <div class="copyright">
        <ul class="copyright-l cf">
            <li><a
				href="https://www.ppmoney.com/ppcms/help/#url=/introAboutUs/introCompany"
				title="关于我们" rel="nofollow">关于我们</a>|</li>
            <li><a
				href="https://www.ppmoney.com/ppcms/help/#url=/aboutus/jobs"
				title="人才招聘" rel="nofollow">人才招聘</a>|</li>
            <li><a href="/info/law" title="法律申明" rel="nofollow">法律申明</a>|</li>
            <li><a href="/info/feedback" title="意见反馈"
				rel="nofollow">意见反馈</a>|</li>
            <li><a
				href="https://www.ppmoney.com/ppcms/help/#url=/introAboutUs/introBaseinfo"
				title="联系我们" rel="nofollow">联系我们</a>|</li>
            <li><a href="https://www.ppmoney.com/ppcms/help/#url=/"
				title="新手必读" rel="nofollow">新手必读</a></li>
        </ul>
        <div class="agency-box m-tb10">
            <div>
                版权所有 (C) PPmoney.com <a
					href="http://www.miibeian.gov.cn/" target="_blank" rel="nofollow">粤ICP备 12030634号</a>
                <a href="/special/icp/icp.html" class="hide"
					target="_blank" rel="nofollow">增值电信业务经营许可证：粤B2-20150286</a>
                <a href="/special/edi/edi.html" target="_blank"
					rel="nofollow">增值电信业务经营许可证：粤B1.B2-20150286</a>
            </div>
            <div>
                <a href="/special/safe/safe.html" target="_blank"
					rel="nofollow">信息系统安全等级保护备案证明(三级)</a>
                <a target="_blank"
					href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44010602001800"><img
					src="/v4.01/img/PPmoney-beian.png" />粤公网安备 44010602001800号</a>
            </div>
        </div>
    </div>

    
    <!--end-->
    <script
		src="https://ppmoneycnt.b0.upaiyun.com/static/v4.01/js/analytics_aa49b25.js?v=201512161721"></script>

    

    

</body>
</
						html>