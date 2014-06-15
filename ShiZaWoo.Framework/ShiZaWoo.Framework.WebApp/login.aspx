<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ShiZaWoo.Framework.WebApp.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录</title>
    <link rel="shortcut icon" href="favicon1.ico" />
    <style>
        html, body {
            margin: 0;
            font-family: "Microsoft Yahei UI","Microsoft Yahei",Verdana,Simsun,"Segoe UI","Segoe UI Web Regular","Segoe UI Symbol","Helvetica Neue","BBAlpha Sans","S60 Sans",Arial,sans-serif;
            color: #000;
            background-color: #fff;
            background-image: none;
            background-repeat: repeat;
            background-position: top left;
            direction: ltr;
            font-size: 88%;
            -webkit-font-smoothing: antialiased;
        }
        a
        {
           text-decoration:none;
           color:#338ED1;
        }
        .wrap, .main {
            text-align: center;
        }

        .wrap {
            width: 100%;
            height: 500px;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            display: inline-block;
        }
        /*左侧*/
        .brandmode {
            text-align: center;
            width: 52%;
            float: left;
        }

        .imageinfo {
            float: right;
            width: 475px;
            height: 490px;
            background-color: #0073C6;
        }
        /*右侧*/

        .sign {
            float: right;
            text-align: left;
            width: 48%;
            height: 100px;
            height: 490px;
        }

        .logo, .theLoginArea {
            margin-left: 100px;
        }

        .logo {
            height: 50px;
            line-height: 50px;
        }

            .logo .subtitle {
                padding-left: 20px;
                height: 50px;
                font-size: 35px;
                font-family: 方正舒体;
                filter: shadow(color=#6495ED,strength=15);
                position: absolute;
                display: inline-block;
                color: blue;
            }

        .theLoginArea {
            line-height: 142%;
        }

        .theLoginArea {
            width: 330px;
            float: left;
            display: block;
        }

            .theLoginArea p {
                margin: 1px 0px 0px 0px;
                width: 330px;
            }

                .theLoginArea p label {
                    font-size: 14px;
                    text-align: right;
                    color: #666;
                    padding: 0;
                }

                .theLoginArea p input {
                    display: block;
                    transition: all 0.30s ease-in-out;
                    -webkit-transition: all 0.30s ease-in-out;
                    -moz-transition: all 0.30s ease-in-out;
                    border: 1px solid #bababa;
                    outline: none;
                    width: 310px;
                    margin: 8px 0px;
                    height: 1.571em;
                    border-radius: 0px;
                    padding: 4px 0px 8px 8px;
                }

                .theLoginArea p span {
                    display: none;
                    width: 290px;
                    line-height: 21px;
                    margin: 0px 0px 0px 0px;
                    padding: 0px 0px 0px 8px;
                    font-size: 12px;
                    border-radius: 3px;
                    color: #c83100;
                    border: 1px solid #fceec1;
                }

                .theLoginArea p input:hover {
                    box-shadow: 0 0 0 5px rgba(247, 247, 250,.8);
                    border-radius: 0px;
                    border: 1px solid #DADADA;
                }

                .theLoginArea p input:focus {
                    box-shadow: 0 0 0 5px rgba(242, 248, 252,.8);
                    border-radius: 0px;
                    border: 1px solid #B7D4EA;
                }

                .theLoginArea p input.error, .theLoginBox .theLoginArea input.G-Anim-leftRight {
                    box-shadow: 0 0 0 5px rgba(252, 245, 245, 0.8);
                    border-radius: 0px;
                    border: 1px solid #ECA9A4;
                }


        .txtinput {
            margin-bottom: 8px;
            width: 302px;
            height: 1.571em;
            padding: 4px 8px;
            font-family: "Microsoft Yahei UI","Microsoft Yahei",Verdana,Simsun,"Segoe UI","Segoe UI Web Regular","Segoe UI Symbol","Helvetica Neue","BBAlpha Sans","S60 Sans",Arial,sans-serif;
            font-size: 100%;
            color: #212121;
            border: 1px solid #bababa;
            background-color: rgba(255,255,255,.8);
        }

        .cb {
            margin-bottom: 30px;
            font-size:13px;
        }

        .Login {
            height: 30px;
            width: 84px;
            min-width: 6em;
            font-family: "Microsoft Yahei UI","Microsoft Yahei",Verdana,Simsun,"Segoe UI Semibold","Segoe UI Web Semibold","Segoe UI Web Regular","Segoe UI","Segoe UI Symbol","HelveticaNeue-Medium","Helvetica Neue",Arial,sans-serif;
            font-weight: bold;
            font-size: 100%;
            background-color: #0072C6;
            color: #FFF;
            padding: 3px 12px 5px;
            border: 0;
        }
        
        .nosign
        {
            font-size:14px;
            margin-top:140px;
        }
        .nosign a
        {            
            font-weight:bold;
            color:blue;
        }
        /*底部*/
        .footer {
            float:right;
            font-size: 12px;
            background-color: #eee;
            position: fixed;
            height: 88px;
            right:0;
            bottom: 0;
            width: 100%;
            z-index: 250000;
        }
        .footer .copylogo,.footer .copyright
        {
            clear:both;
            text-align:right;
            width:82%;
            margin:10px;
        }
        .footer .copyright a
        {
            padding:4px;
            margin:4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 40px;"></div>
        <div class="wrap">
            <div class="brandmode">
                <div class="imageinfo">
                    <img src="Images/Brand/OL_NokiaX_SISU_2B-Red_Fixed_zh-cn.jpg" title="" />
                </div>
            </div>
            <div class="sign">
                <div style="height: 40px;"></div>
                <div class="logo">
                    <img alt="My World" src="favicon1.ico" title="" style="height: 50px;" />
                    <div class="subtitle">ShiZaWoo</div>
                </div>
                <div style="height: 30px;"></div>
                <div class="theLoginArea">
                    <div style="font-size: 86%; margin-bottom: 4px">ShiZaWoo 帐户</div>
                    <p style="position: relative;">
                        <asp:TextBox ID="LoginForm_email" runat="server" placeholder="帐户" name="LoginForm[email]" MaxLength="50" CssClass="txtinput"></asp:TextBox>
                        <span>请输入您的账号</span>
                    </p>
                    <p style="position: relative;">
                        <asp:TextBox ID="LoginForm_password" runat="server" placeholder="密码" name="LoginForm[password]" TextMode="Password" MaxLength="50" CssClass="txtinput"></asp:TextBox>
                        <span>请输入您的密码</span>
                    </p>
                    <div class="cb">
                        <asp:CheckBox ID="CheckBox1" runat="server" CssClass="cbStatus" Text="使我保持登录状态" />
                    </div>
                    <div class="btn">
                        <asp:Button ID="Button1" runat="server" CssClass="btn Login" Text="登录" OnClick="Button1_Click" />
                    </div>
                    <div class="nosign">没有 ShiZaWoo 帐户? <a>立即注册</a></div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="copylogo"><img alt="My World" src="favicon1.ico" title="" style="height: 30px;width:30px;" /></div>
            <div class="copyright">
            <a href="http://login.live.com/gls.srf?urlID=WLHelpCentral&amp;mkt=ZH-CN&amp;vv=1600" class="footerlink" id="ftrFdbk">联系我们</a>
            <a href="http://login.live.com/gls.srf?urlID=WinLiveTermsOfUse&amp;mkt=ZH-CN&amp;vv=1600" class="footerlink" id="ftrTerms">使用条款</a>
            <a href="http://login.live.com/gls.srf?urlID=MSNPrivacyStatement&amp;mkt=ZH-CN&amp;vv=1600" class="footerlink" id="ftrPrivacy">隐私和 Cookie</a>
            ©2014 ShiZaWoo
                </div>
        </div>
        <div>
        </div>
    </form>
</body>
</html>
